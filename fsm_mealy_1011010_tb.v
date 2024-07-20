`timescale 1ns / 1ps
module fsm_mealy_1011010_tb;
	// Inputs
	reg clk,reset,in;
	// Outputs
	wire out;
	// Instantiate the Unit Under Test (UUT)
	fsm_mealy_1011010 uut (.clk(clk),.reset(reset),.in(in),.out(out));
	always forever #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;reset = 0;in = 0;#10;
		in=0;#10; in=1;#10; in=0;#10; in=1;#10; in=1;#10; in=0;#10;
		in=1;#10; in=0;#10; in=0;#10; in=0;#10; in=1;#10; in=1;#10;
		reset = 1; //enable the reset
		in=0;#10; in=0;#10; 
		reset =0 ; #10; // diable the reset 
		in=0;#10; in=1;#10; in=0;#10; in=1;#10; in=1;#10; in=0;#10;
		in=1;#10; in=0;#10; in=1;#10; in=1;#10; in=0;#10; in=1;#10; in=0;#10;
		$finish();
        
		// Add stimulus here

	end
      
endmodule
