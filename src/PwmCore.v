// Generator : SpinalHDL v1.6.0    git head : 73c8d8e2b86b45646e9d0b2e729291f2b65e6be3
// Component : PwmCore
// Git hash  : cd62fdb8358e8ec537d11fe8a8e31e6605dea0d4



module PwmCore (
  input      [7:0]    io_level,
  output              io_pwm,
  input               clk,
  input               reset
);
  wire       [7:0]    _zz__zz_io_pwm_1;
  wire       [0:0]    _zz__zz_io_pwm_1_1;
  wire                when_Utils_l357;
  reg                 _zz_io_pwm;
  reg        [7:0]    _zz_io_pwm_1;
  reg        [7:0]    _zz_io_pwm_2;

  assign _zz__zz_io_pwm_1_1 = _zz_io_pwm;
  assign _zz__zz_io_pwm_1 = {7'd0, _zz__zz_io_pwm_1_1};
  assign when_Utils_l357 = 1'b1;
  always @(*) begin
    _zz_io_pwm = 1'b0;
    if(when_Utils_l357) begin
      _zz_io_pwm = 1'b1;
    end
  end

  always @(*) begin
    _zz_io_pwm_1 = (_zz_io_pwm_2 + _zz__zz_io_pwm_1);
    if(1'b0) begin
      _zz_io_pwm_1 = 8'h0;
    end
  end

  assign io_pwm = (io_level < _zz_io_pwm_2);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      _zz_io_pwm_2 <= 8'h0;
    end else begin
      _zz_io_pwm_2 <= _zz_io_pwm_1;
    end
  end


endmodule
