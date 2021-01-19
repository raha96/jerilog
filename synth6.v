module top (clk, rst, serIn, p0, p1, p2, p3, d, outValid, errflag);
  // jerilog internal declarations
  supply0 _jerilog_0_
  supply1 _jerilog_1_

  input clk;
  input rst;
  input serIn;
  output p0;
  output p1;
  output p2;
  output p3;
  output [1:0] d;
  output outValid;
  output errflag;

  wire _w0_ ;
  wire _w1_ ;
  wire _w2_ ;
  wire _w3_ ;
  wire _w4_ ;
  wire _w5_ ;
  wire _w6_ ;
  wire _w7_ ;
  wire _w8_ ;
  wire _w9_ ;
  wire _w10_ ;
  wire _w11_ ;
  wire _w12_ ;
  wire _w13_ ;
  wire _w14_ ;
  wire _w15_ ;
  wire _w16_ ;
  wire _w17_ ;
  wire _w18_ ;
  wire _w19_ ;
  wire _w20_ ;
  wire _w21_ ;
  wire _w22_ ;
  wire _w23_ ;
  wire _w24_ ;
  wire _w25_ ;
  wire _w26_ ;
  wire _w27_ ;
  wire _w28_ ;
  wire _w29_ ;
  wire _w30_ ;
  wire _w31_ ;
  wire _w32_ ;
  wire _w33_ ;
  wire _w34_ ;
  wire _w35_ ;
  wire _w36_ ;
  wire _w37_ ;
  wire _w38_ ;
  wire _w39_ ;
  wire _w40_ ;
  wire _w41_ ;
  wire _w42_ ;
  wire _w43_ ;
  wire _w44_ ;
  wire _w45_ ;
  wire _w46_ ;
  wire _w47_ ;
  wire _w48_ ;
  wire _w49_ ;
  wire _w50_ ;
  wire _w51_ ;
  wire _w52_ ;
  wire _w53_ ;
  wire _w54_ ;
  wire _w55_ ;
  wire _w56_ ;
  wire _w57_ ;
  wire _w58_ ;
  wire _w59_ ;
  wire _w60_ ;
  wire _w61_ ;
  wire _w62_ ;
  wire _w63_ ;
  wire _w64_ ;
  wire _w65_ ;
  wire _w66_ ;
  wire _w67_ ;
  wire _w68_ ;
  wire _w69_ ;
  wire _w70_ ;
  wire _w71_ ;
  wire _w72_ ;
  wire _w73_ ;
  wire _w74_ ;
  wire _w75_ ;
  wire _w76_ ;
  wire _w77_ ;
  wire _w78_ ;
  wire _w79_ ;
  wire _w80_ ;
  wire _w81_ ;
  wire _w82_ ;
  wire _w83_ ;
  wire _w84_ ;
  wire _w85_ ;
  wire _w86_ ;
  wire _w87_ ;
  wire _w88_ ;
  wire _w89_ ;
  wire _w90_ ;
  wire _w91_ ;
  wire _w92_ ;
  wire _w93_ ;
  wire _w94_ ;
  wire _w95_ ;
  wire _w96_ ;
  wire _w97_ ;
  wire _w98_ ;
  wire _w99_ ;
  wire _w100_ ;
  wire _w101_ ;
  wire _w102_ ;
  wire _w103_ ;
  wire _w104_ ;
  wire _w105_ ;
  wire _w106_ ;
  wire _w107_ ;
  wire _w108_ ;
  wire _w109_ ;
  wire _w110_ ;
  wire _w111_ ;
  wire _w112_ ;
  wire _w113_ ;
  wire _w114_ ;
  wire _w115_ ;
  wire _w116_ ;
  wire _w117_ ;
  wire _w118_ ;
  wire _w119_ ;
  wire _w120_ ;
  wire _w121_ ;
  wire _w122_ ;
  wire _w123_ ;
  wire _w124_ ;
  wire _w125_ ;
  wire _w126_ ;
  wire _w127_ ;
  wire _w128_ ;
  wire _w129_ ;
  wire _w130_ ;
  wire _w131_ ;
  wire _w132_ ;
  wire _w133_ ;
  wire _w134_ ;
  wire _w135_ ;
  wire _w136_ ;
  wire _w137_ ;
  wire _w138_ ;
  wire _w139_ ;
  wire _w140_ ;
  wire _w141_ ;
  wire _w142_ ;
  wire _w143_ ;
  wire _w144_ ;
  wire _w145_ ;
  wire _w146_ ;
  wire _w147_ ;
  wire _w148_ ;
  wire _w149_ ;
  wire _w150_ ;
  wire _w151_ ;
  wire _w152_ ;
  wire _w153_ ;
  wire _w154_ ;
  wire _w155_ ;
  wire _w156_ ;
  wire _w157_ ;
  wire _w158_ ;
  wire _w159_ ;
  wire _w160_ ;
  wire _w161_ ;
  wire _w162_ ;
  wire _w163_ ;
  wire _w164_ ;
  wire _w165_ ;
  wire _w166_ ;
  wire _w167_ ;
  wire _w168_ ;
  wire _w169_ ;
  wire _w170_ ;
  wire _w171_ ;
  wire _w172_ ;
  wire _w173_ ;
  wire _w174_ ;
  wire _w175_ ;
  wire _w176_ ;
  wire _w177_ ;
  wire _w178_ ;
  wire _w179_ ;
  wire _w180_ ;
  wire _w181_ ;
  wire _w182_ ;
  wire _w183_ ;
  wire _w184_ ;
  wire _w185_ ;
  wire _w186_ ;
  wire _w187_ ;
  wire _w188_ ;
  wire _w189_ ;
  wire _w190_ ;
  wire _w191_ ;
  wire _w192_ ;
  wire _w193_ ;
  wire _w194_ ;
  wire _w195_ ;
  wire _w196_ ;
  wire _w197_ ;
  wire _w198_ ;
  wire _w199_ ;
  wire _w200_ ;
  wire _w201_ ;
  wire _w202_ ;
  wire _w203_ ;
  wire _w204_ ;
  wire _w205_ ;
  wire _w206_ ;
  wire _w207_ ;
  wire _w208_ ;
  wire _w209_ ;
  wire _w210_ ;
  wire _w211_ ;
  wire _w212_ ;
  wire _w213_ ;
  wire _w214_ ;
  wire _w215_ ;
  wire _w216_ ;
  wire _w217_ ;
  wire _w218_ ;
  wire _w219_ ;
  wire _w220_ ;
  wire _w221_ ;
  wire _w222_ ;
  wire _w223_ ;
  wire _w224_ ;
  wire _w225_ ;
  wire _w226_ ;
  wire _w227_ ;
  wire _w228_ ;
  wire _w229_ ;
  wire _w230_ ;
  wire _w231_ ;
  wire _w232_ ;
  wire _w233_ ;
  wire _w234_ ;
  wire clk ;
  wire [1:0] cu1_d ;
  wire cu1_d_latch ;
  wire cu1_e_latch ;
  wire [5:0] cu1_n ;
  wire cu1_n_latch ;
  wire cu1_outValid ;
  wire cu1_rst ;
  wire cu1_serIn ;
  wire [9:0] cu1_state_cnt ;
  wire [3:0] cu1_state_var ;
  wire dp1_errflag ;
  wire dp1_p0 ;
  wire dp1_p1 ;
  wire dp1_p2 ;
  wire dp1_p3 ;

  NOT _NOT_0_ (
    .A(cu1_state_var[1]), 
    .Y(_w169_)
  );
  NOT _NOT_1_ (
    .A(cu1_state_var[2]), 
    .Y(_w170_)
  );
  NOT _NOT_2_ (
    .A(cu1_state_var[3]), 
    .Y(_w171_)
  );
  NOT _NOT_3_ (
    .A(cu1_state_var[0]), 
    .Y(_w172_)
  );
  NOT _NOT_4_ (
    .A(cu1_rst), 
    .Y(_w173_)
  );
  NOT _NOT_5_ (
    .A(cu1_d[0]), 
    .Y(_w174_)
  );
  NOT _NOT_6_ (
    .A(cu1_state_cnt[9]), 
    .Y(_w175_)
  );
  NOT _NOT_7_ (
    .A(cu1_state_cnt[8]), 
    .Y(_w176_)
  );
  NOT _NOT_8_ (
    .A(cu1_state_cnt[7]), 
    .Y(_w177_)
  );
  NOT _NOT_9_ (
    .A(cu1_state_cnt[6]), 
    .Y(_w178_)
  );
  NOT _NOT_10_ (
    .A(cu1_state_cnt[5]), 
    .Y(_w179_)
  );
  NOT _NOT_11_ (
    .A(cu1_state_cnt[4]), 
    .Y(_w180_)
  );
  NOT _NOT_12_ (
    .A(cu1_state_cnt[3]), 
    .Y(_w181_)
  );
  NOT _NOT_13_ (
    .A(cu1_state_cnt[2]), 
    .Y(_w182_)
  );
  NOT _NOT_14_ (
    .A(cu1_state_cnt[1]), 
    .Y(_w183_)
  );
  NOT _NOT_15_ (
    .A(cu1_state_cnt[0]), 
    .Y(_w184_)
  );
  NOT _NOT_16_ (
    .A(cu1_n[5]), 
    .Y(_w185_)
  );
  NOT _NOT_17_ (
    .A(cu1_n[4]), 
    .Y(_w186_)
  );
  NOT _NOT_18_ (
    .A(cu1_n[3]), 
    .Y(_w187_)
  );
  NOT _NOT_19_ (
    .A(cu1_n[1]), 
    .Y(_w188_)
  );
  NOT _NOT_20_ (
    .A(cu1_n[0]), 
    .Y(_w189_)
  );
  NAND _NAND_0_ (
    .A(cu1_state_cnt[9]), 
    .B(cu1_state_cnt[8]), 
    .Y(_w190_)
  );
  NOT _NOT_21_ (
    .A(_w190_), 
    .Y(_w191_)
  );
  NOR _NOR_0_ (
    .A(_w177_), 
    .B(_w190_), 
    .Y(_w192_)
  );
  NAND _NAND_1_ (
    .A(cu1_state_cnt[7]), 
    .B(_w191_), 
    .Y(_w193_)
  );
  NOR _NOR_1_ (
    .A(_w178_), 
    .B(_w193_), 
    .Y(_w194_)
  );
  NAND _NAND_2_ (
    .A(cu1_state_cnt[6]), 
    .B(_w192_), 
    .Y(_w195_)
  );
  NOR _NOR_2_ (
    .A(_w179_), 
    .B(_w195_), 
    .Y(_w196_)
  );
  NAND _NAND_3_ (
    .A(cu1_state_cnt[5]), 
    .B(_w194_), 
    .Y(_w197_)
  );
  NOR _NOR_3_ (
    .A(_w180_), 
    .B(_w197_), 
    .Y(_w198_)
  );
  NAND _NAND_4_ (
    .A(cu1_state_cnt[4]), 
    .B(_w196_), 
    .Y(_w199_)
  );
  NOR _NOR_4_ (
    .A(_w181_), 
    .B(_w199_), 
    .Y(_w200_)
  );
  NAND _NAND_5_ (
    .A(cu1_state_cnt[3]), 
    .B(_w198_), 
    .Y(_w201_)
  );
  NOR _NOR_5_ (
    .A(_w182_), 
    .B(_w201_), 
    .Y(_w202_)
  );
  NAND _NAND_6_ (
    .A(cu1_state_cnt[2]), 
    .B(_w200_), 
    .Y(_w203_)
  );
  NOR _NOR_6_ (
    .A(_w183_), 
    .B(_w203_), 
    .Y(_w204_)
  );
  NAND _NAND_7_ (
    .A(cu1_state_cnt[1]), 
    .B(_w202_), 
    .Y(_w205_)
  );
  NOR _NOR_7_ (
    .A(_w184_), 
    .B(_w205_), 
    .Y(_w206_)
  );
  NOR _NOR_8_ (
    .A(cu1_state_cnt[0]), 
    .B(_w204_), 
    .Y(_w207_)
  );
  NOR _NOR_9_ (
    .A(_w206_), 
    .B(_w207_), 
    .Y(_w0_)
  );
  NOR _NOR_10_ (
    .A(cu1_state_cnt[1]), 
    .B(_w202_), 
    .Y(_w1_)
  );
  NAND _NAND_8_ (
    .A(_w183_), 
    .B(_w203_), 
    .Y(_w2_)
  );
  NOR _NOR_11_ (
    .A(_w204_), 
    .B(_w1_), 
    .Y(_w3_)
  );
  NAND _NAND_9_ (
    .A(_w205_), 
    .B(_w2_), 
    .Y(_w4_)
  );
  NOR _NOR_12_ (
    .A(_w0_), 
    .B(_w3_), 
    .Y(_w5_)
  );
  NOT _NOT_22_ (
    .A(_w5_), 
    .Y(_w6_)
  );
  NAND _NAND_10_ (
    .A(cu1_n[0]), 
    .B(_w5_), 
    .Y(_w7_)
  );
  NOT _NOT_23_ (
    .A(_w7_), 
    .Y(_w8_)
  );
  NAND _NAND_11_ (
    .A(_w181_), 
    .B(_w199_), 
    .Y(_w9_)
  );
  NAND _NAND_12_ (
    .A(_w201_), 
    .B(_w9_), 
    .Y(_w10_)
  );
  NOR _NOR_13_ (
    .A(cu1_n[2]), 
    .B(_w10_), 
    .Y(_w11_)
  );
  NOR _NOR_14_ (
    .A(cu1_state_cnt[4]), 
    .B(_w196_), 
    .Y(_w12_)
  );
  NOT _NOT_24_ (
    .A(_w12_), 
    .Y(_w13_)
  );
  NOR _NOR_15_ (
    .A(_w198_), 
    .B(_w12_), 
    .Y(_w14_)
  );
  NAND _NAND_13_ (
    .A(_w199_), 
    .B(_w13_), 
    .Y(_w15_)
  );
  NAND _NAND_14_ (
    .A(cu1_n[3]), 
    .B(_w15_), 
    .Y(_w16_)
  );
  NOR _NOR_16_ (
    .A(cu1_state_cnt[6]), 
    .B(_w185_), 
    .Y(_w17_)
  );
  NOR _NOR_17_ (
    .A(cu1_state_cnt[5]), 
    .B(_w186_), 
    .Y(_w18_)
  );
  NOR _NOR_18_ (
    .A(_w17_), 
    .B(_w18_), 
    .Y(_w19_)
  );
  NAND _NAND_15_ (
    .A(_w195_), 
    .B(_w19_), 
    .Y(_w20_)
  );
  NOR _NOR_19_ (
    .A(cu1_state_cnt[5]), 
    .B(_w194_), 
    .Y(_w21_)
  );
  NOR _NOR_20_ (
    .A(_w196_), 
    .B(_w21_), 
    .Y(_w22_)
  );
  NOT _NOT_25_ (
    .A(_w22_), 
    .Y(_w23_)
  );
  NAND _NAND_16_ (
    .A(_w186_), 
    .B(_w22_), 
    .Y(_w24_)
  );
  NAND _NAND_17_ (
    .A(_w20_), 
    .B(_w24_), 
    .Y(_w25_)
  );
  NAND _NAND_18_ (
    .A(_w16_), 
    .B(_w25_), 
    .Y(_w26_)
  );
  NAND _NAND_19_ (
    .A(_w187_), 
    .B(_w14_), 
    .Y(_w27_)
  );
  NAND _NAND_20_ (
    .A(_w26_), 
    .B(_w27_), 
    .Y(_w28_)
  );
  NOR _NOR_21_ (
    .A(_w11_), 
    .B(_w28_), 
    .Y(_w29_)
  );
  NAND _NAND_21_ (
    .A(cu1_n[2]), 
    .B(_w10_), 
    .Y(_w30_)
  );
  NAND _NAND_22_ (
    .A(_w182_), 
    .B(_w201_), 
    .Y(_w31_)
  );
  NAND _NAND_23_ (
    .A(_w203_), 
    .B(_w31_), 
    .Y(_w32_)
  );
  NAND _NAND_24_ (
    .A(cu1_n[1]), 
    .B(_w32_), 
    .Y(_w33_)
  );
  NAND _NAND_25_ (
    .A(_w30_), 
    .B(_w33_), 
    .Y(_w34_)
  );
  NOR _NOR_22_ (
    .A(_w29_), 
    .B(_w34_), 
    .Y(_w35_)
  );
  NAND _NAND_26_ (
    .A(_w189_), 
    .B(_w3_), 
    .Y(_w36_)
  );
  NOR _NOR_23_ (
    .A(cu1_n[1]), 
    .B(_w32_), 
    .Y(_w37_)
  );
  NOR _NOR_24_ (
    .A(_w0_), 
    .B(_w37_), 
    .Y(_w38_)
  );
  NAND _NAND_27_ (
    .A(_w36_), 
    .B(_w38_), 
    .Y(_w39_)
  );
  NOR _NOR_25_ (
    .A(_w35_), 
    .B(_w39_), 
    .Y(_w40_)
  );
  NOT _NOT_26_ (
    .A(_w40_), 
    .Y(_w41_)
  );
  NOR _NOR_26_ (
    .A(_w8_), 
    .B(_w40_), 
    .Y(_w42_)
  );
  NAND _NAND_28_ (
    .A(_w7_), 
    .B(_w41_), 
    .Y(_w43_)
  );
  NOR _NOR_27_ (
    .A(_w172_), 
    .B(_w42_), 
    .Y(_w44_)
  );
  NAND _NAND_29_ (
    .A(cu1_state_var[0]), 
    .B(_w43_), 
    .Y(_w45_)
  );
  NOR _NOR_28_ (
    .A(_w172_), 
    .B(cu1_rst), 
    .Y(_w211_)
  );
  NOR _NOR_29_ (
    .A(cu1_rst), 
    .B(_w45_), 
    .Y(_w46_)
  );
  NOT _NOT_27_ (
    .A(_w46_), 
    .Y(_w47_)
  );
  NOR _NOR_30_ (
    .A(_w14_), 
    .B(_w22_), 
    .Y(_w48_)
  );
  NAND _NAND_30_ (
    .A(_w10_), 
    .B(_w48_), 
    .Y(_w49_)
  );
  NOT _NOT_28_ (
    .A(_w49_), 
    .Y(_w50_)
  );
  NAND _NAND_31_ (
    .A(_w32_), 
    .B(_w50_), 
    .Y(_w51_)
  );
  NOR _NOR_31_ (
    .A(_w6_), 
    .B(_w51_), 
    .Y(_w52_)
  );
  NOT _NOT_29_ (
    .A(_w52_), 
    .Y(_w53_)
  );
  NOR _NOR_32_ (
    .A(cu1_state_cnt[6]), 
    .B(_w192_), 
    .Y(_w54_)
  );
  NAND _NAND_32_ (
    .A(_w178_), 
    .B(_w193_), 
    .Y(_w55_)
  );
  NOR _NOR_33_ (
    .A(_w194_), 
    .B(_w54_), 
    .Y(_w56_)
  );
  NAND _NAND_33_ (
    .A(_w195_), 
    .B(_w55_), 
    .Y(_w57_)
  );
  NAND _NAND_34_ (
    .A(cu1_state_cnt[8]), 
    .B(cu1_state_cnt[7]), 
    .Y(_w58_)
  );
  NOR _NOR_34_ (
    .A(cu1_state_cnt[9]), 
    .B(_w58_), 
    .Y(_w59_)
  );
  NOR _NOR_35_ (
    .A(_w56_), 
    .B(_w59_), 
    .Y(_w60_)
  );
  NAND _NAND_35_ (
    .A(_w52_), 
    .B(_w60_), 
    .Y(_w61_)
  );
  NOT _NOT_30_ (
    .A(_w61_), 
    .Y(_w62_)
  );
  NOR _NOR_36_ (
    .A(_w170_), 
    .B(cu1_rst), 
    .Y(_w63_)
  );
  NAND _NAND_36_ (
    .A(_w61_), 
    .B(_w63_), 
    .Y(_w64_)
  );
  NAND _NAND_37_ (
    .A(_w47_), 
    .B(_w64_), 
    .Y(_w225_)
  );
  NOR _NOR_37_ (
    .A(_w171_), 
    .B(cu1_serIn), 
    .Y(_w65_)
  );
  NOR _NOR_38_ (
    .A(cu1_state_cnt[9]), 
    .B(cu1_state_cnt[8]), 
    .Y(_w66_)
  );
  NOT _NOT_31_ (
    .A(_w66_), 
    .Y(_w67_)
  );
  NOR _NOR_39_ (
    .A(cu1_state_cnt[7]), 
    .B(cu1_state_cnt[6]), 
    .Y(_w68_)
  );
  NAND _NAND_38_ (
    .A(_w66_), 
    .B(_w68_), 
    .Y(_w69_)
  );
  NOT _NOT_32_ (
    .A(_w69_), 
    .Y(_w70_)
  );
  NOR _NOR_40_ (
    .A(_w53_), 
    .B(_w69_), 
    .Y(_w71_)
  );
  NAND _NAND_39_ (
    .A(_w52_), 
    .B(_w70_), 
    .Y(_w72_)
  );
  NOR _NOR_41_ (
    .A(_w206_), 
    .B(_w71_), 
    .Y(_w73_)
  );
  NOR _NOR_42_ (
    .A(_w169_), 
    .B(_w73_), 
    .Y(_w74_)
  );
  NOR _NOR_43_ (
    .A(_w65_), 
    .B(_w74_), 
    .Y(_w75_)
  );
  NOR _NOR_44_ (
    .A(cu1_rst), 
    .B(_w75_), 
    .Y(_w224_)
  );
  NOR _NOR_45_ (
    .A(_w170_), 
    .B(_w61_), 
    .Y(_w76_)
  );
  NAND _NAND_40_ (
    .A(cu1_state_var[2]), 
    .B(_w62_), 
    .Y(_w77_)
  );
  NAND _NAND_41_ (
    .A(_w169_), 
    .B(_w77_), 
    .Y(_w78_)
  );
  NAND _NAND_42_ (
    .A(_w173_), 
    .B(_w78_), 
    .Y(_w79_)
  );
  NOR _NOR_46_ (
    .A(_w73_), 
    .B(_w76_), 
    .Y(_w80_)
  );
  NOR _NOR_47_ (
    .A(_w79_), 
    .B(_w80_), 
    .Y(_w223_)
  );
  NOR _NOR_48_ (
    .A(_w172_), 
    .B(_w43_), 
    .Y(_w81_)
  );
  NAND _NAND_43_ (
    .A(cu1_state_var[3]), 
    .B(cu1_serIn), 
    .Y(_w82_)
  );
  NOR _NOR_49_ (
    .A(cu1_rst), 
    .B(_w81_), 
    .Y(_w83_)
  );
  NAND _NAND_44_ (
    .A(_w82_), 
    .B(_w83_), 
    .Y(_w222_)
  );
  NOR _NOR_50_ (
    .A(cu1_state_var[2]), 
    .B(cu1_state_var[0]), 
    .Y(_w84_)
  );
  NOR _NOR_51_ (
    .A(_w211_), 
    .B(_w63_), 
    .Y(_w85_)
  );
  NOR _NOR_52_ (
    .A(cu1_rst), 
    .B(_w84_), 
    .Y(_w86_)
  );
  NAND _NAND_45_ (
    .A(cu1_d_latch), 
    .B(_w85_), 
    .Y(_w87_)
  );
  NOR _NOR_53_ (
    .A(cu1_state_var[1]), 
    .B(cu1_state_var[3]), 
    .Y(_w88_)
  );
  NOR _NOR_54_ (
    .A(cu1_rst), 
    .B(_w88_), 
    .Y(_w89_)
  );
  NOT _NOT_33_ (
    .A(_w89_), 
    .Y(_w90_)
  );
  NAND _NAND_46_ (
    .A(_w87_), 
    .B(_w90_), 
    .Y(_w208_)
  );
  NOR _NOR_55_ (
    .A(_w86_), 
    .B(_w89_), 
    .Y(_w91_)
  );
  NAND _NAND_47_ (
    .A(cu1_n_latch), 
    .B(_w91_), 
    .Y(_w92_)
  );
  NAND _NAND_48_ (
    .A(_w79_), 
    .B(_w92_), 
    .Y(_w210_)
  );
  NAND _NAND_49_ (
    .A(cu1_e_latch), 
    .B(_w91_), 
    .Y(_w93_)
  );
  NAND _NAND_50_ (
    .A(_w47_), 
    .B(_w93_), 
    .Y(_w209_)
  );
  NAND _NAND_51_ (
    .A(_w175_), 
    .B(_w76_), 
    .Y(_w94_)
  );
  NOR _NOR_56_ (
    .A(_w169_), 
    .B(_w72_), 
    .Y(_w95_)
  );
  NAND _NAND_52_ (
    .A(cu1_state_var[0]), 
    .B(_w175_), 
    .Y(_w96_)
  );
  NAND _NAND_53_ (
    .A(cu1_serIn), 
    .B(_w175_), 
    .Y(_w97_)
  );
  NAND _NAND_54_ (
    .A(cu1_state_var[3]), 
    .B(_w97_), 
    .Y(_w98_)
  );
  NAND _NAND_55_ (
    .A(_w96_), 
    .B(_w98_), 
    .Y(_w99_)
  );
  NOR _NOR_57_ (
    .A(_w95_), 
    .B(_w99_), 
    .Y(_w100_)
  );
  NAND _NAND_56_ (
    .A(_w94_), 
    .B(_w100_), 
    .Y(_w101_)
  );
  NOR _NOR_58_ (
    .A(_w81_), 
    .B(_w101_), 
    .Y(_w102_)
  );
  NOR _NOR_59_ (
    .A(cu1_rst), 
    .B(_w102_), 
    .Y(_w212_)
  );
  NOR _NOR_60_ (
    .A(_w176_), 
    .B(_w82_), 
    .Y(_w103_)
  );
  NOR _NOR_61_ (
    .A(_w44_), 
    .B(_w76_), 
    .Y(_w104_)
  );
  NAND _NAND_57_ (
    .A(_w190_), 
    .B(_w67_), 
    .Y(_w105_)
  );
  NOR _NOR_62_ (
    .A(_w104_), 
    .B(_w105_), 
    .Y(_w106_)
  );
  NOR _NOR_63_ (
    .A(_w103_), 
    .B(_w106_), 
    .Y(_w107_)
  );
  NOR _NOR_64_ (
    .A(cu1_rst), 
    .B(_w107_), 
    .Y(_w213_)
  );
  NOR _NOR_65_ (
    .A(_w177_), 
    .B(_w82_), 
    .Y(_w108_)
  );
  NAND _NAND_58_ (
    .A(_w177_), 
    .B(_w190_), 
    .Y(_w109_)
  );
  NAND _NAND_59_ (
    .A(_w193_), 
    .B(_w109_), 
    .Y(_w110_)
  );
  NOR _NOR_66_ (
    .A(_w104_), 
    .B(_w110_), 
    .Y(_w111_)
  );
  NOR _NOR_67_ (
    .A(_w108_), 
    .B(_w111_), 
    .Y(_w112_)
  );
  NOR _NOR_68_ (
    .A(cu1_rst), 
    .B(_w112_), 
    .Y(_w214_)
  );
  NOR _NOR_69_ (
    .A(_w45_), 
    .B(_w57_), 
    .Y(_w113_)
  );
  NOR _NOR_70_ (
    .A(_w178_), 
    .B(_w82_), 
    .Y(_w114_)
  );
  NOR _NOR_71_ (
    .A(_w113_), 
    .B(_w114_), 
    .Y(_w115_)
  );
  NOR _NOR_72_ (
    .A(cu1_rst), 
    .B(_w115_), 
    .Y(_w215_)
  );
  NOR _NOR_73_ (
    .A(_w23_), 
    .B(_w45_), 
    .Y(_w116_)
  );
  NOR _NOR_74_ (
    .A(_w179_), 
    .B(_w82_), 
    .Y(_w117_)
  );
  NOR _NOR_75_ (
    .A(_w116_), 
    .B(_w117_), 
    .Y(_w118_)
  );
  NOR _NOR_76_ (
    .A(cu1_rst), 
    .B(_w118_), 
    .Y(_w216_)
  );
  NOR _NOR_77_ (
    .A(_w15_), 
    .B(_w45_), 
    .Y(_w119_)
  );
  NOR _NOR_78_ (
    .A(_w180_), 
    .B(_w82_), 
    .Y(_w120_)
  );
  NOR _NOR_79_ (
    .A(_w119_), 
    .B(_w120_), 
    .Y(_w121_)
  );
  NOR _NOR_80_ (
    .A(cu1_rst), 
    .B(_w121_), 
    .Y(_w217_)
  );
  NOR _NOR_81_ (
    .A(_w10_), 
    .B(_w45_), 
    .Y(_w122_)
  );
  NOR _NOR_82_ (
    .A(_w181_), 
    .B(_w82_), 
    .Y(_w123_)
  );
  NOR _NOR_83_ (
    .A(_w122_), 
    .B(_w123_), 
    .Y(_w124_)
  );
  NOR _NOR_84_ (
    .A(cu1_rst), 
    .B(_w124_), 
    .Y(_w218_)
  );
  NOR _NOR_85_ (
    .A(_w32_), 
    .B(_w45_), 
    .Y(_w125_)
  );
  NOR _NOR_86_ (
    .A(_w182_), 
    .B(_w82_), 
    .Y(_w126_)
  );
  NOR _NOR_87_ (
    .A(_w125_), 
    .B(_w126_), 
    .Y(_w127_)
  );
  NOR _NOR_88_ (
    .A(cu1_rst), 
    .B(_w127_), 
    .Y(_w219_)
  );
  NOR _NOR_89_ (
    .A(_w4_), 
    .B(_w45_), 
    .Y(_w128_)
  );
  NOR _NOR_90_ (
    .A(_w183_), 
    .B(_w82_), 
    .Y(_w129_)
  );
  NOR _NOR_91_ (
    .A(_w128_), 
    .B(_w129_), 
    .Y(_w130_)
  );
  NOR _NOR_92_ (
    .A(cu1_rst), 
    .B(_w130_), 
    .Y(_w220_)
  );
  NAND _NAND_60_ (
    .A(_w173_), 
    .B(cu1_state_cnt[0]), 
    .Y(_w131_)
  );
  NOR _NOR_93_ (
    .A(_w82_), 
    .B(_w131_), 
    .Y(_w221_)
  );
  NOR _NOR_94_ (
    .A(cu1_n_latch), 
    .B(cu1_n[5]), 
    .Y(_w132_)
  );
  NAND _NAND_61_ (
    .A(cu1_n_latch), 
    .B(_w186_), 
    .Y(_w133_)
  );
  NAND _NAND_62_ (
    .A(_w173_), 
    .B(_w133_), 
    .Y(_w134_)
  );
  NOR _NOR_95_ (
    .A(_w132_), 
    .B(_w134_), 
    .Y(_w229_)
  );
  NOR _NOR_96_ (
    .A(cu1_n_latch), 
    .B(cu1_n[4]), 
    .Y(_w135_)
  );
  NAND _NAND_63_ (
    .A(cu1_n_latch), 
    .B(_w187_), 
    .Y(_w136_)
  );
  NAND _NAND_64_ (
    .A(_w173_), 
    .B(_w136_), 
    .Y(_w137_)
  );
  NOR _NOR_97_ (
    .A(_w135_), 
    .B(_w137_), 
    .Y(_w230_)
  );
  NAND _NAND_65_ (
    .A(cu1_n_latch), 
    .B(cu1_n[2]), 
    .Y(_w138_)
  );
  NOT _NOT_34_ (
    .A(_w138_), 
    .Y(_w139_)
  );
  NOR _NOR_98_ (
    .A(cu1_n_latch), 
    .B(_w187_), 
    .Y(_w140_)
  );
  NOR _NOR_99_ (
    .A(_w139_), 
    .B(_w140_), 
    .Y(_w141_)
  );
  NOR _NOR_100_ (
    .A(cu1_rst), 
    .B(_w141_), 
    .Y(_w231_)
  );
  NOR _NOR_101_ (
    .A(cu1_n_latch), 
    .B(cu1_n[2]), 
    .Y(_w142_)
  );
  NAND _NAND_66_ (
    .A(cu1_n_latch), 
    .B(_w188_), 
    .Y(_w143_)
  );
  NAND _NAND_67_ (
    .A(_w173_), 
    .B(_w143_), 
    .Y(_w144_)
  );
  NOR _NOR_102_ (
    .A(_w142_), 
    .B(_w144_), 
    .Y(_w232_)
  );
  NOR _NOR_103_ (
    .A(cu1_n_latch), 
    .B(cu1_n[1]), 
    .Y(_w145_)
  );
  NAND _NAND_68_ (
    .A(cu1_n_latch), 
    .B(_w189_), 
    .Y(_w146_)
  );
  NAND _NAND_69_ (
    .A(_w173_), 
    .B(_w146_), 
    .Y(_w147_)
  );
  NOR _NOR_104_ (
    .A(_w145_), 
    .B(_w147_), 
    .Y(_w233_)
  );
  NAND _NAND_70_ (
    .A(cu1_serIn), 
    .B(cu1_n_latch), 
    .Y(_w148_)
  );
  NOT _NOT_35_ (
    .A(_w148_), 
    .Y(_w149_)
  );
  NOR _NOR_105_ (
    .A(cu1_n_latch), 
    .B(_w189_), 
    .Y(_w150_)
  );
  NOR _NOR_106_ (
    .A(_w149_), 
    .B(_w150_), 
    .Y(_w151_)
  );
  NOR _NOR_107_ (
    .A(cu1_rst), 
    .B(_w151_), 
    .Y(_w234_)
  );
  NAND _NAND_71_ (
    .A(cu1_serIn), 
    .B(cu1_e_latch), 
    .Y(_w152_)
  );
  NOR _NOR_108_ (
    .A(cu1_e_latch), 
    .B(dp1_errflag), 
    .Y(_w153_)
  );
  NOR _NOR_109_ (
    .A(cu1_rst), 
    .B(_w153_), 
    .Y(_w154_)
  );
  NAND _NAND_72_ (
    .A(_w152_), 
    .B(_w154_), 
    .Y(_w155_)
  );
  NOT _NOT_36_ (
    .A(_w155_), 
    .Y(_w228_)
  );
  NOR _NOR_110_ (
    .A(cu1_d[1]), 
    .B(cu1_d_latch), 
    .Y(_w156_)
  );
  NAND _NAND_73_ (
    .A(_w174_), 
    .B(cu1_d_latch), 
    .Y(_w157_)
  );
  NAND _NAND_74_ (
    .A(_w173_), 
    .B(_w157_), 
    .Y(_w158_)
  );
  NOR _NOR_111_ (
    .A(_w156_), 
    .B(_w158_), 
    .Y(_w226_)
  );
  NAND _NAND_75_ (
    .A(cu1_serIn), 
    .B(cu1_d_latch), 
    .Y(_w159_)
  );
  NOT _NOT_37_ (
    .A(_w159_), 
    .Y(_w160_)
  );
  NOR _NOR_112_ (
    .A(_w174_), 
    .B(cu1_d_latch), 
    .Y(_w161_)
  );
  NOR _NOR_113_ (
    .A(_w160_), 
    .B(_w161_), 
    .Y(_w162_)
  );
  NOR _NOR_114_ (
    .A(cu1_rst), 
    .B(_w162_), 
    .Y(_w227_)
  );
  NAND _NAND_76_ (
    .A(cu1_serIn), 
    .B(cu1_outValid), 
    .Y(_w163_)
  );
  NOT _NOT_38_ (
    .A(_w163_), 
    .Y(_w164_)
  );
  NOR _NOR_115_ (
    .A(cu1_d[1]), 
    .B(_w163_), 
    .Y(_w165_)
  );
  NOT _NOT_39_ (
    .A(_w165_), 
    .Y(_w166_)
  );
  NOR _NOR_116_ (
    .A(cu1_d[0]), 
    .B(_w166_), 
    .Y(dp1_p0)
  );
  NAND _NAND_77_ (
    .A(cu1_d[1]), 
    .B(_w164_), 
    .Y(_w167_)
  );
  NOR _NOR_117_ (
    .A(cu1_d[0]), 
    .B(_w167_), 
    .Y(dp1_p1)
  );
  NAND _NAND_78_ (
    .A(cu1_d[0]), 
    .B(_w165_), 
    .Y(_w168_)
  );
  NOT _NOT_40_ (
    .A(_w168_), 
    .Y(dp1_p2)
  );
  NOR _NOR_118_ (
    .A(_w174_), 
    .B(_w167_), 
    .Y(dp1_p3)
  );
  DFF _DFF_0_ (
    .C(clk), 
    .D(_w212_), 
    .Q(cu1_state_cnt[9])
  );
  DFF _DFF_1_ (
    .C(clk), 
    .D(_w213_), 
    .Q(cu1_state_cnt[8])
  );
  DFF _DFF_2_ (
    .C(clk), 
    .D(_w214_), 
    .Q(cu1_state_cnt[7])
  );
  DFF _DFF_3_ (
    .C(clk), 
    .D(_w215_), 
    .Q(cu1_state_cnt[6])
  );
  DFF _DFF_4_ (
    .C(clk), 
    .D(_w216_), 
    .Q(cu1_state_cnt[5])
  );
  DFF _DFF_5_ (
    .C(clk), 
    .D(_w217_), 
    .Q(cu1_state_cnt[4])
  );
  DFF _DFF_6_ (
    .C(clk), 
    .D(_w218_), 
    .Q(cu1_state_cnt[3])
  );
  DFF _DFF_7_ (
    .C(clk), 
    .D(_w219_), 
    .Q(cu1_state_cnt[2])
  );
  DFF _DFF_8_ (
    .C(clk), 
    .D(_w220_), 
    .Q(cu1_state_cnt[1])
  );
  DFF _DFF_9_ (
    .C(clk), 
    .D(_w221_), 
    .Q(cu1_state_cnt[0])
  );
  DFF _DFF_10_ (
    .C(clk), 
    .D(_w209_), 
    .Q(cu1_e_latch)
  );
  DFF _DFF_11_ (
    .C(clk), 
    .D(_w208_), 
    .Q(cu1_d_latch)
  );
  DFF _DFF_12_ (
    .C(clk), 
    .D(_w210_), 
    .Q(cu1_n_latch)
  );
  DFF _DFF_13_ (
    .C(clk), 
    .D(_w211_), 
    .Q(cu1_outValid)
  );
  DFF _DFF_14_ (
    .C(clk), 
    .D(_w222_), 
    .Q(cu1_state_var[3])
  );
  DFF _DFF_15_ (
    .C(clk), 
    .D(_w223_), 
    .Q(cu1_state_var[2])
  );
  DFF _DFF_16_ (
    .C(clk), 
    .D(_w224_), 
    .Q(cu1_state_var[1])
  );
  DFF _DFF_17_ (
    .C(clk), 
    .D(_w225_), 
    .Q(cu1_state_var[0])
  );
  DFF _DFF_18_ (
    .C(clk), 
    .D(_w229_), 
    .Q(cu1_n[5])
  );
  DFF _DFF_19_ (
    .C(clk), 
    .D(_w230_), 
    .Q(cu1_n[4])
  );
  DFF _DFF_20_ (
    .C(clk), 
    .D(_w231_), 
    .Q(cu1_n[3])
  );
  DFF _DFF_21_ (
    .C(clk), 
    .D(_w232_), 
    .Q(cu1_n[2])
  );
  DFF _DFF_22_ (
    .C(clk), 
    .D(_w233_), 
    .Q(cu1_n[1])
  );
  DFF _DFF_23_ (
    .C(clk), 
    .D(_w234_), 
    .Q(cu1_n[0])
  );
  DFF _DFF_24_ (
    .C(clk), 
    .D(_w228_), 
    .Q(dp1_errflag)
  );
  DFF _DFF_25_ (
    .C(clk), 
    .D(_w226_), 
    .Q(cu1_d[1])
  );
  DFF _DFF_26_ (
    .C(clk), 
    .D(_w227_), 
    .Q(cu1_d[0])
  );
endmodule


