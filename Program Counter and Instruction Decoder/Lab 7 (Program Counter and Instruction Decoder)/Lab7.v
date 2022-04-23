module Lab7(PCsrc, clk, rd, rs1, rs2, instr, currentPC);

	input PCsrc;
	input clk;
	output [4:0] rd;
	output [4:0] rs1;
	output [4:0] rs2;
	output [31:0] instr;
	
	output [31:0] currentPC;
	
	wire [31:0] adderOut;
	wire [31:0] nextPC;
	wire [31:0] currentPC;
	wire [31:0] romOut;
	
	
	ProgramCounter PC(.in(nextPC), .clk(clk), .out(currentPC));
	
	ROM instructionMemory(.address(currentPC), .out(romOut), .enable(1'b1));
	
	InstructionDecoder id(romOut, rd, rs1, rs2, instr);
	
	ALU fourAdder(.operand0(currentPC), .operand1(32'd4), .funcSel(3'b000), .out(adderOut));
	
	Mux PCmux(.in0(adderOut), .in1(32'bz), .sel(PCsrc), .out(nextPC));
	

endmodule
