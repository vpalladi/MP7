--! Using the IEEE Library
library IEEE;
--! Using STD_LOGIC
use IEEE.STD_LOGIC_1164.all;
--! Using STD_LOGIC_UNSIGNED
use IEEE.std_logic_unsigned.all;
--! Using NUMERIC TYPES
use IEEE.NUMERIC_STD.all;

--! Using the Calo-L2 "mp7_data" data-types
use work.mp7_data_types.all;

--! hgc data types
--use work.hgc_data_types.all;

--! Using IPbus
use work.ipbus.all;
--! Using the Calo-L2 algorithm configuration bus
--USE work.FunkyMiniBus.ALL;


-- I/O
use IEEE.STD_LOGIC_TEXTIO.all;
use STD.TEXTIO.all;


--! @brief An entity providing a MainProcessorTop
--! @details Detailed description
entity MainProcessorTop is
  generic(
--    linkId    : natural := 0;
--    nClusters : natural := 56
    nClusters : natural := 6;
    nRows     : natural := 5;
    nColumns  : natural := 5;
    nLinks    : natural := 72
    );
  port(
    clk       : in  std_logic;                  --! The algorithm clock
    linksIn   : in  ldata(71 downto 0) := (others => LWORD_NULL);
    linksOut  : out ldata(71 downto 0) := (others => LWORD_NULL);
-- Configuration
    ipbus_clk : in  std_logic          := '0';  --! The IPbus clock
    ipbus_rst : in  std_logic          := '0';
    ipbus_in  : in  ipb_wbus           := IPB_WBUS_NULL;
    ipbus_out : out ipb_rbus           := IPB_RBUS_NULL
-- Testbench Outputs    
    );
end MainProcessorTop;


architecture behavioral of MainProcessorTop is

--  type hgcFlaggedWord_array is array (natural range <>) of hgcFlaggedWord;
  
--  signal thr : std_logic_vector (7 downto 0) := "00000101";
--  signal clu_flaggedDataOut : hgcFlaggedData(nLinks-1 downto 0);
  
begin

  linksOut <= linksIn;
  
end architecture behavioral;