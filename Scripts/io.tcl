editPin \
	-side TOP \
	-layer Metal3 \
	-fixedPin 1 \
	-spreadType CENTER \
	-spacing 2 \
	-pin {write_data[31] write_data[30] write_data[29] write_data[28] write_data[27] write_data[26] write_data[25] write_data[24] write_data[23] write_data[22] write_data[21] write_data[20] write_data[19] write_data[18] write_data[17] write_data[16] write_data[15] write_data[14] write_data[13] write_data[12] write_data[11] write_data[10] write_data[9] write_data[8] write_data[7] write_data[6] write_data[5] write_data[4] write_data[3] write_data[2] write_data[1] write_data[0]}

editPin -side BOTTOM -layer M3 -fixedPin 1 -spreadType CENTER -spacing 2 -pin {{read_data1[31]} {read_data1[30]} {read_data1[29]} {read_data1[28]} {read_data1[27]} {read_data1[26]} {read_data1[25]} {read_data1[24]} {read_data1[23]} {read_data1[22]} {read_data1[21]} {read_data1[20]} {read_data1[19]} {read_data1[18]} {read_data1[17]} {read_data1[16]} {read_data1[15]} {read_data1[14]} {read_data1[13]} {read_data1[12]} {read_data1[11]} {read_data1[10]} {read_data1[9]} {read_data1[8]} {read_data1[7]} {read_data1[6]} {read_data1[5]} {read_data1[4]} {read_data1[3]} {read_data1[2]} {read_data1[1]} {read_data1[0]}}

editPin -side RIGHT -layer M3 -fixedPin 1 -spreadType CENTER -spacing 2 -pin {{read_data2[31]} {read_data2[30]} {read_data2[29]} {read_data2[28]} {read_data2[27]} {read_data2[26]} {read_data2[25]} {read_data2[24]} {read_data2[23]} {read_data2[22]} {read_data2[21]} {read_data2[20]} {read_data2[19]} {read_data2[18]} {read_data2[17]} {read_data2[16]} {read_data2[15]} {read_data2[14]} {read_data2[13]} {read_data2[12]} {read_data2[11]} {read_data2[10]} {read_data2[9]} {read_data2[8]} {read_data2[7]} {read_data2[6]} {read_data2[5]} {read_data2[4]} {read_data2[3]} {read_data2[2]} {read_data2[1]} {read_data2[0]}}

editPin -side LEFT -layer M3 -fixedPin 1 -spreadType CENTER -spacing 2 -pin {clk rst write_en {rs1[4]} {rs1[3]} {rs1[2]} {rs1[1]} {rs1[0]} {rs2[4]} {rs2[3]} {rs2[2]} {rs2[1]} {rs2[0]} {rd[4]} {rd[3]} {rd[2]} {rd[1]} {rd[0]}}
