`define AND and #20
`define OR or #20
`define XOR xor #20 //????
`define NOT not #10
`define NAND nand #10
`define NOR nor #10

module structAddSub
(
  output sum,
  output carryout,
  input a,
  input b,
  input sub, carryin
); //Add 1 to least significant bit during subtraction
  wire AxorB;
	wire AandB;
	wire AxorBandCarryIn;
  wire bnew;

  `XOR (bnew, b, sub);
	`XOR (AxorB, a, bnew);
	`XOR (sum, AxorB, carryin);
	`AND (AandB, a, bnew);
	`AND (AxorBandCarryIn, AxorB, carryin);
	`OR (carryout, AxorBandCarryIn, AandB);
endmodule
