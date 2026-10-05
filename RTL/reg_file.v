module reg_file #(
        parameter data_width = 32,
        parameter registers = 32,
        parameter addr_width = 5
    )
    (
        input clk, rst, write_en,
        input [addr_width-1:0] rs1, rs2, rd,
        input [data_width-1:0] write_data,
        output [data_width-1:0] read_data1,
        output [data_width-1:0] read_data2
    );

    reg [data_width-1:0] REG [0:registers-1];

    integer i;

    always @(posedge clk)begin
        if (!rst) begin
            REG[0] <= 0;
            for (i = 1; i < registers; i = i + 1)
                REG[i] <= 0;
        end else begin
            REG[0] <= 0;
            if (write_en && rd != 0)
                REG[rd] <= write_data;
        end
    end

    assign read_data1 = REG[rs1];
    assign read_data2 = REG[rs2];
endmodule
