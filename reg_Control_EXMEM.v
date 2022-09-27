module reg_Control_EXMEM ( clk, rst, en_reg, d_in1, d_in2, d_in3, d_in4, d_in5, d_in6, d_out1, d_out2, d_out3, d_out4, d_out5, d_out6 );
    input clk, rst, en_reg;
    input d_in1, d_in2, d_in3, d_in4, d_in5, d_in6;
    output reg d_out1, d_out2, d_out3, d_out4, d_out5, d_out6; 

    always @( posedge clk ) begin
        if ( rst ) begin
			d_out1 <= 1'b0;
			d_out2 <= 1'b0;
			d_out3 <= 1'b0;
			d_out4 <= 1'b0;
			d_out5 <= 1'b0;
			d_out6 <= 1'b0;
		end	
        else if ( en_reg ) begin
			d_out1 <= d_in1;
			d_out2 <= d_in2;
			d_out3 <= d_in3;
			d_out4 <= d_in4;
			d_out5 <= d_in5;
			d_out6 <= d_in6;
		end	
    end

endmodule