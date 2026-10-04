module crc (clk,
    din,
    en,
    rst,
    crc_out);
 input clk;
 input din;
 input en;
 input rst;
 output [14:0] crc_out;

 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire [14:0] _000_;
 wire [14:0] crc;

 INVR01 _053_ (.OUT1(_001_),
    .IN1(en));
 NOR200 _054_ (.OUT1(_002_),
    .IN1(en),
    .IN2(crc[1]));
 NOR200 _055_ (.OUT1(_003_),
    .IN1(crc[0]),
    .IN2(_001_));
 NOR300 _056_ (.OUT1(_000_[1]),
    .IN1(rst),
    .IN2(_002_),
    .IN3(_003_));
 XOR201 _057_ (.OUT1(_004_),
    .IN1(crc[14]),
    .IN2(din));
 NOR200 _058_ (.OUT1(_005_),
    .IN1(_001_),
    .IN2(_004_));
 NOR200 _059_ (.OUT1(_006_),
    .IN1(crc[0]),
    .IN2(en));
 NOR300 _060_ (.OUT1(_000_[0]),
    .IN1(rst),
    .IN2(_005_),
    .IN3(_006_));
 NOR200 _061_ (.OUT1(_007_),
    .IN1(en),
    .IN2(crc[2]));
 NOR200 _062_ (.OUT1(_008_),
    .IN1(_001_),
    .IN2(crc[1]));
 NOR300 _063_ (.OUT1(_000_[2]),
    .IN1(rst),
    .IN2(_007_),
    .IN3(_008_));
 XNR201 _064_ (.OUT1(_009_),
    .IN1(crc[2]),
    .IN2(_004_));
 NOR200 _065_ (.OUT1(_010_),
    .IN1(en),
    .IN2(crc[3]));
 OR2101 _066_ (.OUT1(_011_),
    .IN1(rst),
    .IN2(_010_));
 ADNR01 _067_ (.A(en),
    .B(_009_),
    .C(_011_),
    .OUT1(_000_[3]));
 XNR201 _068_ (.OUT1(_012_),
    .IN1(crc[3]),
    .IN2(_004_));
 NOR200 _069_ (.OUT1(_013_),
    .IN1(en),
    .IN2(crc[4]));
 OR2101 _070_ (.OUT1(_014_),
    .IN1(rst),
    .IN2(_013_));
 ADNR01 _071_ (.A(en),
    .B(_012_),
    .C(_014_),
    .OUT1(_000_[4]));
 NOR200 _072_ (.OUT1(_015_),
    .IN1(en),
    .IN2(crc[5]));
 NOR200 _073_ (.OUT1(_016_),
    .IN1(_001_),
    .IN2(crc[4]));
 NOR300 _074_ (.OUT1(_000_[5]),
    .IN1(rst),
    .IN2(_015_),
    .IN3(_016_));
 NOR200 _075_ (.OUT1(_017_),
    .IN1(en),
    .IN2(crc[6]));
 NOR200 _076_ (.OUT1(_018_),
    .IN1(_001_),
    .IN2(crc[5]));
 NOR300 _077_ (.OUT1(_000_[6]),
    .IN1(rst),
    .IN2(_017_),
    .IN3(_018_));
 XNR201 _078_ (.OUT1(_019_),
    .IN1(crc[6]),
    .IN2(_004_));
 NOR200 _079_ (.OUT1(_020_),
    .IN1(en),
    .IN2(crc[7]));
 OR2101 _080_ (.OUT1(_021_),
    .IN1(rst),
    .IN2(_020_));
 ADNR01 _081_ (.A(en),
    .B(_019_),
    .C(_021_),
    .OUT1(_000_[7]));
 XNR201 _082_ (.OUT1(_022_),
    .IN1(crc[7]),
    .IN2(_004_));
 NOR200 _083_ (.OUT1(_023_),
    .IN1(en),
    .IN2(crc[8]));
 OR2101 _084_ (.OUT1(_024_),
    .IN1(rst),
    .IN2(_023_));
 ADNR01 _085_ (.A(en),
    .B(_022_),
    .C(_024_),
    .OUT1(_000_[8]));
 NOR200 _086_ (.OUT1(_025_),
    .IN1(en),
    .IN2(crc[9]));
 NOR200 _087_ (.OUT1(_026_),
    .IN1(_001_),
    .IN2(crc[8]));
 NOR300 _088_ (.OUT1(_000_[9]),
    .IN1(rst),
    .IN2(_025_),
    .IN3(_026_));
 NOR200 _089_ (.OUT1(_027_),
    .IN1(en),
    .IN2(crc[10]));
 NOR200 _090_ (.OUT1(_028_),
    .IN1(_001_),
    .IN2(crc[9]));
 NOR300 _091_ (.OUT1(_000_[10]),
    .IN1(rst),
    .IN2(_027_),
    .IN3(_028_));
 XNR201 _092_ (.OUT1(_029_),
    .IN1(crc[10]),
    .IN2(_004_));
 NOR200 _093_ (.OUT1(_030_),
    .IN1(en),
    .IN2(crc[11]));
 OR2101 _094_ (.OUT1(_031_),
    .IN1(rst),
    .IN2(_030_));
 ADNR01 _095_ (.A(en),
    .B(_029_),
    .C(_031_),
    .OUT1(_000_[11]));
 NOR200 _096_ (.OUT1(_032_),
    .IN1(en),
    .IN2(crc[12]));
 NOR200 _097_ (.OUT1(_033_),
    .IN1(_001_),
    .IN2(crc[11]));
 NOR300 _098_ (.OUT1(_000_[12]),
    .IN1(rst),
    .IN2(_032_),
    .IN3(_033_));
 NOR200 _099_ (.OUT1(_034_),
    .IN1(en),
    .IN2(crc[13]));
 NOR200 _100_ (.OUT1(_035_),
    .IN1(_001_),
    .IN2(crc[12]));
 NOR300 _101_ (.OUT1(_000_[13]),
    .IN1(rst),
    .IN2(_034_),
    .IN3(_035_));
 NOR200 _102_ (.OUT1(_036_),
    .IN1(en),
    .IN2(crc[14]));
 NOR200 _103_ (.OUT1(_037_),
    .IN1(_001_),
    .IN2(crc[13]));
 NOR300 _104_ (.OUT1(_000_[14]),
    .IN1(rst),
    .IN2(_036_),
    .IN3(_037_));
 DFFL11 _105_ (.Q(crc[0]),
    .C(clknet_1_0__leaf_clk),
    .D(_000_[0]),
    .QB(_038_));
 DFFL11 _106_ (.Q(crc[1]),
    .C(clknet_1_0__leaf_clk),
    .D(_000_[1]),
    .QB(_039_));
 DFFL11 _107_ (.Q(crc[2]),
    .C(clknet_1_0__leaf_clk),
    .D(_000_[2]),
    .QB(_040_));
 DFFL11 _108_ (.Q(crc[3]),
    .C(clknet_1_1__leaf_clk),
    .D(_000_[3]),
    .QB(_041_));
 DFFL11 _109_ (.Q(crc[4]),
    .C(clknet_1_1__leaf_clk),
    .D(_000_[4]),
    .QB(_042_));
 DFFL11 _110_ (.Q(crc[5]),
    .C(clknet_1_1__leaf_clk),
    .D(_000_[5]),
    .QB(_043_));
 DFFL11 _111_ (.Q(crc[6]),
    .C(clknet_1_1__leaf_clk),
    .D(_000_[6]),
    .QB(_044_));
 DFFL11 _112_ (.Q(crc[7]),
    .C(clknet_1_1__leaf_clk),
    .D(_000_[7]),
    .QB(_045_));
 DFFL11 _113_ (.Q(crc[8]),
    .C(clknet_1_1__leaf_clk),
    .D(_000_[8]),
    .QB(_046_));
 DFFL11 _114_ (.Q(crc[9]),
    .C(clknet_1_0__leaf_clk),
    .D(_000_[9]),
    .QB(_047_));
 DFFL11 _115_ (.Q(crc[10]),
    .C(clknet_1_1__leaf_clk),
    .D(_000_[10]),
    .QB(_048_));
 DFFL11 _116_ (.Q(crc[11]),
    .C(clknet_1_1__leaf_clk),
    .D(_000_[11]),
    .QB(_049_));
 DFFL11 _117_ (.Q(crc[12]),
    .C(clknet_1_0__leaf_clk),
    .D(_000_[12]),
    .QB(_050_));
 DFFL11 _118_ (.Q(crc[13]),
    .C(clknet_1_0__leaf_clk),
    .D(_000_[13]),
    .QB(_051_));
 DFFL11 _119_ (.Q(crc[14]),
    .C(clknet_1_0__leaf_clk),
    .D(_000_[14]),
    .QB(_052_));
 INVR01 clkbuf_0_clk (.OUT1(clknet_0_clk),
    .IN1(clk));
 INVR01 clkbuf_1_0__f_clk (.OUT1(clknet_1_0__leaf_clk),
    .IN1(clknet_0_clk));
 INVR01 clkbuf_1_1__f_clk (.OUT1(clknet_1_1__leaf_clk),
    .IN1(clknet_0_clk));
 assign crc_out[0] = crc[0];
 assign crc_out[10] = crc[10];
 assign crc_out[11] = crc[11];
 assign crc_out[12] = crc[12];
 assign crc_out[13] = crc[13];
 assign crc_out[14] = crc[14];
 assign crc_out[1] = crc[1];
 assign crc_out[2] = crc[2];
 assign crc_out[3] = crc[3];
 assign crc_out[4] = crc[4];
 assign crc_out[5] = crc[5];
 assign crc_out[6] = crc[6];
 assign crc_out[7] = crc[7];
 assign crc_out[8] = crc[8];
 assign crc_out[9] = crc[9];
endmodule
