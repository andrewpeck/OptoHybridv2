----------------------------------------------------------------------------------
-- Company:        IIHE - ULB
-- Engineer:       Thomas Lenzi (thomas.lenzi@cern.ch)
-- 
-- Create Date:    12:59:03 09/30/2015 
-- Design Name:    OptoHybrid v2
-- Module Name:    clocking - Behavioral 
-- Project Name:   OptoHybrid v2
-- Target Devices: xc6vlx130t-1ff1156
-- Tool versions:  ISE  P.20131013
-- Description: 
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.types_pkg.all;


entity clocking is
port(

    qpll_clk_i      : in std_logic;
    gbt_clk_i       : in std_logic;
    clk_source_i    : in std_logic;
    
    ref_clk_o       : out std_logic;
    clk_1x_o        : out std_logic;
    clk_2x_o        : out std_logic;
    clk_4x_o        : out std_logic;
    locked_o        : out std_logic;
    
    qpll_blinker_o  : out std_logic;
    gbt_blinker_o   : out std_logic
    
);
end clocking;

architecture Behavioral of clocking is

    constant RESET_HOLD_TIME    : integer := 10;
    constant BLINKER_HOLD_TIME  : integer := 5_000_000;
    
    signal reset            : std_logic;
    signal reset_countdown  : integer range 0 to 15 := RESET_HOLD_TIME;

    signal prev_clk_source  : std_logic;
    
    signal qpll_blinker_countdown : integer range 0 to 40_000_000 := 0;
    signal gbt_blinker_countdown  : integer range 0 to 40_000_000 := 0;
    
    signal qpll_blinker     : std_logic := '0';
    signal gbt_blinker      : std_logic := '0';

begin

    qpll_blinker_o <= qpll_blinker;
    gbt_blinker_o <= gbt_blinker;

    -- listen for changes in clk_source_i and reset the MMCM if it changes (note QPLL clock should always be available even with HDMI unplugged)
    process(qpll_clk_i)
    begin
        if (rising_edge(qpll_clk_i)) then
            prev_clk_source <= clk_source_i;
            
            if (prev_clk_source /= clk_source_i) then
                reset_countdown <= RESET_HOLD_TIME;
            elsif (reset_countdown /= 0) then
                reset_countdown <= reset_countdown - 1;
            else
                reset_countdown <= reset_countdown;
            end if;
        end if;
    end process;
    
    --reset <= '0';
    reset <= '0' when reset_countdown = 0 else '1';
    
    -- qpll_clk

    clk_gen_inst : entity work.clk_gen
    port map(

        clk_qpll_i      => qpll_clk_i, -- clkin1  (sel=1)
        clk_gbt_i       => gbt_clk_i,  -- clkin2  (sel=0)

        clk_in_sel_i    => '0',
      --clk_in_sel_i    => clk_source_i,

        reset_i         => reset,

        ref_clk_o       => ref_clk_o,
        clk_1x_o        => clk_1x_o,
        clk_2x_o        => clk_2x_o,
        clk_4x_o        => clk_4x_o,

        locked_o        => locked_o
    );    

    -- clock blinkers for LEDs
    process(qpll_clk_i)
    begin
        if (rising_edge(qpll_clk_i)) then
            if (qpll_blinker_countdown = 0) then
                qpll_blinker <= not qpll_blinker;
                qpll_blinker_countdown <= BLINKER_HOLD_TIME;
            else
                qpll_blinker_countdown <= qpll_blinker_countdown - 1;
            end if;
        end if;
    end process;
    
    process(gbt_clk_i)
    begin
        if (rising_edge(gbt_clk_i)) then
            if (gbt_blinker_countdown = 0) then
                gbt_blinker <= not gbt_blinker;
                gbt_blinker_countdown <= BLINKER_HOLD_TIME;
            else
                gbt_blinker_countdown <= gbt_blinker_countdown - 1;
            end if;
        end if;
    end process;
    
end Behavioral;

