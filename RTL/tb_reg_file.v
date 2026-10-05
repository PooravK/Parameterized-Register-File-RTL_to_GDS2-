`timescale 1ns/1ps

module tb_reg_file;

    parameter data_width = 32;
    parameter registers = 32;
    parameter addr_width = 5;

    reg clk;
    reg rst;
    reg write_en;

    reg[addr_width-1:0] rs1;
    reg[addr_width-1:0] rs2;
    reg [addr_width-1:0] rd;

    reg [data_width-1:0] write_data;

    wire [data_width-1:0] read_data1;
    wire [data_width-1:0] read_data2;

    reg_file # (
        .data_width(data_width),
        .registers(registers),
        .addr_width(addr_width)
    ) dut (
        .clk(clk),
        .rst(rst),
        .write_en(write_en),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .write_data(write_data),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );

    initial begin
        $dumpfile("register_file.vcd");
        $dumpvars(0, tb_reg_file);
    end

    always #5 clk = ~clk;

    initial begin 
        clk = 0;

        write_en = 0;

        rs1 = 0;
        rs2 = 0;
        rd = 0;

        write_data = 0;
    end

    initial begin 
        rst = 0;

        #20;

        rst = 1;

        // TEST 1

        // WRITE
        rd = 5;
        write_data = 32'h12345678;
        write_en = 1;

        #2;
        @(posedge clk);
        #1;

        write_en = 0;

        //READ
        rs1 = 5;
        #1;
        $display("R5 = %h", read_data1);

        // TEST 2

        // WRITE
        rd = 10;
        write_data = 32'hAAAAAAAA;
        write_en = 1;

        #2;
        @(posedge clk);
        #1;

        write_en = 0;

        // READ
        rs2 = 10;
        #1;
        $display("R10 = %h", read_data2);

        // TEST 3

        // WRITE

        rd = 0;
        write_data = 32'hFFFFFFFF;
        write_en = 1;

        #2;
        @(posedge clk);
        #1;

        write_en = 0;

        // READ
        rs1 = 0;
        #1;
        $display("R0 = %h", read_data1);

        // READ
        rs1 = 5;
        rs2 = 10;
        #1;
        $display("%h %h", read_data1, read_data2);

        #20;

        $finish;
    end
endmodule
