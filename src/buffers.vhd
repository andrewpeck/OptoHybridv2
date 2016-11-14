----------------------------------------------------------------------------------
-- Company:        IIHE - ULB
-- Engineer:       Thomas Lenzi (thomas.lenzi@cern.ch)
-- 
-- Create Date:    09:40:27 08/05/2015 
-- Design Name:    OptoHybrid v2
-- Module Name:    buffers - Behavioral 
-- Project Name:   OptoHybrid v2
-- Target Devices: xc6vlx130t-1ff1156
-- Tool versions:  ISE  P.20131013
-- Description: 
-- 
-- Implements the design's buffers
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.vcomponents.all;

library work;
use work.types_pkg.all;

entity buffers is
port(
    
    --===========--
    --== VFAT2 ==--
    --===========--
    
    --== VFAT2s raw control ==--

    vfat2_mclk_p_o          : out std_logic_vector(2 downto 0);
    vfat2_mclk_n_o          : out std_logic_vector(2 downto 0);

    vfat2_resb_o            : out std_logic_vector(2 downto 0);
    vfat2_resh_o            : out std_logic_vector(2 downto 0);

    vfat2_t1_p_o            : out std_logic_vector(2 downto 0);
    vfat2_t1_n_o            : out std_logic_vector(2 downto 0);

    vfat2_scl_o             : out std_logic_vector(5 downto 0);
    vfat2_sda_io            : inout std_logic_vector(5 downto 0);

    vfat2_data_valid_p_i    : in std_logic_vector(5 downto 0);
    vfat2_data_valid_n_i    : in std_logic_vector(5 downto 0);

    --== VFAT2s raw data ==--

    vfat2_0_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_0_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_0_data_out_p_i    : in std_logic;
    vfat2_0_data_out_n_i    : in std_logic;

    vfat2_1_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_1_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_1_data_out_p_i    : in std_logic;
    vfat2_1_data_out_n_i    : in std_logic;

    vfat2_2_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_2_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_2_data_out_p_i    : in std_logic;
    vfat2_2_data_out_n_i    : in std_logic;

    vfat2_3_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_3_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_3_data_out_p_i    : in std_logic;
    vfat2_3_data_out_n_i    : in std_logic;

    vfat2_4_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_4_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_4_data_out_p_i    : in std_logic;
    vfat2_4_data_out_n_i    : in std_logic;

    vfat2_5_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_5_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_5_data_out_p_i    : in std_logic;
    vfat2_5_data_out_n_i    : in std_logic;

    vfat2_6_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_6_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_6_data_out_p_i    : in std_logic;
    vfat2_6_data_out_n_i    : in std_logic;

    vfat2_7_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_7_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_7_data_out_p_i    : in std_logic;
    vfat2_7_data_out_n_i    : in std_logic;

    vfat2_8_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_8_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_8_data_out_p_i    : in std_logic;
    vfat2_8_data_out_n_i    : in std_logic;

    vfat2_9_sbits_p_i       : in std_logic_vector(7 downto 0);
    vfat2_9_sbits_n_i       : in std_logic_vector(7 downto 0);
    vfat2_9_data_out_p_i    : in std_logic;
    vfat2_9_data_out_n_i    : in std_logic;

    vfat2_10_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_10_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_10_data_out_p_i   : in std_logic;
    vfat2_10_data_out_n_i   : in std_logic;

    vfat2_11_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_11_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_11_data_out_p_i   : in std_logic;
    vfat2_11_data_out_n_i   : in std_logic;

    vfat2_12_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_12_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_12_data_out_p_i   : in std_logic;
    vfat2_12_data_out_n_i   : in std_logic;

    vfat2_13_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_13_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_13_data_out_p_i   : in std_logic;
    vfat2_13_data_out_n_i   : in std_logic;

    vfat2_14_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_14_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_14_data_out_p_i   : in std_logic;
    vfat2_14_data_out_n_i   : in std_logic;

    vfat2_15_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_15_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_15_data_out_p_i   : in std_logic;
    vfat2_15_data_out_n_i   : in std_logic;

    vfat2_16_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_16_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_16_data_out_p_i   : in std_logic;
    vfat2_16_data_out_n_i   : in std_logic;

    vfat2_17_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_17_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_17_data_out_p_i   : in std_logic;
    vfat2_17_data_out_n_i   : in std_logic;

    vfat2_18_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_18_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_18_data_out_p_i   : in std_logic;
    vfat2_18_data_out_n_i   : in std_logic;

    vfat2_19_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_19_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_19_data_out_p_i   : in std_logic;
    vfat2_19_data_out_n_i   : in std_logic;

    vfat2_20_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_20_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_20_data_out_p_i   : in std_logic;
    vfat2_20_data_out_n_i   : in std_logic;

    vfat2_21_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_21_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_21_data_out_p_i   : in std_logic;
    vfat2_21_data_out_n_i   : in std_logic;

    vfat2_22_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_22_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_22_data_out_p_i   : in std_logic;
    vfat2_22_data_out_n_i   : in std_logic;

    vfat2_23_sbits_p_i      : in std_logic_vector(7 downto 0);
    vfat2_23_sbits_n_i      : in std_logic_vector(7 downto 0);
    vfat2_23_data_out_p_i   : in std_logic;
    vfat2_23_data_out_n_i   : in std_logic;

    --== VFAT2s buffered control ==--

    vfat2_mclk_i            : in std_logic;

    vfat2_reset_i           : in std_logic;

    vfat2_t1_i              : in std_logic;

    vfat2_scl_i             : in std_logic_vector(5 downto 0);
    vfat2_sda_mosi_i        : in std_logic_vector(5 downto 0);
    vfat2_sda_miso_o        : out std_logic_vector(5 downto 0);
    vfat2_sda_tri_i         : in std_logic_vector(5 downto 0);

    vfat2_data_valid_o      : out std_logic_vector(5 downto 0);

    --== VFAT2s buffered data ==--

    vfat2_data_out_o        : out std_logic_vector(23 downto 0);
    vfat2_sbits_o           : out sbits_array_t(23 downto 0);
    
    --==========--
    --== QPLL ==--
    --==========--

    --== QPLL raw ==--

    qpll_clk_p_i            : in std_logic;
    qpll_clk_n_i            : in std_logic;
    qpll_reset_o            : out std_logic;    
    qpll_locked_i           : in std_logic;    
        
    --== QPLL buffered ==--
    
    qpll_clk_o              : out std_logic;
    clk_1x_o                : out std_logic;
    clk_2x_o                : out std_logic;
    clk_4x_o                : out std_logic;
    qpll_reset_i            : in std_logic;    
    qpll_locked_o           : out std_logic;
    qpll_pll_locked_o       : out std_logic
    
);
end buffers;

architecture Behavioral of buffers is

    signal vfat2_t1             : std_logic_vector(2 downto 0); 
    signal vfat2_mclk           : std_logic_vector(2 downto 0); 
    signal vfat2_data_valid     : std_logic_vector(5 downto 0); 

    signal vfat2_0_sbits        : sbits_t;
    signal vfat2_0_data_out     : std_logic;

    signal vfat2_1_sbits        : sbits_t;
    signal vfat2_1_data_out     : std_logic;

    signal vfat2_2_sbits        : sbits_t;
    signal vfat2_2_data_out     : std_logic;

    signal vfat2_3_sbits        : sbits_t;
    signal vfat2_3_data_out     : std_logic;

    signal vfat2_4_sbits        : sbits_t;
    signal vfat2_4_data_out     : std_logic;

    signal vfat2_5_sbits        : sbits_t;
    signal vfat2_5_data_out     : std_logic;

    signal vfat2_6_sbits        : sbits_t;
    signal vfat2_6_data_out     : std_logic;

    signal vfat2_7_sbits        : sbits_t;
    signal vfat2_7_data_out     : std_logic;

    signal vfat2_8_sbits        : sbits_t;
    signal vfat2_8_data_out     : std_logic;

    signal vfat2_9_sbits        : sbits_t;
    signal vfat2_9_data_out     : std_logic;

    signal vfat2_10_sbits       : sbits_t;
    signal vfat2_10_data_out    : std_logic;

    signal vfat2_11_sbits       : sbits_t;
    signal vfat2_11_data_out    : std_logic;

    signal vfat2_12_sbits       : sbits_t;
    signal vfat2_12_data_out    : std_logic;

    signal vfat2_13_sbits       : sbits_t;
    signal vfat2_13_data_out    : std_logic;

    signal vfat2_14_sbits       : sbits_t;
    signal vfat2_14_data_out    : std_logic;

    signal vfat2_15_sbits       : sbits_t;
    signal vfat2_15_data_out    : std_logic;

    signal vfat2_16_sbits       : sbits_t;
    signal vfat2_16_data_out    : std_logic;

    signal vfat2_17_sbits       : sbits_t;
    signal vfat2_17_data_out    : std_logic;

    signal vfat2_18_sbits       : sbits_t;
    signal vfat2_18_data_out    : std_logic;

    signal vfat2_19_sbits       : sbits_t;
    signal vfat2_19_data_out    : std_logic;

    signal vfat2_20_sbits       : sbits_t;
    signal vfat2_20_data_out    : std_logic;

    signal vfat2_21_sbits       : sbits_t;
    signal vfat2_21_data_out    : std_logic;

    signal vfat2_22_sbits       : sbits_t;
    signal vfat2_22_data_out    : std_logic;

    signal vfat2_23_sbits       : sbits_t;
    signal vfat2_23_data_out    : std_logic;

begin

    --==========--
    --== QPLL ==--
    --==========--
    
    -- qpll_reset

    qpll_reset_obufds : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map(
        i           => qpll_reset_i,
        o           => qpll_reset_o
    );
    
    -- qpll_locked_i
    
    qpll_locked_ibuf : ibuf
    generic map(
        ibuf_low_pwr    => true,
        iostandard      => "lvcmos25"
    )
    port map(
        i               => qpll_locked_i,
        o               => qpll_locked_o
    );
    
    -- qpll_clk

    qpll_pll_inst : entity work.qpll_pll
    port map(
        qpll_i_p        => qpll_clk_p_i,
        qpll_i_n        => qpll_clk_n_i,
        qpll_clk_o      => qpll_clk_o,
        qpll_locked_o   => qpll_pll_locked_o
    );    

    --==================--
    --== MCLK signals ==--
    --==================--

    vfat2_mclk_2_oddr : oddr
    generic map(
        ddr_clk_edge    => "opposite_edge",
        init            => '0',
        srtype          => "sync"
    )
    port map (
        q               => vfat2_mclk(2),
        c               => vfat2_mclk_i,
        ce              => '1',
        d1              => '0',
        d2              => '1',
        r               => '0',
        s               => '0'
    );

    vfat2_mclk_2_obufds : obufds
    generic map(
        iostandard  => "lvds_25"
    )
    port map (
        i           => vfat2_mclk(2),
        o           => vfat2_mclk_p_o(2),
        ob          => vfat2_mclk_n_o(2)
    );

    vfat2_mclk_0_oddr : oddr
    generic map(
        ddr_clk_edge    => "opposite_edge",
        init            => '0',
        srtype          => "sync"
    )
    port map (
        q               => vfat2_mclk(0),
        c               => vfat2_mclk_i,
        ce              => '1',
        d1              => '1',
        d2              => '0',
        r               => '0',
        s               => '0'
    );

    vfat2_mclk_0_obufds : obufds
    generic map(
        iostandard  => "lvds_25"
    )
    port map (
        i           => vfat2_mclk(0),
        o           => vfat2_mclk_p_o(0),
        ob          => vfat2_mclk_n_o(0)
    );

    vfat2_mclk_1_oddr : oddr
    generic map(
        ddr_clk_edge    => "opposite_edge",
        init            => '0',
        srtype          => "sync"
    )
    port map (
        q               => vfat2_mclk(1),
        c               => vfat2_mclk_i,
        ce              => '1',
        d1              => '1',
        d2              => '0',
        r               => '0',
        s               => '0'
    );

    vfat2_mclk_1_obufds : obufds
    generic map(
        iostandard  => "lvds_25"
    )
    port map (
        i           => vfat2_mclk(1),
        o           => vfat2_mclk_p_o(1),
        ob          => vfat2_mclk_n_o(1)
    );

    --===================--
    --== Reset signals ==--
    --===================--

    vfat2_resb_2_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map(
        o           => vfat2_resb_o(2),
        i           => vfat2_reset_i
    );

    vfat2_resh_2_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map(
        o           => vfat2_resh_o(2),
        i           => vfat2_reset_i
    );

    vfat2_resb_0_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map(
        o           => vfat2_resb_o(0),
        i           => vfat2_reset_i
    );

    vfat2_resh_0_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map(
        o           => vfat2_resh_o(0),
        i           => vfat2_reset_i
    );

    vfat2_resb_1_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map(
        o           => vfat2_resb_o(1),
        i           => vfat2_reset_i
    );

    vfat2_resh_1_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map(
        o           => vfat2_resh_o(1),
        i           => vfat2_reset_i
    );

    --================--
    --== T1 signals ==--
    --================--

    vfat2_t1_2_obufds : obufds
    generic map(
        iostandard  => "lvds_25"
    )
    port map(
        i           => vfat2_t1(2),
        o           => vfat2_t1_p_o(2),
        ob          => vfat2_t1_n_o(2)
    );

    vfat2_t1(2) <= not vfat2_t1_i;

    vfat2_t1_0_obufds : obufds
    generic map(
        iostandard  => "lvds_25"
    )
    port map(
        i           => vfat2_t1(0),
        o           => vfat2_t1_p_o(0),
        ob          => vfat2_t1_n_o(0)
    );

    vfat2_t1(0) <= not vfat2_t1_i;

    vfat2_t1_1_obufds : obufds
    generic map(
        iostandard  => "lvds_25"
    )
    port map(
        i           => vfat2_t1(1),
        o           => vfat2_t1_p_o(1),
        ob          => vfat2_t1_n_o(1)
    );

    vfat2_t1(1) <= not vfat2_t1_i;

    --=================--
    --== I2C signals ==--
    --=================--

    vfat2_scl_5_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "fast"
    )
    port map(
        o           => vfat2_scl_o(5),
        i           => vfat2_scl_i(5)
    );

    vfat2_sda_5_iobuf : iobuf
    generic map (
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map (
        o           => vfat2_sda_miso_o(5),
        io          => vfat2_sda_io(5),
        i           => vfat2_sda_mosi_i(5),
        t           => vfat2_sda_tri_i(5)
    );

    vfat2_scl_4_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "fast"
    )
    port map(
        o           => vfat2_scl_o(4),
        i           => vfat2_scl_i(4)
    );

    vfat2_sda_4_iobuf : iobuf
    generic map (
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map (
        o           => vfat2_sda_miso_o(4),
        io          => vfat2_sda_io(4),
        i           => vfat2_sda_mosi_i(4),
        t           => vfat2_sda_tri_i(4)
    );

    vfat2_scl_1_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "fast"
    )
    port map(
        o           => vfat2_scl_o(1),
        i           => vfat2_scl_i(1)
    );

    vfat2_sda_1_iobuf : iobuf
    generic map (
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map (
        o           => vfat2_sda_miso_o(1),
        io          => vfat2_sda_io(1),
        i           => vfat2_sda_mosi_i(1),
        t           => vfat2_sda_tri_i(1)
    );

    vfat2_scl_2_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "fast"
    )
    port map(
        o           => vfat2_scl_o(2),
        i           => vfat2_scl_i(2)
    );

    vfat2_sda_2_iobuf : iobuf
    generic map (
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map (
        o           => vfat2_sda_miso_o(2),
        io          => vfat2_sda_io(2),
        i           => vfat2_sda_mosi_i(2),
        t           => vfat2_sda_tri_i(2)
    );

    vfat2_scl_3_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "fast"
    )
    port map(
        o           => vfat2_scl_o(3),
        i           => vfat2_scl_i(3)
    );

    vfat2_sda_3_iobuf : iobuf
    generic map (
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map (
        o           => vfat2_sda_miso_o(3),
        io          => vfat2_sda_io(3),
        i           => vfat2_sda_mosi_i(3),
        t           => vfat2_sda_tri_i(3)
    );

    vfat2_scl_0_obuf : obuf
    generic map(
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "fast"
    )
    port map(
        o           => vfat2_scl_o(0),
        i           => vfat2_scl_i(0)
    );

    vfat2_sda_0_iobuf : iobuf
    generic map (
        drive       => 12,
        iostandard  => "lvcmos25",
        slew        => "slow"
    )
    port map (
        o           => vfat2_sda_miso_o(0),
        io          => vfat2_sda_io(0),
        i           => vfat2_sda_mosi_i(0),
        t           => vfat2_sda_tri_i(0)
    );

    --========================--
    --== Data valid signals ==--
    --========================--

    vfat2_data_valid_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_data_valid_p_i(5),
        ib              => vfat2_data_valid_n_i(5),
        o               => vfat2_data_valid(5)
    );

    vfat2_data_valid_o(5) <= not vfat2_data_valid(5);

    vfat2_data_valid_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_data_valid_p_i(4),
        ib              => vfat2_data_valid_n_i(4),
        o               => vfat2_data_valid(4)
    );

    vfat2_data_valid_o(4) <= vfat2_data_valid(4);

    vfat2_data_valid_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_data_valid_p_i(1),
        ib              => vfat2_data_valid_n_i(1),
        o               => vfat2_data_valid(1)
    );

    vfat2_data_valid_o(1) <= not vfat2_data_valid(1);

    vfat2_data_valid_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_data_valid_p_i(2),
        ib              => vfat2_data_valid_n_i(2),
        o               => vfat2_data_valid(2)
    );

    vfat2_data_valid_o(2) <= vfat2_data_valid(2);

    vfat2_data_valid_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_data_valid_p_i(3),
        ib              => vfat2_data_valid_n_i(3),
        o               => vfat2_data_valid(3)
    );

    vfat2_data_valid_o(3) <= vfat2_data_valid(3);

    vfat2_data_valid_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_data_valid_p_i(0),
        ib              => vfat2_data_valid_n_i(0),
        o               => vfat2_data_valid(0)
    );

    vfat2_data_valid_o(0) <= not vfat2_data_valid(0);

    --======================--
    --== VFAT2 20 signals ==--
    --======================--

    vfat2_20_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_20_sbits_p_i(0),
        ib              => vfat2_20_sbits_n_i(0),
        o               => vfat2_20_sbits(0)
    );

    vfat2_sbits_o(20)(0) <= vfat2_20_sbits(0);

    vfat2_20_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_20_sbits_p_i(1),
        ib              => vfat2_20_sbits_n_i(1),
        o               => vfat2_20_sbits(1)
    );

    vfat2_sbits_o(20)(1) <= vfat2_20_sbits(1);

    vfat2_20_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_20_sbits_p_i(2),
        ib              => vfat2_20_sbits_n_i(2),
        o               => vfat2_20_sbits(2)
    );

    vfat2_sbits_o(20)(2) <= not vfat2_20_sbits(2);

    vfat2_20_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_20_sbits_p_i(3),
        ib              => vfat2_20_sbits_n_i(3),
        o               => vfat2_20_sbits(3)
    );

    vfat2_sbits_o(20)(3) <= vfat2_20_sbits(3);

    vfat2_20_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_20_sbits_p_i(4),
        ib              => vfat2_20_sbits_n_i(4),
        o               => vfat2_20_sbits(4)
    );

    vfat2_sbits_o(20)(4) <= vfat2_20_sbits(4);

    vfat2_20_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_20_sbits_p_i(5),
        ib              => vfat2_20_sbits_n_i(5),
        o               => vfat2_20_sbits(5)
    );

    vfat2_sbits_o(20)(5) <= not vfat2_20_sbits(5);

    vfat2_20_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_20_sbits_p_i(6),
        ib              => vfat2_20_sbits_n_i(6),
        o               => vfat2_20_sbits(6)
    );

    vfat2_sbits_o(20)(6) <= not vfat2_20_sbits(6);

    vfat2_20_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_20_sbits_p_i(7),
        ib              => vfat2_20_sbits_n_i(7),
        o               => vfat2_20_sbits(7)
    );

    vfat2_sbits_o(20)(7) <= not vfat2_20_sbits(7);

    vfat2_20_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_20_data_out_p_i,
        ib              => vfat2_20_data_out_n_i,
        o               => vfat2_20_data_out
    );

    vfat2_data_out_o(20) <= not vfat2_20_data_out;

    --======================--
    --== VFAT2 21 signals ==--
    --======================--

    vfat2_21_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_21_sbits_p_i(0),
        ib              => vfat2_21_sbits_n_i(0),
        o               => vfat2_21_sbits(0)
    );

    vfat2_sbits_o(21)(0) <= not vfat2_21_sbits(0);

    vfat2_21_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_21_sbits_p_i(1),
        ib              => vfat2_21_sbits_n_i(1),
        o               => vfat2_21_sbits(1)
    );

    vfat2_sbits_o(21)(1) <= vfat2_21_sbits(1);

    vfat2_21_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_21_sbits_p_i(2),
        ib              => vfat2_21_sbits_n_i(2),
        o               => vfat2_21_sbits(2)
    );

    vfat2_sbits_o(21)(2) <= vfat2_21_sbits(2);

    vfat2_21_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_21_sbits_p_i(3),
        ib              => vfat2_21_sbits_n_i(3),
        o               => vfat2_21_sbits(3)
    );

    vfat2_sbits_o(21)(3) <= vfat2_21_sbits(3);

    vfat2_21_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_21_sbits_p_i(4),
        ib              => vfat2_21_sbits_n_i(4),
        o               => vfat2_21_sbits(4)
    );

    vfat2_sbits_o(21)(4) <= vfat2_21_sbits(4);

    vfat2_21_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_21_sbits_p_i(5),
        ib              => vfat2_21_sbits_n_i(5),
        o               => vfat2_21_sbits(5)
    );

    vfat2_sbits_o(21)(5) <= vfat2_21_sbits(5);

    vfat2_21_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_21_sbits_p_i(6),
        ib              => vfat2_21_sbits_n_i(6),
        o               => vfat2_21_sbits(6)
    );

    vfat2_sbits_o(21)(6) <= not vfat2_21_sbits(6);

    vfat2_21_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_21_sbits_p_i(7),
        ib              => vfat2_21_sbits_n_i(7),
        o               => vfat2_21_sbits(7)
    );

    vfat2_sbits_o(21)(7) <= vfat2_21_sbits(7);

    vfat2_21_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_21_data_out_p_i,
        ib              => vfat2_21_data_out_n_i,
        o               => vfat2_21_data_out
    );

    vfat2_data_out_o(21) <= not vfat2_21_data_out;

    --======================--
    --== VFAT2 22 signals ==--
    --======================--

    vfat2_22_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_22_sbits_p_i(0),
        ib              => vfat2_22_sbits_n_i(0),
        o               => vfat2_22_sbits(0)
    );

    vfat2_sbits_o(22)(0) <= not vfat2_22_sbits(0);

    vfat2_22_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_22_sbits_p_i(1),
        ib              => vfat2_22_sbits_n_i(1),
        o               => vfat2_22_sbits(1)
    );

    vfat2_sbits_o(22)(1) <= vfat2_22_sbits(1);

    vfat2_22_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_22_sbits_p_i(2),
        ib              => vfat2_22_sbits_n_i(2),
        o               => vfat2_22_sbits(2)
    );

    vfat2_sbits_o(22)(2) <= vfat2_22_sbits(2);

    vfat2_22_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_22_sbits_p_i(3),
        ib              => vfat2_22_sbits_n_i(3),
        o               => vfat2_22_sbits(3)
    );

    vfat2_sbits_o(22)(3) <= vfat2_22_sbits(3);

    vfat2_22_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_22_sbits_p_i(4),
        ib              => vfat2_22_sbits_n_i(4),
        o               => vfat2_22_sbits(4)
    );

    vfat2_sbits_o(22)(4) <= vfat2_22_sbits(4);

    vfat2_22_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_22_sbits_p_i(5),
        ib              => vfat2_22_sbits_n_i(5),
        o               => vfat2_22_sbits(5)
    );

    vfat2_sbits_o(22)(5) <= vfat2_22_sbits(5);

    vfat2_22_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_22_sbits_p_i(6),
        ib              => vfat2_22_sbits_n_i(6),
        o               => vfat2_22_sbits(6)
    );

    vfat2_sbits_o(22)(6) <= vfat2_22_sbits(6);

    vfat2_22_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_22_sbits_p_i(7),
        ib              => vfat2_22_sbits_n_i(7),
        o               => vfat2_22_sbits(7)
    );

    vfat2_sbits_o(22)(7) <= vfat2_22_sbits(7);

    vfat2_22_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_22_data_out_p_i,
        ib              => vfat2_22_data_out_n_i,
        o               => vfat2_22_data_out
    );

    vfat2_data_out_o(22) <= vfat2_22_data_out;

    --======================--
    --== VFAT2 23 signals ==--
    --======================--

    vfat2_23_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_23_sbits_p_i(0),
        ib              => vfat2_23_sbits_n_i(0),
        o               => vfat2_23_sbits(0)
    );

    vfat2_sbits_o(23)(0) <= vfat2_23_sbits(0);

    vfat2_23_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_23_sbits_p_i(1),
        ib              => vfat2_23_sbits_n_i(1),
        o               => vfat2_23_sbits(1)
    );

    vfat2_sbits_o(23)(1) <= not vfat2_23_sbits(1);

    vfat2_23_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_23_sbits_p_i(2),
        ib              => vfat2_23_sbits_n_i(2),
        o               => vfat2_23_sbits(2)
    );

    vfat2_sbits_o(23)(2) <= not vfat2_23_sbits(2);

    vfat2_23_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_23_sbits_p_i(3),
        ib              => vfat2_23_sbits_n_i(3),
        o               => vfat2_23_sbits(3)
    );

    vfat2_sbits_o(23)(3) <= vfat2_23_sbits(3);

    vfat2_23_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_23_sbits_p_i(4),
        ib              => vfat2_23_sbits_n_i(4),
        o               => vfat2_23_sbits(4)
    );

    vfat2_sbits_o(23)(4) <= vfat2_23_sbits(4);

    vfat2_23_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_23_sbits_p_i(5),
        ib              => vfat2_23_sbits_n_i(5),
        o               => vfat2_23_sbits(5)
    );

    vfat2_sbits_o(23)(5) <= not vfat2_23_sbits(5);

    vfat2_23_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_23_sbits_p_i(6),
        ib              => vfat2_23_sbits_n_i(6),
        o               => vfat2_23_sbits(6)
    );

    vfat2_sbits_o(23)(6) <= vfat2_23_sbits(6);

    vfat2_23_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_23_sbits_p_i(7),
        ib              => vfat2_23_sbits_n_i(7),
        o               => vfat2_23_sbits(7)
    );

    vfat2_sbits_o(23)(7) <= not vfat2_23_sbits(7);

    vfat2_23_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_23_data_out_p_i,
        ib              => vfat2_23_data_out_n_i,
        o               => vfat2_23_data_out
    );

    vfat2_data_out_o(23) <= not vfat2_23_data_out;

    --======================--
    --== VFAT2 19 signals ==--
    --======================--

    vfat2_19_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_19_sbits_p_i(0),
        ib              => vfat2_19_sbits_n_i(0),
        o               => vfat2_19_sbits(0)
    );

    vfat2_sbits_o(19)(0) <= vfat2_19_sbits(0);

    vfat2_19_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_19_sbits_p_i(1),
        ib              => vfat2_19_sbits_n_i(1),
        o               => vfat2_19_sbits(1)
    );

    vfat2_sbits_o(19)(1) <= vfat2_19_sbits(1);

    vfat2_19_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_19_sbits_p_i(2),
        ib              => vfat2_19_sbits_n_i(2),
        o               => vfat2_19_sbits(2)
    );

    vfat2_sbits_o(19)(2) <= not vfat2_19_sbits(2);

    vfat2_19_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_19_sbits_p_i(3),
        ib              => vfat2_19_sbits_n_i(3),
        o               => vfat2_19_sbits(3)
    );

    vfat2_sbits_o(19)(3) <= vfat2_19_sbits(3);

    vfat2_19_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_19_sbits_p_i(4),
        ib              => vfat2_19_sbits_n_i(4),
        o               => vfat2_19_sbits(4)
    );

    vfat2_sbits_o(19)(4) <= vfat2_19_sbits(4);

    vfat2_19_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_19_sbits_p_i(5),
        ib              => vfat2_19_sbits_n_i(5),
        o               => vfat2_19_sbits(5)
    );

    vfat2_sbits_o(19)(5) <= vfat2_19_sbits(5);

    vfat2_19_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_19_sbits_p_i(6),
        ib              => vfat2_19_sbits_n_i(6),
        o               => vfat2_19_sbits(6)
    );

    vfat2_sbits_o(19)(6) <= not vfat2_19_sbits(6);

    vfat2_19_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_19_sbits_p_i(7),
        ib              => vfat2_19_sbits_n_i(7),
        o               => vfat2_19_sbits(7)
    );

    vfat2_sbits_o(19)(7) <= not vfat2_19_sbits(7);

    vfat2_19_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_19_data_out_p_i,
        ib              => vfat2_19_data_out_n_i,
        o               => vfat2_19_data_out
    );

    vfat2_data_out_o(19) <= vfat2_19_data_out;

    --======================--
    --== VFAT2 18 signals ==--
    --======================--

    vfat2_18_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_18_sbits_p_i(0),
        ib              => vfat2_18_sbits_n_i(0),
        o               => vfat2_18_sbits(0)
    );

    vfat2_sbits_o(18)(0) <= not vfat2_18_sbits(0);

    vfat2_18_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_18_sbits_p_i(1),
        ib              => vfat2_18_sbits_n_i(1),
        o               => vfat2_18_sbits(1)
    );

    vfat2_sbits_o(18)(1) <= vfat2_18_sbits(1);

    vfat2_18_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_18_sbits_p_i(2),
        ib              => vfat2_18_sbits_n_i(2),
        o               => vfat2_18_sbits(2)
    );

    vfat2_sbits_o(18)(2) <= vfat2_18_sbits(2);

    vfat2_18_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_18_sbits_p_i(3),
        ib              => vfat2_18_sbits_n_i(3),
        o               => vfat2_18_sbits(3)
    );

    vfat2_sbits_o(18)(3) <= not vfat2_18_sbits(3);

    vfat2_18_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_18_sbits_p_i(4),
        ib              => vfat2_18_sbits_n_i(4),
        o               => vfat2_18_sbits(4)
    );

    vfat2_sbits_o(18)(4) <= not vfat2_18_sbits(4);

    vfat2_18_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_18_sbits_p_i(5),
        ib              => vfat2_18_sbits_n_i(5),
        o               => vfat2_18_sbits(5)
    );

    vfat2_sbits_o(18)(5) <= vfat2_18_sbits(5);

    vfat2_18_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_18_sbits_p_i(6),
        ib              => vfat2_18_sbits_n_i(6),
        o               => vfat2_18_sbits(6)
    );

    vfat2_sbits_o(18)(6) <= not vfat2_18_sbits(6);

    vfat2_18_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_18_sbits_p_i(7),
        ib              => vfat2_18_sbits_n_i(7),
        o               => vfat2_18_sbits(7)
    );

    vfat2_sbits_o(18)(7) <= not vfat2_18_sbits(7);

    vfat2_18_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_18_data_out_p_i,
        ib              => vfat2_18_data_out_n_i,
        o               => vfat2_18_data_out
    );

    vfat2_data_out_o(18) <= not vfat2_18_data_out;

    --======================--
    --== VFAT2 17 signals ==--
    --======================--

    vfat2_17_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_17_sbits_p_i(0),
        ib              => vfat2_17_sbits_n_i(0),
        o               => vfat2_17_sbits(0)
    );

    vfat2_sbits_o(17)(0) <= not vfat2_17_sbits(0);

    vfat2_17_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_17_sbits_p_i(1),
        ib              => vfat2_17_sbits_n_i(1),
        o               => vfat2_17_sbits(1)
    );

    vfat2_sbits_o(17)(1) <= not vfat2_17_sbits(1);

    vfat2_17_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_17_sbits_p_i(2),
        ib              => vfat2_17_sbits_n_i(2),
        o               => vfat2_17_sbits(2)
    );

    vfat2_sbits_o(17)(2) <= vfat2_17_sbits(2);

    vfat2_17_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_17_sbits_p_i(3),
        ib              => vfat2_17_sbits_n_i(3),
        o               => vfat2_17_sbits(3)
    );

    vfat2_sbits_o(17)(3) <= vfat2_17_sbits(3);

    vfat2_17_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_17_sbits_p_i(4),
        ib              => vfat2_17_sbits_n_i(4),
        o               => vfat2_17_sbits(4)
    );

    vfat2_sbits_o(17)(4) <= vfat2_17_sbits(4);

    vfat2_17_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_17_sbits_p_i(5),
        ib              => vfat2_17_sbits_n_i(5),
        o               => vfat2_17_sbits(5)
    );

    vfat2_sbits_o(17)(5) <= not vfat2_17_sbits(5);

    vfat2_17_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_17_sbits_p_i(6),
        ib              => vfat2_17_sbits_n_i(6),
        o               => vfat2_17_sbits(6)
    );

    vfat2_sbits_o(17)(6) <= not vfat2_17_sbits(6);

    vfat2_17_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_17_sbits_p_i(7),
        ib              => vfat2_17_sbits_n_i(7),
        o               => vfat2_17_sbits(7)
    );

    vfat2_sbits_o(17)(7) <= not vfat2_17_sbits(7);

    vfat2_17_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_17_data_out_p_i,
        ib              => vfat2_17_data_out_n_i,
        o               => vfat2_17_data_out
    );

    vfat2_data_out_o(17) <= not vfat2_17_data_out;

    --======================--
    --== VFAT2 16 signals ==--
    --======================--

    vfat2_16_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_16_sbits_p_i(0),
        ib              => vfat2_16_sbits_n_i(0),
        o               => vfat2_16_sbits(0)
    );

    vfat2_sbits_o(16)(0) <= vfat2_16_sbits(0);

    vfat2_16_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_16_sbits_p_i(1),
        ib              => vfat2_16_sbits_n_i(1),
        o               => vfat2_16_sbits(1)
    );

    vfat2_sbits_o(16)(1) <= vfat2_16_sbits(1);

    vfat2_16_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_16_sbits_p_i(2),
        ib              => vfat2_16_sbits_n_i(2),
        o               => vfat2_16_sbits(2)
    );

    vfat2_sbits_o(16)(2) <= vfat2_16_sbits(2);

    vfat2_16_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_16_sbits_p_i(3),
        ib              => vfat2_16_sbits_n_i(3),
        o               => vfat2_16_sbits(3)
    );

    vfat2_sbits_o(16)(3) <= not vfat2_16_sbits(3);

    vfat2_16_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_16_sbits_p_i(4),
        ib              => vfat2_16_sbits_n_i(4),
        o               => vfat2_16_sbits(4)
    );

    vfat2_sbits_o(16)(4) <= not vfat2_16_sbits(4);

    vfat2_16_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_16_sbits_p_i(5),
        ib              => vfat2_16_sbits_n_i(5),
        o               => vfat2_16_sbits(5)
    );

    vfat2_sbits_o(16)(5) <= vfat2_16_sbits(5);

    vfat2_16_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_16_sbits_p_i(6),
        ib              => vfat2_16_sbits_n_i(6),
        o               => vfat2_16_sbits(6)
    );

    vfat2_sbits_o(16)(6) <= vfat2_16_sbits(6);

    vfat2_16_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_16_sbits_p_i(7),
        ib              => vfat2_16_sbits_n_i(7),
        o               => vfat2_16_sbits(7)
    );

    vfat2_sbits_o(16)(7) <= not vfat2_16_sbits(7);

    vfat2_16_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_16_data_out_p_i,
        ib              => vfat2_16_data_out_n_i,
        o               => vfat2_16_data_out
    );

    vfat2_data_out_o(16) <= vfat2_16_data_out;

    --======================--
    --== VFAT2 11 signals ==--
    --======================--

    vfat2_11_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_11_sbits_p_i(0),
        ib              => vfat2_11_sbits_n_i(0),
        o               => vfat2_11_sbits(0)
    );

    vfat2_sbits_o(11)(0) <= not vfat2_11_sbits(0);

    vfat2_11_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_11_sbits_p_i(1),
        ib              => vfat2_11_sbits_n_i(1),
        o               => vfat2_11_sbits(1)
    );

    vfat2_sbits_o(11)(1) <= vfat2_11_sbits(1);

    vfat2_11_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_11_sbits_p_i(2),
        ib              => vfat2_11_sbits_n_i(2),
        o               => vfat2_11_sbits(2)
    );

    vfat2_sbits_o(11)(2) <= vfat2_11_sbits(2);

    vfat2_11_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_11_sbits_p_i(3),
        ib              => vfat2_11_sbits_n_i(3),
        o               => vfat2_11_sbits(3)
    );

    vfat2_sbits_o(11)(3) <= not vfat2_11_sbits(3);

    vfat2_11_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_11_sbits_p_i(4),
        ib              => vfat2_11_sbits_n_i(4),
        o               => vfat2_11_sbits(4)
    );

    vfat2_sbits_o(11)(4) <= vfat2_11_sbits(4);

    vfat2_11_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_11_sbits_p_i(5),
        ib              => vfat2_11_sbits_n_i(5),
        o               => vfat2_11_sbits(5)
    );

    vfat2_sbits_o(11)(5) <= vfat2_11_sbits(5);

    vfat2_11_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_11_sbits_p_i(6),
        ib              => vfat2_11_sbits_n_i(6),
        o               => vfat2_11_sbits(6)
    );

    vfat2_sbits_o(11)(6) <= not vfat2_11_sbits(6);

    vfat2_11_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_11_sbits_p_i(7),
        ib              => vfat2_11_sbits_n_i(7),
        o               => vfat2_11_sbits(7)
    );

    vfat2_sbits_o(11)(7) <= vfat2_11_sbits(7);

    vfat2_11_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_11_data_out_p_i,
        ib              => vfat2_11_data_out_n_i,
        o               => vfat2_11_data_out
    );

    vfat2_data_out_o(11) <= vfat2_11_data_out;

    --======================--
    --== VFAT2 12 signals ==--
    --======================--

    vfat2_12_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_12_sbits_p_i(0),
        ib              => vfat2_12_sbits_n_i(0),
        o               => vfat2_12_sbits(0)
    );

    vfat2_sbits_o(12)(0) <= not vfat2_12_sbits(0);

    vfat2_12_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_12_sbits_p_i(1),
        ib              => vfat2_12_sbits_n_i(1),
        o               => vfat2_12_sbits(1)
    );

    vfat2_sbits_o(12)(1) <= vfat2_12_sbits(1);

    vfat2_12_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_12_sbits_p_i(2),
        ib              => vfat2_12_sbits_n_i(2),
        o               => vfat2_12_sbits(2)
    );

    vfat2_sbits_o(12)(2) <= not vfat2_12_sbits(2);

    vfat2_12_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_12_sbits_p_i(3),
        ib              => vfat2_12_sbits_n_i(3),
        o               => vfat2_12_sbits(3)
    );

    vfat2_sbits_o(12)(3) <= not vfat2_12_sbits(3);

    vfat2_12_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_12_sbits_p_i(4),
        ib              => vfat2_12_sbits_n_i(4),
        o               => vfat2_12_sbits(4)
    );

    vfat2_sbits_o(12)(4) <= not vfat2_12_sbits(4);

    vfat2_12_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_12_sbits_p_i(5),
        ib              => vfat2_12_sbits_n_i(5),
        o               => vfat2_12_sbits(5)
    );

    vfat2_sbits_o(12)(5) <= vfat2_12_sbits(5);

    vfat2_12_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_12_sbits_p_i(6),
        ib              => vfat2_12_sbits_n_i(6),
        o               => vfat2_12_sbits(6)
    );

    vfat2_sbits_o(12)(6) <= vfat2_12_sbits(6);

    vfat2_12_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_12_sbits_p_i(7),
        ib              => vfat2_12_sbits_n_i(7),
        o               => vfat2_12_sbits(7)
    );

    vfat2_sbits_o(12)(7) <= vfat2_12_sbits(7);

    vfat2_12_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_12_data_out_p_i,
        ib              => vfat2_12_data_out_n_i,
        o               => vfat2_12_data_out
    );

    vfat2_data_out_o(12) <= vfat2_12_data_out;

    --======================--
    --== VFAT2 10 signals ==--
    --======================--

    vfat2_10_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_10_sbits_p_i(0),
        ib              => vfat2_10_sbits_n_i(0),
        o               => vfat2_10_sbits(0)
    );

    vfat2_sbits_o(10)(0) <= not vfat2_10_sbits(0);

    vfat2_10_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_10_sbits_p_i(1),
        ib              => vfat2_10_sbits_n_i(1),
        o               => vfat2_10_sbits(1)
    );

    vfat2_sbits_o(10)(1) <= vfat2_10_sbits(1);

    vfat2_10_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_10_sbits_p_i(2),
        ib              => vfat2_10_sbits_n_i(2),
        o               => vfat2_10_sbits(2)
    );

    vfat2_sbits_o(10)(2) <= vfat2_10_sbits(2);

    vfat2_10_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_10_sbits_p_i(3),
        ib              => vfat2_10_sbits_n_i(3),
        o               => vfat2_10_sbits(3)
    );

    vfat2_sbits_o(10)(3) <= not vfat2_10_sbits(3);

    vfat2_10_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_10_sbits_p_i(4),
        ib              => vfat2_10_sbits_n_i(4),
        o               => vfat2_10_sbits(4)
    );

    vfat2_sbits_o(10)(4) <= vfat2_10_sbits(4);

    vfat2_10_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_10_sbits_p_i(5),
        ib              => vfat2_10_sbits_n_i(5),
        o               => vfat2_10_sbits(5)
    );

    vfat2_sbits_o(10)(5) <= vfat2_10_sbits(5);

    vfat2_10_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_10_sbits_p_i(6),
        ib              => vfat2_10_sbits_n_i(6),
        o               => vfat2_10_sbits(6)
    );

    vfat2_sbits_o(10)(6) <= not vfat2_10_sbits(6);

    vfat2_10_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_10_sbits_p_i(7),
        ib              => vfat2_10_sbits_n_i(7),
        o               => vfat2_10_sbits(7)
    );

    vfat2_sbits_o(10)(7) <= vfat2_10_sbits(7);

    vfat2_10_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_10_data_out_p_i,
        ib              => vfat2_10_data_out_n_i,
        o               => vfat2_10_data_out
    );

    vfat2_data_out_o(10) <= not vfat2_10_data_out;

    --======================--
    --== VFAT2 13 signals ==--
    --======================--

    vfat2_13_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_13_sbits_p_i(0),
        ib              => vfat2_13_sbits_n_i(0),
        o               => vfat2_13_sbits(0)
    );

    vfat2_sbits_o(13)(0) <= not vfat2_13_sbits(0);

    vfat2_13_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_13_sbits_p_i(1),
        ib              => vfat2_13_sbits_n_i(1),
        o               => vfat2_13_sbits(1)
    );

    vfat2_sbits_o(13)(1) <= vfat2_13_sbits(1);

    vfat2_13_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_13_sbits_p_i(2),
        ib              => vfat2_13_sbits_n_i(2),
        o               => vfat2_13_sbits(2)
    );

    vfat2_sbits_o(13)(2) <= not vfat2_13_sbits(2);

    vfat2_13_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_13_sbits_p_i(3),
        ib              => vfat2_13_sbits_n_i(3),
        o               => vfat2_13_sbits(3)
    );

    vfat2_sbits_o(13)(3) <= vfat2_13_sbits(3);

    vfat2_13_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_13_sbits_p_i(4),
        ib              => vfat2_13_sbits_n_i(4),
        o               => vfat2_13_sbits(4)
    );

    vfat2_sbits_o(13)(4) <= not vfat2_13_sbits(4);

    vfat2_13_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_13_sbits_p_i(5),
        ib              => vfat2_13_sbits_n_i(5),
        o               => vfat2_13_sbits(5)
    );

    vfat2_sbits_o(13)(5) <= not vfat2_13_sbits(5);

    vfat2_13_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_13_sbits_p_i(6),
        ib              => vfat2_13_sbits_n_i(6),
        o               => vfat2_13_sbits(6)
    );

    vfat2_sbits_o(13)(6) <= not vfat2_13_sbits(6);

    vfat2_13_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_13_sbits_p_i(7),
        ib              => vfat2_13_sbits_n_i(7),
        o               => vfat2_13_sbits(7)
    );

    vfat2_sbits_o(13)(7) <= not vfat2_13_sbits(7);

    vfat2_13_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_13_data_out_p_i,
        ib              => vfat2_13_data_out_n_i,
        o               => vfat2_13_data_out
    );

    vfat2_data_out_o(13) <= not vfat2_13_data_out;

    --======================--
    --== VFAT2 9 signals ==--
    --======================--

    vfat2_9_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_9_sbits_p_i(0),
        ib              => vfat2_9_sbits_n_i(0),
        o               => vfat2_9_sbits(0)
    );

    vfat2_sbits_o(9)(0) <= vfat2_9_sbits(0);

    vfat2_9_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_9_sbits_p_i(1),
        ib              => vfat2_9_sbits_n_i(1),
        o               => vfat2_9_sbits(1)
    );

    vfat2_sbits_o(9)(1) <= vfat2_9_sbits(1);

    vfat2_9_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_9_sbits_p_i(2),
        ib              => vfat2_9_sbits_n_i(2),
        o               => vfat2_9_sbits(2)
    );

    vfat2_sbits_o(9)(2) <= not vfat2_9_sbits(2);

    vfat2_9_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_9_sbits_p_i(3),
        ib              => vfat2_9_sbits_n_i(3),
        o               => vfat2_9_sbits(3)
    );

    vfat2_sbits_o(9)(3) <= not vfat2_9_sbits(3);

    vfat2_9_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_9_sbits_p_i(4),
        ib              => vfat2_9_sbits_n_i(4),
        o               => vfat2_9_sbits(4)
    );

    vfat2_sbits_o(9)(4) <= not vfat2_9_sbits(4);

    vfat2_9_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_9_sbits_p_i(5),
        ib              => vfat2_9_sbits_n_i(5),
        o               => vfat2_9_sbits(5)
    );

    vfat2_sbits_o(9)(5) <= vfat2_9_sbits(5);

    vfat2_9_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_9_sbits_p_i(6),
        ib              => vfat2_9_sbits_n_i(6),
        o               => vfat2_9_sbits(6)
    );

    vfat2_sbits_o(9)(6) <= not vfat2_9_sbits(6);

    vfat2_9_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_9_sbits_p_i(7),
        ib              => vfat2_9_sbits_n_i(7),
        o               => vfat2_9_sbits(7)
    );

    vfat2_sbits_o(9)(7) <= not vfat2_9_sbits(7);

    vfat2_9_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_9_data_out_p_i,
        ib              => vfat2_9_data_out_n_i,
        o               => vfat2_9_data_out
    );

    vfat2_data_out_o(9) <= not vfat2_9_data_out;

    --======================--
    --== VFAT2 14 signals ==--
    --======================--

    vfat2_14_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_14_sbits_p_i(0),
        ib              => vfat2_14_sbits_n_i(0),
        o               => vfat2_14_sbits(0)
    );

    vfat2_sbits_o(14)(0) <= not vfat2_14_sbits(0);

    vfat2_14_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_14_sbits_p_i(1),
        ib              => vfat2_14_sbits_n_i(1),
        o               => vfat2_14_sbits(1)
    );

    vfat2_sbits_o(14)(1) <= vfat2_14_sbits(1);

    vfat2_14_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_14_sbits_p_i(2),
        ib              => vfat2_14_sbits_n_i(2),
        o               => vfat2_14_sbits(2)
    );

    vfat2_sbits_o(14)(2) <= not vfat2_14_sbits(2);

    vfat2_14_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_14_sbits_p_i(3),
        ib              => vfat2_14_sbits_n_i(3),
        o               => vfat2_14_sbits(3)
    );

    vfat2_sbits_o(14)(3) <= not vfat2_14_sbits(3);

    vfat2_14_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_14_sbits_p_i(4),
        ib              => vfat2_14_sbits_n_i(4),
        o               => vfat2_14_sbits(4)
    );

    vfat2_sbits_o(14)(4) <= not vfat2_14_sbits(4);

    vfat2_14_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_14_sbits_p_i(5),
        ib              => vfat2_14_sbits_n_i(5),
        o               => vfat2_14_sbits(5)
    );

    vfat2_sbits_o(14)(5) <= vfat2_14_sbits(5);

    vfat2_14_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_14_sbits_p_i(6),
        ib              => vfat2_14_sbits_n_i(6),
        o               => vfat2_14_sbits(6)
    );

    vfat2_sbits_o(14)(6) <= not vfat2_14_sbits(6);

    vfat2_14_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_14_sbits_p_i(7),
        ib              => vfat2_14_sbits_n_i(7),
        o               => vfat2_14_sbits(7)
    );

    vfat2_sbits_o(14)(7) <= not vfat2_14_sbits(7);

    vfat2_14_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_14_data_out_p_i,
        ib              => vfat2_14_data_out_n_i,
        o               => vfat2_14_data_out
    );

    vfat2_data_out_o(14) <= not vfat2_14_data_out;

    --======================--
    --== VFAT2 8 signals ==--
    --======================--

    vfat2_8_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_8_sbits_p_i(0),
        ib              => vfat2_8_sbits_n_i(0),
        o               => vfat2_8_sbits(0)
    );

    vfat2_sbits_o(8)(0) <= vfat2_8_sbits(0);

    vfat2_8_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_8_sbits_p_i(1),
        ib              => vfat2_8_sbits_n_i(1),
        o               => vfat2_8_sbits(1)
    );

    vfat2_sbits_o(8)(1) <= vfat2_8_sbits(1);

    vfat2_8_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_8_sbits_p_i(2),
        ib              => vfat2_8_sbits_n_i(2),
        o               => vfat2_8_sbits(2)
    );

    vfat2_sbits_o(8)(2) <= not vfat2_8_sbits(2);

    vfat2_8_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_8_sbits_p_i(3),
        ib              => vfat2_8_sbits_n_i(3),
        o               => vfat2_8_sbits(3)
    );

    vfat2_sbits_o(8)(3) <= not vfat2_8_sbits(3);

    vfat2_8_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_8_sbits_p_i(4),
        ib              => vfat2_8_sbits_n_i(4),
        o               => vfat2_8_sbits(4)
    );

    vfat2_sbits_o(8)(4) <= vfat2_8_sbits(4);

    vfat2_8_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_8_sbits_p_i(5),
        ib              => vfat2_8_sbits_n_i(5),
        o               => vfat2_8_sbits(5)
    );

    vfat2_sbits_o(8)(5) <= vfat2_8_sbits(5);

    vfat2_8_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_8_sbits_p_i(6),
        ib              => vfat2_8_sbits_n_i(6),
        o               => vfat2_8_sbits(6)
    );

    vfat2_sbits_o(8)(6) <= not vfat2_8_sbits(6);

    vfat2_8_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_8_sbits_p_i(7),
        ib              => vfat2_8_sbits_n_i(7),
        o               => vfat2_8_sbits(7)
    );

    vfat2_sbits_o(8)(7) <= not vfat2_8_sbits(7);

    vfat2_8_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_8_data_out_p_i,
        ib              => vfat2_8_data_out_n_i,
        o               => vfat2_8_data_out
    );

    vfat2_data_out_o(8) <= vfat2_8_data_out;

    --======================--
    --== VFAT2 15 signals ==--
    --======================--

    vfat2_15_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_15_sbits_p_i(0),
        ib              => vfat2_15_sbits_n_i(0),
        o               => vfat2_15_sbits(0)
    );

    vfat2_sbits_o(15)(0) <= vfat2_15_sbits(0);

    vfat2_15_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_15_sbits_p_i(1),
        ib              => vfat2_15_sbits_n_i(1),
        o               => vfat2_15_sbits(1)
    );

    vfat2_sbits_o(15)(1) <= vfat2_15_sbits(1);

    vfat2_15_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_15_sbits_p_i(2),
        ib              => vfat2_15_sbits_n_i(2),
        o               => vfat2_15_sbits(2)
    );

    vfat2_sbits_o(15)(2) <= not vfat2_15_sbits(2);

    vfat2_15_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_15_sbits_p_i(3),
        ib              => vfat2_15_sbits_n_i(3),
        o               => vfat2_15_sbits(3)
    );

    vfat2_sbits_o(15)(3) <= vfat2_15_sbits(3);

    vfat2_15_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_15_sbits_p_i(4),
        ib              => vfat2_15_sbits_n_i(4),
        o               => vfat2_15_sbits(4)
    );

    vfat2_sbits_o(15)(4) <= not vfat2_15_sbits(4);

    vfat2_15_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_15_sbits_p_i(5),
        ib              => vfat2_15_sbits_n_i(5),
        o               => vfat2_15_sbits(5)
    );

    vfat2_sbits_o(15)(5) <= not vfat2_15_sbits(5);

    vfat2_15_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_15_sbits_p_i(6),
        ib              => vfat2_15_sbits_n_i(6),
        o               => vfat2_15_sbits(6)
    );

    vfat2_sbits_o(15)(6) <= not vfat2_15_sbits(6);

    vfat2_15_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_15_sbits_p_i(7),
        ib              => vfat2_15_sbits_n_i(7),
        o               => vfat2_15_sbits(7)
    );

    vfat2_sbits_o(15)(7) <= vfat2_15_sbits(7);

    vfat2_15_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_15_data_out_p_i,
        ib              => vfat2_15_data_out_n_i,
        o               => vfat2_15_data_out
    );

    vfat2_data_out_o(15) <= not vfat2_15_data_out;

    --======================--
    --== VFAT2 7 signals ==--
    --======================--

    vfat2_7_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_7_sbits_p_i(0),
        ib              => vfat2_7_sbits_n_i(0),
        o               => vfat2_7_sbits(0)
    );

    vfat2_sbits_o(7)(0) <= not vfat2_7_sbits(0);

    vfat2_7_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_7_sbits_p_i(1),
        ib              => vfat2_7_sbits_n_i(1),
        o               => vfat2_7_sbits(1)
    );

    vfat2_sbits_o(7)(1) <= vfat2_7_sbits(1);

    vfat2_7_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_7_sbits_p_i(2),
        ib              => vfat2_7_sbits_n_i(2),
        o               => vfat2_7_sbits(2)
    );

    vfat2_sbits_o(7)(2) <= not vfat2_7_sbits(2);

    vfat2_7_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_7_sbits_p_i(3),
        ib              => vfat2_7_sbits_n_i(3),
        o               => vfat2_7_sbits(3)
    );

    vfat2_sbits_o(7)(3) <= not vfat2_7_sbits(3);

    vfat2_7_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_7_sbits_p_i(4),
        ib              => vfat2_7_sbits_n_i(4),
        o               => vfat2_7_sbits(4)
    );

    vfat2_sbits_o(7)(4) <= vfat2_7_sbits(4);

    vfat2_7_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_7_sbits_p_i(5),
        ib              => vfat2_7_sbits_n_i(5),
        o               => vfat2_7_sbits(5)
    );

    vfat2_sbits_o(7)(5) <= not vfat2_7_sbits(5);

    vfat2_7_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_7_sbits_p_i(6),
        ib              => vfat2_7_sbits_n_i(6),
        o               => vfat2_7_sbits(6)
    );

    vfat2_sbits_o(7)(6) <= not vfat2_7_sbits(6);

    vfat2_7_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_7_sbits_p_i(7),
        ib              => vfat2_7_sbits_n_i(7),
        o               => vfat2_7_sbits(7)
    );

    vfat2_sbits_o(7)(7) <= vfat2_7_sbits(7);

    vfat2_7_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_7_data_out_p_i,
        ib              => vfat2_7_data_out_n_i,
        o               => vfat2_7_data_out
    );

    vfat2_data_out_o(7) <= not vfat2_7_data_out;

    --======================--
    --== VFAT2 6 signals ==--
    --======================--

    vfat2_6_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_6_sbits_p_i(0),
        ib              => vfat2_6_sbits_n_i(0),
        o               => vfat2_6_sbits(0)
    );

    vfat2_sbits_o(6)(0) <= vfat2_6_sbits(0);

    vfat2_6_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_6_sbits_p_i(1),
        ib              => vfat2_6_sbits_n_i(1),
        o               => vfat2_6_sbits(1)
    );

    vfat2_sbits_o(6)(1) <= not vfat2_6_sbits(1);

    vfat2_6_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_6_sbits_p_i(2),
        ib              => vfat2_6_sbits_n_i(2),
        o               => vfat2_6_sbits(2)
    );

    vfat2_sbits_o(6)(2) <= not vfat2_6_sbits(2);

    vfat2_6_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_6_sbits_p_i(3),
        ib              => vfat2_6_sbits_n_i(3),
        o               => vfat2_6_sbits(3)
    );

    vfat2_sbits_o(6)(3) <= not vfat2_6_sbits(3);

    vfat2_6_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_6_sbits_p_i(4),
        ib              => vfat2_6_sbits_n_i(4),
        o               => vfat2_6_sbits(4)
    );

    vfat2_sbits_o(6)(4) <= vfat2_6_sbits(4);

    vfat2_6_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_6_sbits_p_i(5),
        ib              => vfat2_6_sbits_n_i(5),
        o               => vfat2_6_sbits(5)
    );

    vfat2_sbits_o(6)(5) <= vfat2_6_sbits(5);

    vfat2_6_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_6_sbits_p_i(6),
        ib              => vfat2_6_sbits_n_i(6),
        o               => vfat2_6_sbits(6)
    );

    vfat2_sbits_o(6)(6) <= not vfat2_6_sbits(6);

    vfat2_6_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_6_sbits_p_i(7),
        ib              => vfat2_6_sbits_n_i(7),
        o               => vfat2_6_sbits(7)
    );

    vfat2_sbits_o(6)(7) <= not vfat2_6_sbits(7);

    vfat2_6_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_6_data_out_p_i,
        ib              => vfat2_6_data_out_n_i,
        o               => vfat2_6_data_out
    );

    vfat2_data_out_o(6) <= not vfat2_6_data_out;

    --======================--
    --== VFAT2 5 signals ==--
    --======================--

    vfat2_5_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_5_sbits_p_i(0),
        ib              => vfat2_5_sbits_n_i(0),
        o               => vfat2_5_sbits(0)
    );

    vfat2_sbits_o(5)(0) <= vfat2_5_sbits(0);

    vfat2_5_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_5_sbits_p_i(1),
        ib              => vfat2_5_sbits_n_i(1),
        o               => vfat2_5_sbits(1)
    );

    vfat2_sbits_o(5)(1) <= not vfat2_5_sbits(1);

    vfat2_5_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_5_sbits_p_i(2),
        ib              => vfat2_5_sbits_n_i(2),
        o               => vfat2_5_sbits(2)
    );

    vfat2_sbits_o(5)(2) <= not vfat2_5_sbits(2);

    vfat2_5_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_5_sbits_p_i(3),
        ib              => vfat2_5_sbits_n_i(3),
        o               => vfat2_5_sbits(3)
    );

    vfat2_sbits_o(5)(3) <= not vfat2_5_sbits(3);

    vfat2_5_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_5_sbits_p_i(4),
        ib              => vfat2_5_sbits_n_i(4),
        o               => vfat2_5_sbits(4)
    );

    vfat2_sbits_o(5)(4) <= vfat2_5_sbits(4);

    vfat2_5_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_5_sbits_p_i(5),
        ib              => vfat2_5_sbits_n_i(5),
        o               => vfat2_5_sbits(5)
    );

    vfat2_sbits_o(5)(5) <= not vfat2_5_sbits(5);

    vfat2_5_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_5_sbits_p_i(6),
        ib              => vfat2_5_sbits_n_i(6),
        o               => vfat2_5_sbits(6)
    );

    vfat2_sbits_o(5)(6) <= not vfat2_5_sbits(6);

    vfat2_5_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_5_sbits_p_i(7),
        ib              => vfat2_5_sbits_n_i(7),
        o               => vfat2_5_sbits(7)
    );

    vfat2_sbits_o(5)(7) <= vfat2_5_sbits(7);

    vfat2_5_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_5_data_out_p_i,
        ib              => vfat2_5_data_out_n_i,
        o               => vfat2_5_data_out
    );

    vfat2_data_out_o(5) <= not vfat2_5_data_out;

    --======================--
    --== VFAT2 4 signals ==--
    --======================--

    vfat2_4_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_4_sbits_p_i(0),
        ib              => vfat2_4_sbits_n_i(0),
        o               => vfat2_4_sbits(0)
    );

    vfat2_sbits_o(4)(0) <= vfat2_4_sbits(0);

    vfat2_4_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_4_sbits_p_i(1),
        ib              => vfat2_4_sbits_n_i(1),
        o               => vfat2_4_sbits(1)
    );

    vfat2_sbits_o(4)(1) <= vfat2_4_sbits(1);

    vfat2_4_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_4_sbits_p_i(2),
        ib              => vfat2_4_sbits_n_i(2),
        o               => vfat2_4_sbits(2)
    );

    vfat2_sbits_o(4)(2) <= not vfat2_4_sbits(2);

    vfat2_4_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_4_sbits_p_i(3),
        ib              => vfat2_4_sbits_n_i(3),
        o               => vfat2_4_sbits(3)
    );

    vfat2_sbits_o(4)(3) <= vfat2_4_sbits(3);

    vfat2_4_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_4_sbits_p_i(4),
        ib              => vfat2_4_sbits_n_i(4),
        o               => vfat2_4_sbits(4)
    );

    vfat2_sbits_o(4)(4) <= vfat2_4_sbits(4);

    vfat2_4_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_4_sbits_p_i(5),
        ib              => vfat2_4_sbits_n_i(5),
        o               => vfat2_4_sbits(5)
    );

    vfat2_sbits_o(4)(5) <= not vfat2_4_sbits(5);

    vfat2_4_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_4_sbits_p_i(6),
        ib              => vfat2_4_sbits_n_i(6),
        o               => vfat2_4_sbits(6)
    );

    vfat2_sbits_o(4)(6) <= vfat2_4_sbits(6);

    vfat2_4_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_4_sbits_p_i(7),
        ib              => vfat2_4_sbits_n_i(7),
        o               => vfat2_4_sbits(7)
    );

    vfat2_sbits_o(4)(7) <= not vfat2_4_sbits(7);

    vfat2_4_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_4_data_out_p_i,
        ib              => vfat2_4_data_out_n_i,
        o               => vfat2_4_data_out
    );

    vfat2_data_out_o(4) <= vfat2_4_data_out;

    --======================--
    --== VFAT2 3 signals ==--
    --======================--

    vfat2_3_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_3_sbits_p_i(0),
        ib              => vfat2_3_sbits_n_i(0),
        o               => vfat2_3_sbits(0)
    );

    vfat2_sbits_o(3)(0) <= vfat2_3_sbits(0);

    vfat2_3_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_3_sbits_p_i(1),
        ib              => vfat2_3_sbits_n_i(1),
        o               => vfat2_3_sbits(1)
    );

    vfat2_sbits_o(3)(1) <= vfat2_3_sbits(1);

    vfat2_3_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_3_sbits_p_i(2),
        ib              => vfat2_3_sbits_n_i(2),
        o               => vfat2_3_sbits(2)
    );

    vfat2_sbits_o(3)(2) <= not vfat2_3_sbits(2);

    vfat2_3_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_3_sbits_p_i(3),
        ib              => vfat2_3_sbits_n_i(3),
        o               => vfat2_3_sbits(3)
    );

    vfat2_sbits_o(3)(3) <= vfat2_3_sbits(3);

    vfat2_3_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_3_sbits_p_i(4),
        ib              => vfat2_3_sbits_n_i(4),
        o               => vfat2_3_sbits(4)
    );

    vfat2_sbits_o(3)(4) <= vfat2_3_sbits(4);

    vfat2_3_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_3_sbits_p_i(5),
        ib              => vfat2_3_sbits_n_i(5),
        o               => vfat2_3_sbits(5)
    );

    vfat2_sbits_o(3)(5) <= vfat2_3_sbits(5);

    vfat2_3_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_3_sbits_p_i(6),
        ib              => vfat2_3_sbits_n_i(6),
        o               => vfat2_3_sbits(6)
    );

    vfat2_sbits_o(3)(6) <= not vfat2_3_sbits(6);

    vfat2_3_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_3_sbits_p_i(7),
        ib              => vfat2_3_sbits_n_i(7),
        o               => vfat2_3_sbits(7)
    );

    vfat2_sbits_o(3)(7) <= not vfat2_3_sbits(7);

    vfat2_3_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_3_data_out_p_i,
        ib              => vfat2_3_data_out_n_i,
        o               => vfat2_3_data_out
    );

    vfat2_data_out_o(3) <= vfat2_3_data_out;

    --======================--
    --== VFAT2 2 signals ==--
    --======================--

    vfat2_2_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_2_sbits_p_i(0),
        ib              => vfat2_2_sbits_n_i(0),
        o               => vfat2_2_sbits(0)
    );

    vfat2_sbits_o(2)(0) <= not vfat2_2_sbits(0);

    vfat2_2_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_2_sbits_p_i(1),
        ib              => vfat2_2_sbits_n_i(1),
        o               => vfat2_2_sbits(1)
    );

    vfat2_sbits_o(2)(1) <= vfat2_2_sbits(1);

    vfat2_2_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_2_sbits_p_i(2),
        ib              => vfat2_2_sbits_n_i(2),
        o               => vfat2_2_sbits(2)
    );

    vfat2_sbits_o(2)(2) <= not vfat2_2_sbits(2);

    vfat2_2_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_2_sbits_p_i(3),
        ib              => vfat2_2_sbits_n_i(3),
        o               => vfat2_2_sbits(3)
    );

    vfat2_sbits_o(2)(3) <= vfat2_2_sbits(3);

    vfat2_2_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_2_sbits_p_i(4),
        ib              => vfat2_2_sbits_n_i(4),
        o               => vfat2_2_sbits(4)
    );

    vfat2_sbits_o(2)(4) <= vfat2_2_sbits(4);

    vfat2_2_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_2_sbits_p_i(5),
        ib              => vfat2_2_sbits_n_i(5),
        o               => vfat2_2_sbits(5)
    );

    vfat2_sbits_o(2)(5) <= not vfat2_2_sbits(5);

    vfat2_2_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_2_sbits_p_i(6),
        ib              => vfat2_2_sbits_n_i(6),
        o               => vfat2_2_sbits(6)
    );

    vfat2_sbits_o(2)(6) <= vfat2_2_sbits(6);

    vfat2_2_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_2_sbits_p_i(7),
        ib              => vfat2_2_sbits_n_i(7),
        o               => vfat2_2_sbits(7)
    );

    vfat2_sbits_o(2)(7) <= vfat2_2_sbits(7);

    vfat2_2_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_2_data_out_p_i,
        ib              => vfat2_2_data_out_n_i,
        o               => vfat2_2_data_out
    );

    vfat2_data_out_o(2) <= vfat2_2_data_out;

    --======================--
    --== VFAT2 1 signals ==--
    --======================--

    vfat2_1_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_1_sbits_p_i(0),
        ib              => vfat2_1_sbits_n_i(0),
        o               => vfat2_1_sbits(0)
    );

    vfat2_sbits_o(1)(0) <= not vfat2_1_sbits(0);

    vfat2_1_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_1_sbits_p_i(1),
        ib              => vfat2_1_sbits_n_i(1),
        o               => vfat2_1_sbits(1)
    );

    vfat2_sbits_o(1)(1) <= not vfat2_1_sbits(1);

    vfat2_1_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_1_sbits_p_i(2),
        ib              => vfat2_1_sbits_n_i(2),
        o               => vfat2_1_sbits(2)
    );

    vfat2_sbits_o(1)(2) <= not vfat2_1_sbits(2);

    vfat2_1_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_1_sbits_p_i(3),
        ib              => vfat2_1_sbits_n_i(3),
        o               => vfat2_1_sbits(3)
    );

    vfat2_sbits_o(1)(3) <= vfat2_1_sbits(3);

    vfat2_1_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_1_sbits_p_i(4),
        ib              => vfat2_1_sbits_n_i(4),
        o               => vfat2_1_sbits(4)
    );

    vfat2_sbits_o(1)(4) <= not vfat2_1_sbits(4);

    vfat2_1_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_1_sbits_p_i(5),
        ib              => vfat2_1_sbits_n_i(5),
        o               => vfat2_1_sbits(5)
    );

    vfat2_sbits_o(1)(5) <= vfat2_1_sbits(5);

    vfat2_1_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_1_sbits_p_i(6),
        ib              => vfat2_1_sbits_n_i(6),
        o               => vfat2_1_sbits(6)
    );

    vfat2_sbits_o(1)(6) <= vfat2_1_sbits(6);

    vfat2_1_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_1_sbits_p_i(7),
        ib              => vfat2_1_sbits_n_i(7),
        o               => vfat2_1_sbits(7)
    );

    vfat2_sbits_o(1)(7) <= vfat2_1_sbits(7);

    vfat2_1_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_1_data_out_p_i,
        ib              => vfat2_1_data_out_n_i,
        o               => vfat2_1_data_out
    );

    vfat2_data_out_o(1) <= vfat2_1_data_out;

    --======================--
    --== VFAT2 0 signals ==--
    --======================--

    vfat2_0_sbit_0_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_0_sbits_p_i(0),
        ib              => vfat2_0_sbits_n_i(0),
        o               => vfat2_0_sbits(0)
    );

    vfat2_sbits_o(0)(0) <= not vfat2_0_sbits(0);

    vfat2_0_sbit_1_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_0_sbits_p_i(1),
        ib              => vfat2_0_sbits_n_i(1),
        o               => vfat2_0_sbits(1)
    );

    vfat2_sbits_o(0)(1) <= not vfat2_0_sbits(1);

    vfat2_0_sbit_2_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_0_sbits_p_i(2),
        ib              => vfat2_0_sbits_n_i(2),
        o               => vfat2_0_sbits(2)
    );

    vfat2_sbits_o(0)(2) <= vfat2_0_sbits(2);

    vfat2_0_sbit_3_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_0_sbits_p_i(3),
        ib              => vfat2_0_sbits_n_i(3),
        o               => vfat2_0_sbits(3)
    );

    vfat2_sbits_o(0)(3) <= vfat2_0_sbits(3);

    vfat2_0_sbit_4_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_0_sbits_p_i(4),
        ib              => vfat2_0_sbits_n_i(4),
        o               => vfat2_0_sbits(4)
    );

    vfat2_sbits_o(0)(4) <= not vfat2_0_sbits(4);

    vfat2_0_sbit_5_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_0_sbits_p_i(5),
        ib              => vfat2_0_sbits_n_i(5),
        o               => vfat2_0_sbits(5)
    );

    vfat2_sbits_o(0)(5) <= not vfat2_0_sbits(5);

    vfat2_0_sbit_6_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_0_sbits_p_i(6),
        ib              => vfat2_0_sbits_n_i(6),
        o               => vfat2_0_sbits(6)
    );

    vfat2_sbits_o(0)(6) <= not vfat2_0_sbits(6);

    vfat2_0_sbit_7_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_0_sbits_p_i(7),
        ib              => vfat2_0_sbits_n_i(7),
        o               => vfat2_0_sbits(7)
    );

    vfat2_sbits_o(0)(7) <= not vfat2_0_sbits(7);

    vfat2_0_data_out_ibufds : ibufds
    generic map(
        diff_term       => true,
        ibuf_low_pwr    => false,
        iostandard      => "lvds_25"
    )
    port map(
        i               => vfat2_0_data_out_p_i,
        ib              => vfat2_0_data_out_n_i,
        o               => vfat2_0_data_out
    );

    vfat2_data_out_o(0) <= vfat2_0_data_out;
    
end Behavioral;

