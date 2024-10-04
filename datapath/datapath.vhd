-- ARQUITETURA E ORGANIZAÇAO DE COMPUTADORES
-- DANIEL CARDOSO FERNANDES
-- DATAPATH 

library ieee;
use ieee.std_logic_1164.all;

entity datapath is
	generic(N: natural := 8; M: natural := 2);
	port(
		clk, rst, sel: in std_logic;
		wr_acc     : in std_logic;
		op      : in std_logic_vector(M - 1 downto 0);
		operando: in std_logic_vector (N - 1 downto 0);
		CPU_out : out std_logic_vector (N - 1 downto 0)
	);
end entity;

architecture datapathI of datapath is
	component ua
		generic (
			N    : natural := 8
		);
		port (
			f    : in std_logic;
			a, b : in std_logic_vector (N - 1 downto 0);
			s    : out std_logic_vector (N - 1 downto 0)
		);
	end component;
	
	component regN 
		generic (
			N      : natural   := 8;
			EN_cfg : std_logic := '1'
		);
		port (
			d            : in std_logic_vector (N - 1 downto 0);
			clk, en, rst : in std_logic;
			q            : out std_logic_vector (N - 1 downto 0)
		);
	end component;
	
begin

	ua0 : ua
		generic map(
			N => N
		)
		port map(
			f => operador,
			a => operandoA,
			b => operandoB,
			s => saida
		);
		
	regN0 : regN
		generic map(
			N => N,
			EN_cfg => '1'
		)
		port map(
		  d => d,
        clk => clk,
		  en => wr_acc,
		  rst => rst,
		  q => q_reg
		);

end architecture;