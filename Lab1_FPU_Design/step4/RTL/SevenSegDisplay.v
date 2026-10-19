module SevenSegDisplay (
  input clk, reset, 
  input [7:0] DataIn,
  output reg an,
  output reg a, b, c, d, e, f, g
);

  reg [3:0] char;
  reg [4:0] counter;
  reg switch; 
  reg FSM_state, nxtFSM_state;
 
  always@(posedge clk or posedge reset) begin
    if(reset) begin 
      counter <= 5'b0;
      switch <= 1'b0;
    end
    else begin
      if(counter == 5'b11110)  //when changing to 5'b11111, set switch 
        switch <= 1'b1;
      else if(switch)
        switch <= 1'b0;

      counter <= counter + 1'b1;
    end
  end

  always@(posedge clk or posedge reset) begin
    if(reset) begin
      FSM_state <= 1'b0;
    end
    else begin
      FSM_state <= nxtFSM_state;
    end
  end

  always@(FSM_state or switch) begin
    case(FSM_state) 
      1'b0: begin
        an = 1'b1;
        char = DataIn[7:4];
        if(switch)
          nxtFSM_state = 1'b1;
        else 
          nxtFSM_state = 1'b0;
      end
      1'b1: begin
        an = 1'b0;
        char = DataIn[3:0];
        if(switch)
          nxtFSM_state = 1'b0;
        else 
          nxtFSM_state = 1'b1;
      end   
    endcase
  end

  always@(char) begin
    case (char)
      4'b0000: {a, b, c, d, e, f, g} = 7'b1111110; //0
      4'b0001: {a, b, c, d, e, f, g} = 7'b0110000; //1
      4'b0010: {a, b, c, d, e, f, g} = 7'b1101101; //2
      4'b0011: {a, b, c, d, e, f, g} = 7'b1111001; //3
      4'b0100: {a, b, c, d, e, f, g} = 7'b0110011; //4
      4'b0101: {a, b, c, d, e, f, g} = 7'b1011011; //5 
      4'b0110: {a, b, c, d, e, f, g} = 7'b1011111; //6
      4'b0111: {a, b, c, d, e, f, g} = 7'b1110000; //7
      4'b1000: {a, b, c, d, e, f, g} = 7'b1111111; //8 
      4'b1001: {a, b, c, d, e, f, g} = 7'b1111011; //9
      4'b1010: {a, b, c, d, e, f, g} = 7'b1110111; //A
      4'b1011: {a, b, c, d, e, f, g} = 7'b0011111; //b
      4'b1100: {a, b, c, d, e, f, g} = 7'b0001101; //c
      4'b1101: {a, b, c, d, e, f, g} = 7'b0111101; //d
      4'b1110: {a, b, c, d, e, f, g} = 7'b1001111; //E
      4'b1111: {a, b, c, d, e, f, g} = 7'b1000111; //F
    endcase   
  end
endmodule