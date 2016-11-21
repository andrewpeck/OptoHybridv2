----------------------------------------------------------------------------------
-- Company:        TAMU
-- Engineer:       Evaldas Juska (evaldas.juska@cern.ch / evka85@gmail.com)
-- 
-- Create Date:    12:59:03 11/18/2016
-- Design Name:    OptoHybrid v2
-- Module Name:    lock_detect - Behavioral 
-- Project Name:   OptoHybrid v2
-- Target Devices: xc6vlx130t-1ff1156
-- Tool versions:  ISE  P.20131013
-- Description:    This module just instantiates a PLL which is used to check an input clock quality, if locked_o is high, the clock is deemed to be good
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

library work;
use work.types_pkg.all;


entity lock_detect is
port(

    clk_i           : in  std_logic;
    locked_o        : out std_logic;
    clk_stopped     : out std_logic
    
);
end lock_detect;

architecture Behavioral of lock_detect is
    signal clkfbout : std_logic;
begin

  -- this MMCM is only used for lock detect
  -- using internal feedback path to save a bufg
  i_mmcm_adv : MMCM_ADV
  generic map
   (BANDWIDTH            => "OPTIMIZED",
    CLKOUT4_CASCADE      => FALSE,
    CLOCK_HOLD           => FALSE,
    COMPENSATION         => "ZHOLD",
    STARTUP_WAIT         => FALSE,
    DIVCLK_DIVIDE        => 1,
    CLKFBOUT_MULT_F      => 25.000,
    CLKFBOUT_PHASE       => 0.000,
    CLKFBOUT_USE_FINE_PS => FALSE,
    CLKOUT0_DIVIDE_F     => 25.000,
    CLKOUT0_PHASE        => 0.000,
    CLKOUT0_DUTY_CYCLE   => 0.500,
    CLKOUT0_USE_FINE_PS  => FALSE,
    CLKIN1_PERIOD        => 25.000,
    REF_JITTER1          => 0.010)
  port map
    -- Output clocks
   (CLKFBOUT            => clkfbout,
    CLKFBOUTB           => open,
    CLKOUT0             => open,
    CLKOUT0B            => open,
    CLKOUT1             => open,
    CLKOUT1B            => open,
    CLKOUT2             => open,
    CLKOUT2B            => open,
    CLKOUT3             => open,
    CLKOUT3B            => open,
    CLKOUT4             => open,
    CLKOUT5             => open,
    CLKOUT6             => open,
    -- Input clock control
    CLKFBIN             => clkfbout,
    CLKIN1              => clk_i,
    CLKIN2              => '0',
    -- Tied to always select the primary input clock
    CLKINSEL            => '1',
    -- Ports for dynamic reconfiguration
    DADDR               => (others => '0'),
    DCLK                => '0',
    DEN                 => '0',
    DI                  => (others => '0'),
    DO                  => open,
    DRDY                => open,
    DWE                 => '0',
    -- Ports for dynamic phase shift
    PSCLK               => '0',
    PSEN                => '0',
    PSINCDEC            => '0',
    PSDONE              => open,
    -- Other control and status signals
    LOCKED              => locked_o,
    CLKINSTOPPED        => clk_stopped,
    CLKFBSTOPPED        => open,
    PWRDWN              => '0',
    RST                 => '0');

end Behavioral;

