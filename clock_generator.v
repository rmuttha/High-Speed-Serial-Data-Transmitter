// Author: Rutuja Muttha

module clock_generator(
    output reg clk       // Clock output
);

// Clock parameters (adjust for desired frequency)
parameter PERIOD = 10; // Clock period in time units

// Clock generation
always #((PERIOD/2)) begin
    clk <= ~clk;
end

endmodule
