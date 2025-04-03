module sls_mem_cu_v (Reset, Clock, Cnt_EN, 
		LD_EN_upcnt, LD_EN_H, LD_EN_L, LD_EN_M, WR_EN);
// This module generates the necessary control signal sequence 
// to run your fml_mem_v module on the FPGA.
// As you will recognize later, it is implemented using a FSM
// (c) Dorin Patru October 2021
input Reset, Clock;
output reg Cnt_EN, LD_EN_upcnt, LD_EN_H, LD_EN_L, LD_EN_M, WR_EN;
reg [5:0] intcnt;
reg [2:0] state;
parameter n = 34; // Adjust as necessary to cover the length
						// of your ASCII string

always @ (posedge Clock)
begin 
	if (Reset == 1'b1) begin
		Cnt_EN = 1'b0; LD_EN_upcnt = 1'b0; LD_EN_H = 1'b0; 
		LD_EN_L = 1'b0; LD_EN_M = 1'b0; WR_EN = 1'b0;
		intcnt = 6'd00; state = 3'd0; end
	else if (state == 3'd0) begin
		Cnt_EN = 1'b0; LD_EN_upcnt = 1'b0; LD_EN_H = 1'b0; 
		LD_EN_L = 1'b0; LD_EN_M = 1'b0; WR_EN = 1'b0;
		intcnt = 6'd00; state = 3'd1; end
	else if (state == 3'd1) begin
		Cnt_EN = 1'b0; LD_EN_upcnt = 1'b1; LD_EN_H = 1'b0; 
		LD_EN_L = 1'b0; LD_EN_M = 1'b0; WR_EN = 1'b0;
		intcnt = 6'd00; state = 3'd2; end
	else if (state == 3'd2) begin
		Cnt_EN = 1'b1; LD_EN_upcnt = 1'b0; LD_EN_H = 1'b0; 
		LD_EN_L = 1'b0; LD_EN_M = 1'b1; WR_EN = 1'b1;
		if (intcnt > n) begin intcnt = 6'd00; state = 3'd3; end
		else begin intcnt = intcnt + 1'b1; state = 3'd2; end end
	else if (state == 3'd3) begin
		Cnt_EN = 1'b0; LD_EN_upcnt = 1'b1; LD_EN_H = 1'b0; 
		LD_EN_L = 1'b0; LD_EN_M = 1'b0; WR_EN = 1'b0;
		intcnt = 6'd00; state = 3'd4; end
	else if (state == 3'd4) begin
		Cnt_EN = 1'b1; LD_EN_upcnt = 1'b0; LD_EN_H = 1'b1; 
		LD_EN_L = 1'b0; LD_EN_M = 1'b0; WR_EN = 1'b0; 
		intcnt = intcnt; state = 3'd5; end
	else if (state == 3'd5) begin
		Cnt_EN = 1'b1; LD_EN_upcnt = 1'b0; LD_EN_H = 1'b0; 
		LD_EN_L = 1'b1; LD_EN_M = 1'b0; WR_EN = 1'b0;
		if (intcnt > (n/2)) begin intcnt = 6'd00; state = 3'd0; end
		else begin intcnt = intcnt + 1'b1; state = 3'd4; end end
end
endmodule

	