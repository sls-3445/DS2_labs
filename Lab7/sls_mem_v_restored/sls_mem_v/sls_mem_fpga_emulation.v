module sls_mem_fpga_emulation (CLOCK_50, pb, leds);
// These are the user I/O-Ps of the DE0-Nano board.
// Two push-buttons (pb), four switches (sw) and 
// eight LEDs. (C) Dorin Patru October 2021.
input CLOCK_50, pb;
output [7:0] leds;
wire Cnt_EN, LD_EN_upcnt, LD_EN_H, LD_EN_L, LD_EN_M, WR_EN;
wire [7:0] Q_out;
reg [25:0] intclockcnt = 26'd0;
reg intClock = 1'b0;
// Instantiate the fml_mem_v and fml_mem_cu_v modules.
// Adjust the mem_cu_v parameter n to the lenght of your 
// character string.
assign leds = Q_out;
sls_mem_v mut	
			(.Din_upcnt (8'd255), .Reset (~pb), .Clock (intClock), 
			.Cnt_EN (Cnt_EN), .LD_EN_upcnt (LD_EN_upcnt), 
			.LD_EN_H (LD_EN_H), .LD_EN_L (LD_EN_L), 
			.LD_EN_M (LD_EN_M), .WR_EN (WR_EN), 
			.Q_out (Q_out));
sls_mem_cu_v #(34) mem_cu
			(.Reset(~pb), .Clock(intClock), 
			.Cnt_EN (Cnt_EN), .LD_EN_upcnt (LD_EN_upcnt), 
			.LD_EN_H (LD_EN_H), .LD_EN_L (LD_EN_L), 
			.LD_EN_M (LD_EN_M), .WR_EN (WR_EN));
// Divide the onboard 50 MHz CLOCK_50 so that the 
// period of intClock is 1 second; in this way the 
// displayed ASCII characters will stay on for a second;
// you can divide more to display each character longer.
always @ (posedge CLOCK_50) begin
	if (intclockcnt < 26'd25000000) begin
		intclockcnt = intclockcnt + 1'b1; intClock = intClock; end
	else begin intclockcnt = 26'd0; intClock = ~intClock; end
end 
endmodule

