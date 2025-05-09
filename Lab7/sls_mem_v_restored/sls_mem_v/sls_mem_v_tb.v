`timescale 1 ps / 1 ps

module sls_mem_v_tb;

reg [7:0] Din_upcnt_tb;
reg Reset_tb, Clock_tb, Cnt_EN_tb, 
	LD_EN_upcnt_tb, LD_EN_H_tb, LD_EN_L_tb, LD_EN_M_tb, WR_EN_tb;
wire [7:0] Q_out_tb;
integer i;

sls_mem_v dut (.Din_upcnt(Din_upcnt_tb), .Reset(Reset_tb), .Clock(Clock_tb), .Cnt_EN(Cnt_EN_tb), 
		.LD_EN_upcnt(LD_EN_upcnt_tb), .LD_EN_H(LD_EN_H_tb), .LD_EN_L(LD_EN_L_tb), 
		.LD_EN_M(LD_EN_M_tb), .WR_EN(WR_EN_tb), .Q_out(Q_out_tb));

// In this testbench we use two tasks: one that tests the load function
// and one that tests the count function

initial begin
// Reset all registers
	Din_upcnt_tb = 0;
	Reset_tb = 1;
	Cnt_EN_tb = 0;
	LD_EN_upcnt_tb = 0;
	LD_EN_H_tb = 0;
	LD_EN_L_tb = 0;
	LD_EN_M_tb = 0;
	WR_EN_tb = 0;
	Clock_tb = 0;
	#20000
	Clock_tb = 1;
	#20000
	Reset_tb = 0;
// Load FF so that the address count starts with 0
	LD_EN_upcnt_tb = 1;
	Din_upcnt_tb = 255;
	Clock_tb = 0;
	#20000
	Clock_tb = 1;
	#20000
	LD_EN_upcnt_tb = 0;
// Read from ROM into the RAM via the M register
	Cnt_EN_tb = 1;
	LD_EN_M_tb = 1;
	WR_EN_tb = 1;
	for (i=0; i<40; i=i+1) begin
				Clock_tb = 0;
				#20000
				Clock_tb = 1;
				#20000; 
	end
// Disable all previous control signals and set the counter back to FF
	Cnt_EN_tb = 0;
	LD_EN_M_tb = 0;
	WR_EN_tb = 0;
	LD_EN_upcnt_tb = 1;
	Din_upcnt_tb = 255;
	Clock_tb = 0;
	#20000
	Clock_tb = 1;
	#20000
	LD_EN_upcnt_tb = 0;
// Read the RAM into the H and L registers
// In this case we use a task to enable LD_EN_H and LD_EN_L
// in alternate cycles
	Cnt_EN_tb = 1;	
	for (i=0; i<20; i=i+1) begin
		read_ram(1, 0);
		read_ram(0, 1);
		end
// Disable all control signals and run another clock cycle
	Cnt_EN_tb = 1;	
	LD_EN_H_tb = 0;
	LD_EN_L_tb = 0;
	Clock_tb = 0;
	#20000
	Clock_tb = 1;
	#20000; 
end

task read_ram;
// input values passed to the task
	input LD_EN_H_int, LD_EN_L_int;
	begin
		LD_EN_H_tb = LD_EN_H_int;
		LD_EN_L_tb = LD_EN_L_int;
		Clock_tb = 0;
		#20000
		Clock_tb = 1;
		#20000;
	end
endtask

endmodule
