module natural_log(
    input [7:0] v,
    output reg [7:0] n_var
    );
    
    //internal register
    reg [15:0] log_val;
    reg [7:0] i;
    
    always @(v) 
    begin 
       if(v==0)
    begin 
        n_var = 0; //ln(0) is undefined, so for simplycity we assign zero.
    end 
    else 
       begin 
        log_val = 0; 
         
     for (i = 0; i < 8; i = i + 1)
      begin
            if ((1<<i) > v) 
            begin
                log_val = i - 1; 
                i=8;//force the loop to exit because break statement will not work.
            end  
       end 
     n_var = log_val[7:0];
   end 
  end                    
    
endmodule
