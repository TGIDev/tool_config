// <description>
always_ff @(posedge clk, negedge rst_n)
begin : always_ff_name
    if (~rst_n) begin
        // reset values
    end
    else begin
        // clocked
    end
end
