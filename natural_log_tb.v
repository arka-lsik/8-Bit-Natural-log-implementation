module natural_log_tb;
         reg [7:0]v;
         wire [7:0] n_var;
         
     natural_log DUT(.v(v),.n_var(n_var));
     
     initial
       begin
       
       // Apply test vectors
        #10 v = 8'd1;   // ln(1)
        #10 v = 8'd2;   // ln(2)
        #10 v = 8'd4;   // ln(4)
        #10 v = 8'd8;   // ln(8)
        #10 v = 8'd16;  // ln(16)
        #10 v = 8'd32;  // ln(32)
        #10 v = 8'd64;  // ln(64)
        #10 v = 8'd128; // ln(128)
        #10 v = 8'd255; // ln(255)
        
        #10 $finish;
      end
     
     initial
      begin
       $monitor($time, "v=%d, n_var = %d", v,n_var);       
      end                   
endmodule
