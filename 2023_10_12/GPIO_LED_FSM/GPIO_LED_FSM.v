module GPIO_LED_FSM(
    input clk, reset,
    output reg [7:0] GPIO_LED
);
    parameter GPIO_LED_0 = 8'b0000_0001; // AG14
    parameter GPIO_LED_1 = 8'b0000_0010; // AF13
    parameter GPIO_LED_2 = 8'b0000_0100; // AE13
    parameter GPIO_LED_3 = 8'b0000_1000; // AJ14
    parameter GPIO_LED_4 = 8'b0001_0000; // AJ15
    parameter GPIO_LED_5 = 8'b0010_0000; // AH13
    parameter GPIO_LED_6 = 8'b0100_0000; // AH14
    parameter GPIO_LED_7 = 8'b1000_0000; // AL12

    reg [2:0] state;
    reg [2:0] nextstate;

    always@(posedge clk or negedge reset) begin
        if(!reset)
            state <= 3'd0;
        else
            state <= nextstate;
    end

    always@(*) begin
        case(state)
        3'd0: nextstate = 3'd1;
        3'd1: nextstate = 3'd2;
        3'd2: nextstate = 3'd3;
        3'd3: nextstate = 3'd4;
        3'd4: nextstate = 3'd5;
        3'd5: nextstate = 3'd6;
        3'd6: nextstate = 3'd7;
        3'd7: nextstate = 3'd0;
        default: nextstate = 3'd0;
        endcase
    end

    always@(*) begin
        case(state)
        3'd0: GPIO_LED = 8'b0000_0001; // AG14
        3'd1: GPIO_LED = 8'b0000_0010; // AF13
        3'd2: GPIO_LED = 8'b0000_0100; // AE13
        3'd3: GPIO_LED = 8'b0000_1000; // AJ14
        3'd4: GPIO_LED = 8'b0001_0000; // AJ15
        3'd5: GPIO_LED = 8'b0010_0000; // AH13
        3'd6: GPIO_LED = 8'b0100_0000; // AH14
        3'd7: GPIO_LED = 8'b1000_0000; // AL12
        default: GPIO_LED = 8'b1111_1111; // all LEDs
        endcase
    end

endmodule