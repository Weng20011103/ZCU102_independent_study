module ADC_control(
    input clk_100M,     // clk is 100MHz, 10ns
    input Reset,        // Reset is low trigger
    input EOC_18,       // Pin8
    input CONVST_in,
    input PD_in,
    input [7:0] DB_in,
    output CONVST_18,   // Pin4
    output RD_18,       // Pin6
    output PD_18,       // Pin9
    output reg [7:0] DB_out
);

    // 當 Reset == 1'b0 時，CONVST_18 輸出 1.8 V (logic 1)。
    // 否則 CONVST_18 會等於 CONVST_in。
    // CONVST_18 從 logic 1 拉到 logic 0 代表 ADC 需要進行電壓的取樣和轉換。
    assign CONVST_18 = (Reset == 1'b0) ? 1'b1 : CONVST_in;

    // 當 Reset == 1'b0 時，PD_18 輸出 0 V (logic 0)。
    // 否則 PD_18 會等於 PD_in。
    // 此訊號在 ADC 的電源供應穩定後從 logic 0 拉到 logic 1。
    assign PD_18 = (Reset == 1'b0) ? 1'b0 : PD_in;

    reg [3:0] state;
    reg [3:0] nextstate;

    always@(posedge clk_100M or negedge Reset) begin
        if(!Reset)
            state <= 4'd0;
        else
            state <= nextstate;
    end

    // 4'd0 is 0ns, 4'd7 is 70ns, 
    always@(*) begin
        case(state)
            4'd0:begin  
                if(!EOC_18)
                    nextstate = 4'd1;
                else
                    nextstate = 4'd0;
            end
            4'd15: nextstate = 4'd0;
            default: nextstate = state + 1'd1;
        endcase
    end

    // RD_18 從 logic 1 拉低到 logic 0 時 ADC 在一段時間後才會把轉換的數據呈現在 Pin 腳上。
    assign RD_18 = (state >= 4'd3 && state <= 4'd8) ? 1'b0 : 1'b1;

    // 在 RD_18 從 logic 1 拉低到 logic 0 後 20 ns 再接受 DB 腳上的數據。
    // assign DB7_out = (state >= 4'd5 && state <= 4'd7) ? DB7_in : 1'b0;
    // assign DB6_out = (state >= 4'd5 && state <= 4'd7) ? DB6_in : 1'b0;
    // assign DB5_out = (state >= 4'd5 && state <= 4'd7) ? DB5_in : 1'b0;
    // assign DB4_out = (state >= 4'd5 && state <= 4'd7) ? DB4_in : 1'b0;
    // assign DB3_out = (state >= 4'd5 && state <= 4'd7) ? DB3_in : 1'b0;
    // assign DB2_out = (state >= 4'd5 && state <= 4'd7) ? DB2_in : 1'b0;
    // assign DB1_out = (state >= 4'd5 && state <= 4'd7) ? DB1_in : 1'b0;
    // assign DB0_out = (state >= 4'd5 && state <= 4'd7) ? DB0_in : 1'b0;

    always@(posedge clk_100M or negedge reset ) begin
        if(!Reset)
            DB_out <= 8'd11;
        else begin
            if(!RD_18)
                DB_out <= DB_in;
            else
                DB_out <= DB_in;
        end
    end

endmodule