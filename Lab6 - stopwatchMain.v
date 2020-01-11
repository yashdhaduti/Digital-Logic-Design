module stopwatchMain(
    input start,
    input clk,
    input reset,
    input [15:8] load,
    input [1:0] mode,
    output [3:0] an,
    output [6:0] sseg,
    output decimal
);
    reg [6:0] in0, in1, in2, in3;
    reg [3:0] disp0 = 0;
    reg [3:0] disp1 = 0;
    reg [3:0] disp2 = 0;
    reg [3:0] disp3 = 0;
    reg running = 0;
    reg resetting = 1;
    reg pause = 1;
    wire slow_clk;
    wire display_clk;
    clkdiv2 c7 (.clk(clk), .reset(reset), .clk_out(display_clk));
    clkdiv c5 (.clk(clk), .reset(reset), .clk_out(slow_clk));
    always @(posedge slow_clk) begin
        if (start && pause) begin
        running = ~running;
        pause = 0;
        resetting = 0;
    end
    if (!start) begin
        pause = 1;
    end
    if (reset) begin
        resetting = 1;
        running = 0;
    end
    // stop at 99.99
    if (mode[1] == 0 && disp0 == 9 && disp1 == 9 && disp2 == 9 && disp3 == 9) begin
        disp0 <= 9;
        disp1 <= 9;
        disp2 <= 9;
        disp3 <= 9;
    end
    // stop at 00.00
    if (mode[1] == 1 && disp0 == 0 && disp1 == 0 && disp2 == 0 && disp3 == 0) begin
        disp0 <= 0;
        disp1 <= 0;
        disp2 <= 0;
        disp3 <= 0;
    end
    // reset
    if (!running && resetting) begin
        if (mode[1:0] == 0) begin
            disp0 <= 0;
            disp1 <= 0;
            disp2 <= 0;
            disp3 <= 0;
        end
        else if (mode[1:0] == 1 || mode[1:0] == 3) begin
            disp0 <= 0;
            disp1 <= 0;
            if(load[11:8] >= 9) disp2 = 9;
            else disp2 = load[11:8];
            if(load[15:12] >= 9) disp3 = 9;
            else disp3 = load[15:12];
        end
        else if (mode[1:0] == 2) begin
            disp0 <= 9;
            disp1 <= 9;
            disp2 <= 9;
            disp3 <= 9;
        end
    end
    //incrementor/decrementor
    else if (running && !resetting) begin
    // mode 00 and mode 01
        if (mode[1] == 0) begin
            disp0 = (disp0 + 1) % 10;
            if (disp0 == 0) begin
                disp1 = (disp1 + 1) % 10;
                if (disp1 == 0) begin
                    disp2 = (disp2 + 1) % 10;
                    if (disp2 == 0) begin
                        disp3 = (disp3 + 1) % 10;
                    end
            end
        end
    end
    // mode 10 and mode 11
    else if (mode[1] == 1) begin
        if (disp0 == 0) begin
            disp0 = 9;
        end
        else begin
            disp0 = disp0 - 1;
        end
        if (disp0 == 9) begin
            if (disp1 == 0) begin
                disp1 = 9;
            end
            else begin
                disp1 = disp1 - 1;
            end
            if (disp1 == 9) begin
                if (disp2 == 0) begin
                    disp2 = 9;
                end
            else begin
                disp2 = disp2 - 1;
            end
            if (disp2 == 9) begin
                if (disp3 == 0) begin
                    disp3 = 9;
                end
            else begin
            disp3 = disp3 - 1;
            end
            end
            end
            end
            end
        end
    end
    //display
    hex2seg(disp0, in0);
    hex2seg(disp1, in1);
    hex2seg(disp2, in2);
    hex2seg(disp3, in3);
    time_mux_state_machine c6(
        .clk(display_clk),
        .reset(reset),
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .an(an),
        .sseg(sseg),
        .decimal(decimal)
    );
endmodule
