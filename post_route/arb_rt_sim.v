module arb (bus,
    clk,
    done,
    lost,
    rst,
    start,
    tx,
    cnt,
    id);
 input bus;
 input clk;
 output done;
 output lost;
 input rst;
 input start;
 output tx;
 output [3:0] cnt;
 input [10:0] id;

 wire _000_;
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
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire active;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire [3:0] _001_;

 INVR01 _069_ (.OUT1(_017_),
    .IN1(rst));
 INVR01 _070_ (.OUT1(_018_),
    .IN1(id[7]));
 INVR01 _071_ (.OUT1(_019_),
    .IN1(_006_));
 INVR01 _072_ (.OUT1(_020_),
    .IN1(_008_));
 AND201 _073_ (.OUT1(_021_),
    .IN1(start),
    .IN2(_009_));
 NND201 _074_ (.OUT1(_022_),
    .IN1(start),
    .IN2(_009_));
 ORND01 _075_ (.A(_005_),
    .B(_006_),
    .C(_007_),
    .OUT1(_023_));
 OR3101 _076_ (.OUT1(_024_),
    .IN1(_005_),
    .IN2(_007_),
    .IN3(_006_));
 AND201 _077_ (.OUT1(_025_),
    .IN1(_023_),
    .IN2(_024_));
 NOR200 _078_ (.OUT1(_026_),
    .IN1(_020_),
    .IN2(_023_));
 XNR201 _079_ (.OUT1(_027_),
    .IN1(_008_),
    .IN2(_023_));
 XNR201 _080_ (.OUT1(_028_),
    .IN1(_020_),
    .IN2(_023_));
 AOI401 _081_ (.A(id[9]),
    .B(_026_),
    .C(_027_),
    .D(id[1]),
    .OUT1(_029_));
 NOR200 _082_ (.OUT1(_030_),
    .IN1(_007_),
    .IN2(_020_));
 ADNR01 _083_ (.A(id[5]),
    .B(_030_),
    .C(_019_),
    .OUT1(_031_));
 ORND01 _084_ (.A(_025_),
    .B(_029_),
    .C(_031_),
    .OUT1(_032_));
 ADNR01 _085_ (.A(_023_),
    .B(_024_),
    .C(id[3]),
    .OUT1(_033_));
 AND301 _086_ (.OUT1(_034_),
    .IN1(_018_),
    .IN2(_023_),
    .IN3(_024_));
 OR3101 _087_ (.OUT1(_035_),
    .IN1(_028_),
    .IN2(_033_),
    .IN3(_034_));
 ADNR01 _088_ (.A(_019_),
    .B(_035_),
    .C(_005_),
    .OUT1(_036_));
 NND300 _089_ (.OUT1(_037_),
    .IN1(id[10]),
    .IN2(_005_),
    .IN3(_006_));
 DEC24L _090_ (.EN(id[8]),
    .A1(_006_),
    .Q1(_038_),
    .A2(_005_));
 NND201 _091_ (.OUT1(_039_),
    .IN1(_037_),
    .IN2(_038_));
 NND201 _092_ (.OUT1(_040_),
    .IN1(_026_),
    .IN2(_039_));
 NND300 _093_ (.OUT1(_041_),
    .IN1(id[2]),
    .IN2(_005_),
    .IN3(_006_));
 DEC24L _094_ (.EN(id[0]),
    .A1(_006_),
    .Q1(_042_),
    .A2(_005_));
 NND201 _095_ (.OUT1(_043_),
    .IN1(_041_),
    .IN2(_042_));
 NOR200 _096_ (.OUT1(_044_),
    .IN1(_025_),
    .IN2(_043_));
 DEC24L _097_ (.EN(id[4]),
    .A1(_006_),
    .Q1(_045_),
    .A2(_005_));
 NND300 _098_ (.OUT1(_046_),
    .IN1(id[6]),
    .IN2(_005_),
    .IN3(_006_));
 AND401 _099_ (.OUT1(_047_),
    .IN1(_023_),
    .IN2(_024_),
    .IN3(_045_),
    .IN4(_046_));
 OR2101 _100_ (.OUT1(_048_),
    .IN1(_028_),
    .IN2(_047_));
 ORND01 _101_ (.A(_044_),
    .B(_048_),
    .C(_040_),
    .OUT1(_049_));
 ADNR01 _102_ (.A(_032_),
    .B(_036_),
    .C(_049_),
    .OUT1(_050_));
 INVR01 _103_ (.OUT1(_051_),
    .IN1(_050_));
 OR2101 _104_ (.OUT1(_052_),
    .IN1(bus),
    .IN2(_050_));
 NOR200 _105_ (.OUT1(_053_),
    .IN1(cnt[2]),
    .IN2(cnt[0]));
 NND300 _106_ (.OUT1(_054_),
    .IN1(cnt[1]),
    .IN2(cnt[3]),
    .IN3(_053_));
 AND201 _107_ (.OUT1(_055_),
    .IN1(_052_),
    .IN2(_054_));
 NND201 _108_ (.OUT1(_056_),
    .IN1(active),
    .IN2(_055_));
 NND201 _109_ (.OUT1(_000_),
    .IN1(_022_),
    .IN2(_056_));
 NND201 _110_ (.OUT1(_057_),
    .IN1(lost),
    .IN2(_022_));
 NND201 _111_ (.OUT1(_058_),
    .IN1(active),
    .IN2(_022_));
 ORND01 _112_ (.A(_052_),
    .B(_058_),
    .C(_057_),
    .OUT1(_003_));
 MX2101 _113_ (.D0(_051_),
    .OUT1(_004_),
    .A0(_058_),
    .D1(tx));
 ADNR01 _114_ (.A(active),
    .B(_055_),
    .C(cnt[0]),
    .OUT1(_059_));
 AND301 _115_ (.OUT1(_060_),
    .IN1(active),
    .IN2(cnt[0]),
    .IN3(_052_));
 NOR300 _116_ (.OUT1(_001_[0]),
    .IN1(_021_),
    .IN2(_059_),
    .IN3(_060_));
 AND401 _117_ (.OUT1(_061_),
    .IN1(active),
    .IN2(cnt[0]),
    .IN3(cnt[1]),
    .IN4(_052_));
 NOR200 _118_ (.OUT1(_062_),
    .IN1(cnt[1]),
    .IN2(_060_));
 NOR300 _119_ (.OUT1(_001_[1]),
    .IN1(_021_),
    .IN2(_061_),
    .IN3(_062_));
 AND501 _120_ (.OUT1(_063_),
    .IN1(cnt[2]),
    .IN2(active),
    .IN3(cnt[0]),
    .IN4(cnt[1]),
    .IN5(_052_));
 NOR200 _121_ (.OUT1(_064_),
    .IN1(cnt[2]),
    .IN2(_061_));
 NOR300 _122_ (.OUT1(_001_[2]),
    .IN1(_021_),
    .IN2(_063_),
    .IN3(_064_));
 XNR201 _123_ (.OUT1(_065_),
    .IN1(cnt[3]),
    .IN2(_063_));
 NOR200 _124_ (.OUT1(_001_[3]),
    .IN1(_021_),
    .IN2(_065_));
 NOR200 _125_ (.OUT1(_002_),
    .IN1(_055_),
    .IN2(_058_));
 INVR01 _126_ (.OUT1(_010_),
    .IN1(rst));
 INVR01 _127_ (.OUT1(_011_),
    .IN1(rst));
 INVR01 _128_ (.OUT1(_012_),
    .IN1(rst));
 INVR01 _129_ (.OUT1(_013_),
    .IN1(rst));
 INVR01 _130_ (.OUT1(_014_),
    .IN1(rst));
 INVR01 _131_ (.OUT1(_015_),
    .IN1(rst));
 INVR01 _132_ (.OUT1(_016_),
    .IN1(rst));
 DFCL11 _133_ (.Q(done),
    .C(clknet_1_0__leaf_clk),
    .D(_002_),
    .QB(_066_),
    .CLRB(_010_));
 DFCL11 _134_ (.Q(cnt[0]),
    .C(clknet_1_1__leaf_clk),
    .D(_001_[0]),
    .QB(_005_),
    .CLRB(_011_));
 DFCL11 _135_ (.Q(cnt[1]),
    .C(clknet_1_1__leaf_clk),
    .D(_001_[1]),
    .QB(_006_),
    .CLRB(_012_));
 DFCL11 _136_ (.Q(cnt[2]),
    .C(clknet_1_1__leaf_clk),
    .D(_001_[2]),
    .QB(_007_),
    .CLRB(_013_));
 DFCL11 _137_ (.Q(cnt[3]),
    .C(clknet_1_1__leaf_clk),
    .D(_001_[3]),
    .QB(_008_),
    .CLRB(_014_));
 DFPR11 _138_ (.Q(tx),
    .C(clknet_1_0__leaf_clk),
    .D(_004_),
    .QB(_067_),
    .PRB(_015_));
 DFCL11 _139_ (.Q(lost),
    .C(clknet_1_0__leaf_clk),
    .D(_003_),
    .QB(_068_),
    .CLRB(_016_));
 DFCL11 _140_ (.Q(active),
    .C(clknet_1_0__leaf_clk),
    .D(_000_),
    .QB(_009_),
    .CLRB(_017_));
 INVR01 clkbuf_0_clk (.OUT1(clknet_0_clk),
    .IN1(clk));
 INVR01 clkbuf_1_0__f_clk (.OUT1(clknet_1_0__leaf_clk),
    .IN1(clknet_0_clk));
 INVR01 clkbuf_1_1__f_clk (.OUT1(clknet_1_1__leaf_clk),
    .IN1(clknet_0_clk));
endmodule
