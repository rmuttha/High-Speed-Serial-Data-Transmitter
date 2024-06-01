// Author: Rutuja Muttha

module serial_transmitter(
    input wire clk,             // Clock input
    input wire reset_n,         // Reset input (active low)
    input wire data_in,         // Serial data input
    output reg serial_out       // Serial data output
);

// Internal counter for clock division
reg [7:0] counter = 8'd0;

// Clock division parameter (adjust according to desired baud rate)
parameter DIVIDER = 4'd3;

// Output register for serial data
reg [7:0] shift_reg = 8'd0;

// Shift register control
always @(posedge clk) begin
    if (!reset_n)
        shift_reg <= 8'd0;
    else if (counter == DIVIDER - 1) begin
        shift_reg <= {shift_reg[6:0], data_in};
    end
end

// Serial output generation
always @(posedge clk) begin
    if (!reset_n)
        serial_out <= 1'b0;
    else if (counter == DIVIDER - 1) begin
        serial_out <= shift_reg[7];
        counter <= 8'd0;
    end else begin
        counter <= counter + 1;
    end
end

endmodule
