module mux_2_to_1(SW, LEDR); // create module mux_2_to_1

input [9:0] SW; //input declarations: 10 switches
output [9:0] LEDR; //output declarations: 10 red leds

assign LEDR[8:6] = (SW[9]==0) ? SW[2:0] : SW[5:3]; // multiplex 3 pairs of inputs
assign LEDR[2:0] = SW[2:0]; 
assign LEDR[5:3] = SW[5:3];

endmodule