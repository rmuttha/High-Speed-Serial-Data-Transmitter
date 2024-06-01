// Author: Rutuja Muttha

module testbench;

// Declare signals
reg clk, reset_n, data_in;
wire serial_out;

// Instantiate modules
serial_transmitter dut (
    .clk(clk),
    .reset_n(reset_n),
    .data_in(data_in),
    .serial_out(serial_out)
);

clock_generator clk_gen (
    .clk(clk)
);

// Initialize inputs
initial begin
    clk = 1'b0;
    reset_n = 1'b0;
    data_in = 1'b0;
    #100 reset_n = 1'b1; // Release reset after 100 time units
    #100 data_in = 1'b1; // Set data input to '1' after 200 time units
    #100 $finish; // Finish simulation after 300 time units
end

endmodule
