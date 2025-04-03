module sls_mem_v (Clock, Cnt_EN, Din_upcnt, LD_EN_upcnt, Reset,
						LD_EN_L, LD_EN_H, LD_EN_M, WR_EN, Q_out);
						

input Clock, Cnt_EN, LD_EN_upcnt, Reset;
input LD_EN_L, LD_EN_H, LD_EN_M, WR_EN;
input [7:0] Din_upcnt;
output [7:0] Q_out;

wire [7:0] q1;
wire [3:0] q2, q3, q4;

sls_8bit_upcnt_v my_cnt (.Clock(Clock), .Cnt_EN(Cnt_EN), .D(Din_upcnt), 
								 .LD_EN(LD_EN_upcnt), .Reset(Reset), .Q(q1));
								 
sls_rom_v 		  my_rom (.address(q1), .clock(Clock), .q(q2));

sls_4bit_reg_v   my_reg (.Clock(Clock), .D(q2), .LD_EN(LD_EN_M), .Reset(Reset), .Q(q3));

sls_ram_v		  my_ram (.address(q1), .clock(Clock), .data(q3), .wren(WR_EN), .q(q4));

sls_4bit_reg_v	  my_l 	(.Clock(Clock), .D(q4), .LD_EN(LD_EN_L), .Reset(Reset), .Q(Q_out[3:0]));

sls_4bit_reg_v   my_h 	(.Clock(Clock), .D(q4), .LD_EN(LD_EN_H), .Reset(Reset), .Q(Q_out[7:4]));

endmodule