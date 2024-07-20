`timescale 1ns / 1ps
//fsm_sequence_detector 1011010 (overlapping method)
module fsm_mealy_1011010(input clk,reset,in,output reg out);
	reg [2:0] state;
	parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6;
	//*******s0=s0;s1=s1;s10=s2;s101=s3;s1011=s4;s10110=s5;s101101=s6;*****//
	always@(posedge clk or posedge reset) begin
		if(reset) begin
			state <= s0;
			out <= 0;
		end
		else begin
			case (state)
				s0: begin
					state <= in?s1:s0;
					out <= 0;
				end
				s1: begin 
					state <= in?s1:s2;
					out <= 0;
				end
				s2: begin 
					state <= in?s3:s0;
					out <= 0;
				end
				s3 : begin
					state <= in?s4:s2;
					out <= 0;
				end
				s4 : begin 
					state <= in?s1:s5;
					out <= 0;
				end
				s5 : begin
					state <= in?s6:s0;
					out <= 0;
				end
				s6 : begin
					state <= in?s4:s2;
					out <= in?0:1;
				end
				default : begin
					state <= s0;
					out <= 0;
				end
			endcase
		end
	end
endmodule
