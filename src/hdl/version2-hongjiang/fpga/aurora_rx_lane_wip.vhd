-- ####################################
-- # Project: Yarr
-- # Author: Timon Heim
-- # E-Mail: timon.heim at cern.ch
-- # Comments: RX lane
-- # Aurora style single rx lane
-- ####################################
-- # RX STATUS:
-- # [0] -> Sync

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim ;
use unisim.vcomponents.all ;

library work;
use work.board_pkg.all;

entity aurora_rx_lane is 
    port (
        -- Sys connect
        rst_n_i      : in std_logic;
        clk_rx_i     : in std_logic;
        clk_serdes_i : in std_logic;

        -- Input
        rx_data_i_p   : in std_logic;
        rx_data_i_n   : in std_logic;
        rx_polarity_i : in std_logic;

        -- Output
        rx_data_o   : out std_logic_vector(63 downto 0);
        rx_header_o : out std_logic_vector(1 downto 0);
        rx_valid_o  : out std_logic;
        rx_stat_o   : out std_logic_vector(7 downto 0)
    );
end aurora_rx_lane;

architecture behavioral of aurora_rx_lane is
    component serdes_1_to_468_idelay_ddr
        generic (
            S 			            : integer := 8 ;		-- Set the serdes factor to 4, 6 or 8
            D 			            : integer := 1 ;		-- Set the number of inputs
            CLKIN_PERIOD		    : real := 3.2 ;			-- clock period (ns) of input clock on clkin_p
            REF_FREQ 		        : real := 300.0 ;   	-- Parameter to set reference frequency used by idelay controller
            HIGH_PERFORMANCE_MODE 	: string := "TRUE" ;	-- Parameter to set HIGH_PERFORMANCE_MODE of input delays to reduce jitter
            DATA_FORMAT 		    : string := "PER_CLOCK"	-- Used to determine method for mapping input parallel word to output serial words
        );
        port (
            datain_p		        :  in std_logic_vector(D-1 downto 0) ;		-- Input from LVDS receiver pin
            datain_n		        :  in std_logic_vector(D-1 downto 0) ;		-- Input from LVDS receiver pin
            enable_phase_detector	:  in std_logic ;				            -- Enables the phase detector logic when high
            enable_monitor		    :  in std_logic ;				            -- Enables the monitor logic when high, note time-shared with phase detector function
            reset			        :  in std_logic ;				            -- Reset line
            bitslip			        :  in std_logic ;			 	            -- bitslip 
            idelay_rdy		        :  in std_logic ;				            -- input delays are ready
            rxclk			        :  in std_logic ;				            -- Global/BUFIO rx clock network
            system_clk		        :  in std_logic ;				            -- Global/Regional clock output
            rx_lckd			        : out std_logic ;				            -- 
            rx_data			        : out std_logic_vector((S*D)-1 downto 0) ;  -- Output data
            bit_rate_value		    :  in std_logic_vector(15 downto 0) ;	    -- Bit rate in Mbps, eg X"0585
            dcd_correct		        :  in std_logic ;	 			            -- '0' = square, '1' = assume 10% DCD
            bit_time_value		    : out std_logic_vector(4 downto 0) ;	    -- Calculated bit time value for slave devices
            debug			        : out std_logic_vector(10*D+18 downto 0) ;  -- Debug bus
            eye_info		        : out std_logic_vector(32*D-1 downto 0) ;  	-- Eye info
            m_delay_1hot	    	: out std_logic_vector(32*D-1 downto 0) ;  	-- Master delay control value as a one-hot vector
            clock_sweep		        : out std_logic_vector(31 downto 0)  	    -- clock Eye info
        );
    end component serdes_1_to_468_idelay_ddr;

    component cdr_serdes
        port (
            clk160  : in std_logic;
            clk640  : in std_logic;
            reset   : in std_logic;
            din     : in std_logic;
            slip    : in std_logic;
            data_value  : out std_logic_vector(1 downto 0);
            data_valid  : out std_logic_vector(1 downto 0);
            data_lock   : out std_logic
        );
    end component cdr_serdes;

    component gearbox32to66
        port (
            -- Sys connect
            rst_i : in std_logic;
            clk_i : in std_logic;

            -- Input
            data32_i        : in std_logic_vector(31 downto 0);
            data32_valid_i  : in std_logic;
            slip_i          : in std_logic;

            -- Output
            data66_o        	: out std_logic_vector(65 downto 0);
            data66_valid_o  	: out std_logic;
			is_synced_o			: out std_logic
        );
    end component gearbox32to66;
    
    component descrambler
        port (
            data_in     : in std_logic_vector(0 to 65);
            data_out    : out std_logic_vector(63 downto 0);

            enable      : in std_logic;
            sync_info   : out std_logic_vector(1 downto 0);

            clk         : in std_logic;
            rst         : in std_logic
        );
    end component descrambler;

    signal c_SLIP_SERDES_MAX : unsigned(7 downto 0);
    signal c_SERDES8_CYCLE : unsigned(3 downto 0);

    constant c_DATA_HEADER  : std_logic_vector(1 downto 0) := "01";
    constant c_CMD_HEADER   : std_logic_vector(1 downto 0) := "10";
    constant c_SYNC_MAX     : unsigned(7 downto 0) := to_unsigned(16, 8);

    signal rst : std_logic;

    -- Serdes
    signal serdes_phase_adj_en  : std_logic;
    signal serdes_idelay_rdy    : std_logic;
    signal serdes_data8         : std_logic_vector(7 downto 0);
    signal serdes_data8_s       : std_logic_vector(7 downto 0);
    signal serdes_data8_d       : std_logic_vector(7 downto 0);

    signal datain_p             : std_logic;
    signal datain_n             : std_logic;
    signal serdes_data2         : std_logic_vector(1 downto 0);
    signal serdes_data2_s       : std_logic_vector(1 downto 0);
    signal serdes_data2_d       : std_logic_vector(1 downto 0);
    signal serdes_data2_valid   : std_logic_vector(1 downto 0);
    signal serdes_data2_valid_s : std_logic_vector(1 downto 0);
    signal serdes_data2_sel     : std_logic;
    signal serdes_lock          : std_logic;

    -- 8 to 32
    signal serdes_data32_shift  : std_logic_vector(32 downto 0);
    signal serdes_data32        : std_logic_vector(31 downto 0);
    signal serdes_data32_valid  : std_logic;
    signal serdes8_cnt          : unsigned(3 downto 0);
    signal serdes_cnt           : unsigned(5 downto 0);

    -- Gearbox
    signal gearbox_data66           : std_logic_vector(65 downto 0);
    signal gearbox_data66_valid     : std_logic;
    signal gearbox_data66_valid_d   : std_logic;
    signal gearbox_slip             : std_logic;
	signal is_synced				: std_logic;

    -- Scrambler
    signal scrambled_data66         : std_logic_vector(65 downto 0);
    signal scrambled_data_valid     : std_logic;
    signal scrambled_data_valid_d   : std_logic;
    signal descrambled_data         : std_logic_vector(63 downto 0);
    signal descrambled_header       : std_logic_vector(1 downto 0);
    signal descrambled_data_valid   : std_logic;
    
    -- Block Sync
    signal sync_cnt     : unsigned(7 downto 0);
    
    -- SERDES debug
    signal bit_time_value   : std_logic_vector(4 downto 0);
    signal eye_info         : std_logic_vector(31 downto 0);
    signal m_delay_1hot     : std_logic_vector(31 downto 0);
    
    -- DEBUG
        -- DEBUG
    COMPONENT ila_rx_dma_wb
    PORT (
        clk     : IN STD_LOGIC;
        probe0  : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe1  : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe2  : IN STD_LOGIC_VECTOR(63 DOWNTO 0); 
        probe3  : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe4  : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe5  : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe6  : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe7  : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe8  : IN STD_LOGIC_VECTOR(31 DOWNTO 0); 
        probe9  : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe10 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        probe11 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
    END COMPONENT  ;
    
begin
    
    rst <= not rst_n_i;

    -- XAPP1017 style SERDES with auto-phase detection up to 1.6Gbps
    xapp1017_serdes_1280: if c_RX_SPEED = "1280" generate
        
        c_SLIP_SERDES_MAX <= to_unsigned(8, 8);
        c_SERDES8_CYCLE <= to_unsigned(0, 4);
    
        serdes_idelay_rdy <= rst_n_i;
        serdes_cmp: serdes_1_to_468_idelay_ddr generic map (
            S                       => 8        ,
            D                       => 1        ,
            CLKIN_PERIOD            => 1.5625   ,
            REF_FREQ                => 310.0    ,
            HIGH_PERFORMANCE_MODE   => "TRUE"   ,
            DATA_FORMAT             => "PER_CLOCK"
        )
        port map (
            datain_p(0)         => rx_data_i_p      ,
            datain_n(0)         => rx_data_i_n      ,
            enable_phase_detector   => '1'          ,
            enable_monitor      => '1'              ,
            reset               => rst              ,
            --bitslip             => '0'              ,
            bitslip             => '0'              ,
            idelay_rdy          => serdes_idelay_rdy,
            rxclk               => clk_serdes_i     ,
            system_clk          => clk_rx_i         ,
            rx_lckd             => serdes_lock      ,
            --rx_data             => serdes_data8     ,
            rx_data(0)          => serdes_data8(7)  ,
            rx_data(1)          => serdes_data8(6)  ,
            rx_data(2)          => serdes_data8(5)  ,
            rx_data(3)          => serdes_data8(4)  ,
            rx_data(4)          => serdes_data8(3)  ,
            rx_data(5)          => serdes_data8(2)  ,
            rx_data(6)          => serdes_data8(1)  ,
            rx_data(7)          => serdes_data8(0)  ,
            bit_rate_value      => x"1280"          ,         -- TODO make generic
            dcd_correct         => '0'              ,
            bit_time_value      => bit_time_value   ,
            debug               => open             ,
            eye_info            => eye_info         ,
            m_delay_1hot        => m_delay_1hot     ,
            clock_sweep         => open
        );

        pol_loop: for I in 0 to 7 generate
            serdes_data8_s(I) <= serdes_data8(I) xor rx_polarity_i;
        end generate pol_loop;

        serdes_8to32_proc : process(clk_rx_i, rst_n_i)
        begin
            if (rst_n_i = '0') then
                serdes_data32       <= (others => '0');
                serdes_data32_shift <= (others => '0');
                serdes_data32_valid <= '0';
                serdes_cnt          <= (others => '0');
                serdes8_cnt         <= (others => '0');
                serdes_data8_d      <= (others => '0');
            elsif rising_edge(clk_rx_i) then
                serdes8_cnt         <= serdes8_cnt + 1;
                serdes_data32_valid <= '0';

                if (serdes8_cnt = c_SERDES8_CYCLE) then
                    serdes_cnt                       <= serdes_cnt + 1;
                    serdes_data32_shift(31 downto 8) <= serdes_data32_shift(23 downto 0);
                    serdes_data32_shift(7 downto 0)  <= serdes_data8_s;

                    if (serdes_cnt = to_unsigned(3, 6)) then
                        serdes_data32       <= serdes_data32_shift(31 downto 0);
                        serdes_data32_valid <= '1';
                        serdes_cnt          <= (others => '0');
                    end if;

                    serdes8_cnt <= (others => '0');
                end if;
            end if;
        end process serdes_8to32_proc;
    end generate xapp1017_serdes_1280;

    xapp1017_serdes_640: if c_RX_SPEED = "0640" generate
        
        c_SLIP_SERDES_MAX   <= to_unsigned(8, 8);
        c_SERDES8_CYCLE     <= to_unsigned(1, 4);
    
        serdes_idelay_rdy   <= rst_n_i;
        serdes_cmp: serdes_1_to_468_idelay_ddr generic map (
            S                   => 8        ,
            D                   => 1        ,
            CLKIN_PERIOD        => 3.125    ,
            REF_FREQ            => 310.0    ,
            HIGH_PERFORMANCE_MODE => "TRUE" ,
            DATA_FORMAT         => "PER_CLOCK"
        )
        port map (
            datain_p(0)                 => rx_data_i_p      ,
            datain_n(0)                 => rx_data_i_n      ,
            enable_phase_detector       => '1'              ,
            enable_monitor              => '1'              ,
            reset                       => rst              ,
            --bitslip                     => '0'              ,
            bitslip                     => '0'              ,
            idelay_rdy                  => serdes_idelay_rdy,
            rxclk                       => clk_serdes_i     ,
            system_clk                  => clk_rx_i         ,
            rx_lckd                     => serdes_lock      ,
            --rx_data                     => serdes_data8     ,
            rx_data(0)                  => serdes_data8(7)  ,
            rx_data(1)                  => serdes_data8(6)  ,
            rx_data(2)                  => serdes_data8(5)  ,
            rx_data(3)                  => serdes_data8(4)  ,
            rx_data(4)                  => serdes_data8(3)  ,
            rx_data(5)                  => serdes_data8(2)  ,
            rx_data(6)                  => serdes_data8(1)  ,
            rx_data(7)                  => serdes_data8(0)  ,
            bit_rate_value              => x"0640"          , -- TODO make generic
            dcd_correct                 => '0'              ,
            bit_time_value              => bit_time_value   ,
            debug                       => open             ,
            eye_info                    => eye_info         ,
            m_delay_1hot                => m_delay_1hot     ,
            clock_sweep                 => open
        );

        pol_loop: for I in 0 to 7 generate
            serdes_data8_s(I) <= serdes_data8(I) xor rx_polarity_i;
        end generate pol_loop;

        serdes_8to32_proc : process(clk_rx_i, rst_n_i)
        begin
            if (rst_n_i = '0') then
                serdes_data32       <= (others => '0');
                serdes_data32_shift <= (others => '0');
                serdes_data32_valid <= '0';
                serdes_cnt          <= (others => '0');
                serdes8_cnt         <= (others => '0');
                serdes_data8_d      <= (others => '0');

            elsif rising_edge(clk_rx_i) then
                serdes8_cnt         <= serdes8_cnt + 1;
                serdes_data32_valid <= '0';

                if (serdes8_cnt = c_SERDES8_CYCLE) then
                    serdes_cnt                       <= serdes_cnt + 1;
                    serdes_data32_shift(31 downto 8) <= serdes_data32_shift(23 downto 0);
                    serdes_data32_shift(7 downto 0)  <= serdes_data8_s;

                    if (serdes_cnt = to_unsigned(3, 6)) then
                        serdes_data32       <= serdes_data32_shift(31 downto 0);
                        serdes_data32_valid <= '1';
                        serdes_cnt          <= (others => '0');
                    end if;

                    serdes8_cnt <= (others => '0');
                end if;
            end if;
        end process serdes_8to32_proc;
    end generate xapp1017_serdes_640;

    -- Quad-Oversampling style SERDES with auto-phase detection up to 160Mpbs
    custom_serdes: if c_RX_SPEED = "0160" generate
        
        c_SLIP_SERDES_MAX   <= to_unsigned(1, 8);
        c_SERDES8_CYCLE     <= to_unsigned(0, 4);
        
        --data_in : IBUFDS_DIFF_OUT generic map(
        --    IBUF_LOW_PWR		=> FALSE)
        --port map (                      
        --    I         		=> rx_data_i_p,
        --    IB         		=> rx_data_i_n,
        --    O    			=> datain_p,
        --    OB               => datain_n
        --);

        datain_p <= rx_data_i_p;
        datain_n <= rx_data_i_n;
        
        cmp_cdr_serdes: cdr_serdes port map (
            clk160      => clk_rx_i,
            clk640      => clk_serdes_i,
            reset       => rst,
            din         => datain_p,
            slip        => '0',
            data_value  => serdes_data2_s,
            data_valid  => serdes_data2_valid_s,
            data_lock   => serdes_lock
        );
        
        pol_loop: for I in 0 to 1 generate
            serdes_data2(I) <= serdes_data2_s(I) xor rx_polarity_i;
        end generate pol_loop;
        serdes_data2_valid <= serdes_data2_valid_s;

        serdes_2to32_proc : process(clk_rx_i, rst_n_i)
        begin
            if (rst_n_i = '0') then
                serdes_data32       <= (others => '0');
                serdes_data32_shift <= (others => '0');
                serdes_data32_valid <= '0';
                serdes_cnt          <= (others => '0');

            elsif rising_edge(clk_rx_i) then
                serdes_data32_valid <= '0';
                
                if (serdes_data2_valid = "01") then
                    serdes_data32_shift <= serdes_data32_shift(31 downto 0) & serdes_data2(0);
                    serdes_cnt          <= serdes_cnt + 1;

                elsif (serdes_data2_valid = "11") then
                    serdes_data32_shift <= serdes_data32_shift(30 downto 0) & serdes_data2(0) & serdes_data2(1);
                    serdes_cnt          <= serdes_cnt + 2;
                end if;

                if (serdes_cnt = to_unsigned(31, 6)) then
                    serdes_data32       <= serdes_data32_shift(31 downto 0);
                    serdes_data32_valid <= '1';
                    serdes_cnt          <= (others => '0');
                    
                    if (serdes_data2_valid = "11") then
                        serdes_cnt <= to_unsigned(1, 6);

                    else
                        serdes_cnt <= to_unsigned(0, 6);
                    end if;

                elsif (serdes_cnt = to_unsigned(32, 6)) then
                    serdes_data32       <= serdes_data32_shift(32 downto 1);
                    serdes_data32_valid <= '1';

                    if (serdes_data2_valid = "11") then
                        serdes_cnt <= to_unsigned(2, 6);
                        
                    else
                        serdes_cnt <= to_unsigned(1, 6);
                    end if;
                end if;
            end if;
        end process serdes_2to32_proc;

    end generate custom_serdes;

    gearbox32to66_cmp : gearbox32to66 port map (
        rst_i           	=> rst,
        clk_i           	=> clk_rx_i,
        data32_i        	=> serdes_data32,
        data32_valid_i  	=> serdes_data32_valid,
        slip_i          	=> '0',
        data66_o        	=> gearbox_data66,
        data66_valid_o  	=> gearbox_data66_valid,
		is_synced_o			=> is_synced
    );

    -- tracks number of consecutive valid headers and determines when to pass on data to descramble
    block_sync_proc: process(clk_rx_i, rst_n_i)
    begin
        -- on a reset, clear all counters and set scrambler input to 0s
        if (rst_n_i = '0') then
            sync_cnt                <= (others => '0');
            scrambled_data66        <= (others => '0');
            scrambled_data_valid    <= '0';

        elsif rising_edge(clk_rx_i) then
            -- set default value
            scrambled_data_valid    <= '0';

            -- remaining behavior only happens for each 66b block
            if (gearbox_data66_valid = '1') then
				
                -- increment for every VALID 66b block up to saturation (c_SYNC_MAX)
                --if ((gearbox_data66(65 downto 64) = c_DATA_HEADER) or
                --    (gearbox_data66(65 downto 64) = c_CMD_HEADER)) then
				--	
					-- if (sync_cnt < c_SYNC_MAX) then
                    --     sync_cnt <= sync_cnt + 1;
                    -- end if;
					
				--	sync_cnt_new <= gearbox_header_cnt;	-- newUpdate(Colin)
					
                -- if ever an invalid is seen reset the counter
                --else
                --    -- sync_cnt <= (others => '0');      
				--	sync_cnt_new <= (others => '0');

                --end if;
                
                -- once synced, the data is passed on to the descrambler
                --if (sync_cnt_new >= c_SYNC_MAX) then -- newUpdate(Colin)
                --    scrambled_data66        <= gearbox_data66(65 downto 0);
                --    scrambled_data_valid    <= '1';
                --end if;
				--*/
				
				-- When is_synced == 1, data is synced, and the data is passed on to the descrambler -- Revised(Colin)
				if (is_synced = '1') then
					scrambled_data66        <= gearbox_data66(65 downto 0);
					scrambled_data_valid    <= '1';
				end if;
            end if;
        end if;
    end process block_sync_proc;

    descrambler_cmp : descrambler port map (
        data_in     => scrambled_data66,
        data_out    => descrambled_data,
        enable      => scrambled_data_valid,
        sync_info   => descrambled_header,
        clk         => clk_rx_i,
        rst         => rst
    );

    descrambler_proc: process(clk_rx_i, rst_n_i)
    begin
        if (rst_n_i = '0') then
            descrambled_data_valid  <= '0';
            scrambled_data_valid_d  <= '0';
            gearbox_data66_valid_d  <= '0';
            rx_data_o               <= (others => '0');
            rx_header_o             <= "00";
            rx_valid_o              <= '0';
        elsif rising_edge(clk_rx_i) then

            gearbox_data66_valid_d <= gearbox_data66_valid;
            
            if (gearbox_data66_valid_d = '1') then
                scrambled_data_valid_d <= scrambled_data_valid;
            end if;
            
            descrambled_data_valid <= scrambled_data_valid and scrambled_data_valid_d; -- Only valid after two valid descrambles
            
            -- Output
            if (descrambled_data_valid = '1') then
                rx_data_o   <= descrambled_data;
                rx_header_o <= descrambled_header;
            end if;

            rx_valid_o <= descrambled_data_valid;

        end if;
    end process descrambler_proc;
    
    stat_out_proc: process(clk_rx_i, rst_n_i)
    begin
        if (rst_n_i = '0') then
            rx_stat_o <= (others => '0');

        elsif rising_edge(clk_rx_i) then

            rx_stat_o       <= (others => '0');
            rx_stat_o(0)    <= serdes_lock; -- SERDES Sync Out

            if (sync_cnt = c_SYNC_MAX) then
                rx_stat_o(1) <= '1'; -- Gearbox Sync Out
            end if;
        end if;
    end process stat_out_proc;
end behavioral;
