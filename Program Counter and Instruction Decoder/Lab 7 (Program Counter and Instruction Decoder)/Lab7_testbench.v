module Lab7_testbench();

// Clock @10ps
	reg clk = 0;
	always
		#5 clk <= ~clk;
		
// Lab7 Testbench

	reg PCsrc;
	
	wire [4:0] rd;
	wire [4:0] rs1;
	wire [4:0] rs2;
	wire [31:0] instr;
	
	wire [31:0] currentPC;
	
	Lab7 DUT(PCsrc, clk, rd, rs1, rs2, instr, currentPC);
		
	initial begin
		PCsrc <= 0;
	end
		
	initial begin
		#45 $stop;
	end
	


// Program Counter testbench (working)
/*
	wire [31:0] in;
	wire [31:0] out;

	ProgramCounter DUT(in, clk, out);
	
	assign in = out + 4;

	initial
		#80 $stop;
*/


// ALU Testbench (working)
/*
	reg [31:0] operand0;
	wire [31:0] out;

	ALU DUT(operand0, 32'd4, 3'b000, out);
	
	initial begin
		operand0 = 1;
		#10 operand0 = 2;
		#10 operand0 = 3;
		#10 $stop;
	end
*/


// Mux Testbench (working)
/*
	reg [31:0] in0;
	reg [31:0] in1;
	reg sel;
	wire [31:0] out;
	
	Mux DUT(in0, in1, sel, out);
	
	initial begin
		in0 <= 5;
		in1 <= 88;
		sel <= 0;
		#10 sel = 1;
		#10 $stop;
	end
*/
	
endmodule
