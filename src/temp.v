//module sram_17_1024_freepdk45(
//// Port 0: RW
//    clock,csb0,web0,addr0,din0,dout0
//  );
//  parameter DATA_WIDTH = 17;
//  parameter ADDR_WIDTH = 10;
//  parameter RAM_DEPTH = 1 << ADDR_WIDTH;
//  // FIXME: This delay is arbitrary.
//  parameter DELAY = 3 ;
//  parameter VERBOSE = 1 ; //Set to 0 to only display warnings
//  parameter T_HOLD = 1 ; //Delay to hold dout value after posedge. Value is arbitrary
//
//
//  input  clock; // clock
//  input  csb0; // active low chip select
//  input  web0; // active low write control
//  input [ADDR_WIDTH-1:0]  addr0;
//  input [DATA_WIDTH-1:0]  din0;
//  output [DATA_WIDTH-1:0] dout0;
//
////  reg [DATA_WIDTH-1:0]    mem [0:RAM_DEPTH-1];
////
////  reg  csb0_reg;
////  reg  web0_reg;
////  reg [ADDR_WIDTH-1:0]  addr0_reg;
////  reg [DATA_WIDTH-1:0]  din0_reg;
////  reg [DATA_WIDTH-1:0]  dout0;
////
////  // Memory Write Block Port 0
////  // Write Operation : When web0 = 0, csb0 = 0
////  always @ (negedge clock)
////  begin : MEM_WRITE0
////    if ( !csb0_reg && !web0_reg ) begin
////        mem[addr0_reg][11:0] = din0_reg[11:0];
////    end
////  end
////
////  // Memory Read Block Port 0
////  // Read Operation : When web0 = 1, csb0 = 0
////  always @ (negedge clock)
////  begin : MEM_READ0
////    if (!csb0_reg && web0_reg)
////       dout0 <= #(DELAY) mem[addr0_reg];
////  end
//
//
//endmodule

module temp_top(
    clock,csb0,web0,addr0,din0,dout0
);
  parameter DATA_WIDTH = 17;
  parameter ADDR_WIDTH = 10;
  parameter RAM_DEPTH = 1 << ADDR_WIDTH;
  // FIXME: This delay is arbitrary.
  parameter DELAY = 3 ;
  parameter VERBOSE = 1 ; //Set to 0 to only display warnings
  parameter T_HOLD = 1 ; //Delay to hold dout value after posedge. Value is arbitrary

  input  clock; // clock
  input  csb0; // active low chip select
  input  web0; // active low write control
  input [ADDR_WIDTH-1:0]  addr0;
  input [DATA_WIDTH-1:0]  din0;
  output [DATA_WIDTH-1:0] dout0;

  sram_17_1024_freepdk45 sram(
    .clock(clock),
    .csb0(csb0),
    .web0(web0),
    .addr0(addr0),
    .din0(din0),
    .dout0(dout0)
  );

endmodule
