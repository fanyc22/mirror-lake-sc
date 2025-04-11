module RegisterFile(
  input         clock,
  input         reset,
  input  [4:0]  io_rs1,
  input  [4:0]  io_rs2,
  input  [4:0]  io_rd,
  input  [31:0] io_writeData,
  input         io_regWrite,
  output [31:0] io_rs1Data,
  output [31:0] io_rs2Data
);
  reg [31:0] regs_0; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_1; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_2; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_3; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_4; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_5; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_6; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_7; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_8; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_9; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_10; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_11; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_12; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_13; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_14; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_15; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_16; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_17; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_18; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_19; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_20; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_21; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_22; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_23; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_24; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_25; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_26; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_27; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_28; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_29; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_30; // @[RegisterFile.scala 15:21]
  reg [31:0] regs_31; // @[RegisterFile.scala 15:21]
  wire [31:0] _GEN_1 = 5'h1 == io_rs1 ? regs_1 : regs_0; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_2 = 5'h2 == io_rs1 ? regs_2 : _GEN_1; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_3 = 5'h3 == io_rs1 ? regs_3 : _GEN_2; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_4 = 5'h4 == io_rs1 ? regs_4 : _GEN_3; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_5 = 5'h5 == io_rs1 ? regs_5 : _GEN_4; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_6 = 5'h6 == io_rs1 ? regs_6 : _GEN_5; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_7 = 5'h7 == io_rs1 ? regs_7 : _GEN_6; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_8 = 5'h8 == io_rs1 ? regs_8 : _GEN_7; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_9 = 5'h9 == io_rs1 ? regs_9 : _GEN_8; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_10 = 5'ha == io_rs1 ? regs_10 : _GEN_9; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_11 = 5'hb == io_rs1 ? regs_11 : _GEN_10; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_12 = 5'hc == io_rs1 ? regs_12 : _GEN_11; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_13 = 5'hd == io_rs1 ? regs_13 : _GEN_12; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_14 = 5'he == io_rs1 ? regs_14 : _GEN_13; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_15 = 5'hf == io_rs1 ? regs_15 : _GEN_14; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_16 = 5'h10 == io_rs1 ? regs_16 : _GEN_15; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_17 = 5'h11 == io_rs1 ? regs_17 : _GEN_16; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_18 = 5'h12 == io_rs1 ? regs_18 : _GEN_17; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_19 = 5'h13 == io_rs1 ? regs_19 : _GEN_18; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_20 = 5'h14 == io_rs1 ? regs_20 : _GEN_19; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_21 = 5'h15 == io_rs1 ? regs_21 : _GEN_20; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_22 = 5'h16 == io_rs1 ? regs_22 : _GEN_21; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_23 = 5'h17 == io_rs1 ? regs_23 : _GEN_22; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_24 = 5'h18 == io_rs1 ? regs_24 : _GEN_23; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_25 = 5'h19 == io_rs1 ? regs_25 : _GEN_24; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_26 = 5'h1a == io_rs1 ? regs_26 : _GEN_25; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_27 = 5'h1b == io_rs1 ? regs_27 : _GEN_26; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_28 = 5'h1c == io_rs1 ? regs_28 : _GEN_27; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_29 = 5'h1d == io_rs1 ? regs_29 : _GEN_28; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_30 = 5'h1e == io_rs1 ? regs_30 : _GEN_29; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_31 = 5'h1f == io_rs1 ? regs_31 : _GEN_30; // @[RegisterFile.scala 18:{20,20}]
  wire [31:0] _GEN_33 = 5'h1 == io_rs2 ? regs_1 : regs_0; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_34 = 5'h2 == io_rs2 ? regs_2 : _GEN_33; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_35 = 5'h3 == io_rs2 ? regs_3 : _GEN_34; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_36 = 5'h4 == io_rs2 ? regs_4 : _GEN_35; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_37 = 5'h5 == io_rs2 ? regs_5 : _GEN_36; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_38 = 5'h6 == io_rs2 ? regs_6 : _GEN_37; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_39 = 5'h7 == io_rs2 ? regs_7 : _GEN_38; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_40 = 5'h8 == io_rs2 ? regs_8 : _GEN_39; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_41 = 5'h9 == io_rs2 ? regs_9 : _GEN_40; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_42 = 5'ha == io_rs2 ? regs_10 : _GEN_41; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_43 = 5'hb == io_rs2 ? regs_11 : _GEN_42; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_44 = 5'hc == io_rs2 ? regs_12 : _GEN_43; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_45 = 5'hd == io_rs2 ? regs_13 : _GEN_44; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_46 = 5'he == io_rs2 ? regs_14 : _GEN_45; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_47 = 5'hf == io_rs2 ? regs_15 : _GEN_46; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_48 = 5'h10 == io_rs2 ? regs_16 : _GEN_47; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_49 = 5'h11 == io_rs2 ? regs_17 : _GEN_48; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_50 = 5'h12 == io_rs2 ? regs_18 : _GEN_49; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_51 = 5'h13 == io_rs2 ? regs_19 : _GEN_50; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_52 = 5'h14 == io_rs2 ? regs_20 : _GEN_51; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_53 = 5'h15 == io_rs2 ? regs_21 : _GEN_52; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_54 = 5'h16 == io_rs2 ? regs_22 : _GEN_53; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_55 = 5'h17 == io_rs2 ? regs_23 : _GEN_54; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_56 = 5'h18 == io_rs2 ? regs_24 : _GEN_55; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_57 = 5'h19 == io_rs2 ? regs_25 : _GEN_56; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_58 = 5'h1a == io_rs2 ? regs_26 : _GEN_57; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_59 = 5'h1b == io_rs2 ? regs_27 : _GEN_58; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_60 = 5'h1c == io_rs2 ? regs_28 : _GEN_59; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_61 = 5'h1d == io_rs2 ? regs_29 : _GEN_60; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_62 = 5'h1e == io_rs2 ? regs_30 : _GEN_61; // @[RegisterFile.scala 19:{20,20}]
  wire [31:0] _GEN_63 = 5'h1f == io_rs2 ? regs_31 : _GEN_62; // @[RegisterFile.scala 19:{20,20}]
  assign io_rs1Data = io_rs1 == 5'h0 ? 32'h0 : _GEN_31; // @[RegisterFile.scala 18:20]
  assign io_rs2Data = io_rs2 == 5'h0 ? 32'h0 : _GEN_63; // @[RegisterFile.scala 19:20]
  always @(posedge clock) begin
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_0 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h0 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_0 <= io_writeData; // @[RegisterFile.scala 21:17]
      end else begin
        regs_0 <= 32'h0; // @[RegisterFile.scala 17:11]
      end
    end else begin
      regs_0 <= 32'h0; // @[RegisterFile.scala 17:11]
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_1 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h1 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_1 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_2 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h2 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_2 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_3 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h3 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_3 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_4 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h4 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_4 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_5 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h5 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_5 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_6 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h6 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_6 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_7 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h7 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_7 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_8 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h8 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_8 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_9 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h9 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_9 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_10 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'ha == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_10 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_11 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'hb == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_11 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_12 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'hc == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_12 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_13 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'hd == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_13 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_14 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'he == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_14 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_15 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'hf == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_15 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_16 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h10 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_16 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_17 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h11 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_17 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_18 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h12 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_18 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_19 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h13 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_19 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_20 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h14 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_20 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_21 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h15 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_21 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_22 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h16 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_22 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_23 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h17 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_23 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_24 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h18 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_24 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_25 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h19 == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_25 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_26 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h1a == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_26 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_27 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h1b == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_27 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_28 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h1c == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_28 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_29 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h1d == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_29 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_30 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h1e == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_30 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
    if (reset) begin // @[RegisterFile.scala 15:21]
      regs_31 <= 32'h0; // @[RegisterFile.scala 15:21]
    end else if (io_regWrite & io_rd != 5'h0) begin // @[RegisterFile.scala 20:38]
      if (5'h1f == io_rd) begin // @[RegisterFile.scala 21:17]
        regs_31 <= io_writeData; // @[RegisterFile.scala 21:17]
      end
    end
  end
endmodule
module ALU(
  input  [3:0]  io_op,
  input  [31:0] io_a,
  input  [31:0] io_b,
  output [31:0] io_result
);
  wire [31:0] _io_result_T_1 = io_a + io_b; // @[ALU.scala 16:34]
  wire [31:0] _io_result_T_3 = io_a - io_b; // @[ALU.scala 17:34]
  wire [62:0] _GEN_10 = {{31'd0}, io_a}; // @[ALU.scala 18:34]
  wire [62:0] _io_result_T_5 = _GEN_10 << io_b[4:0]; // @[ALU.scala 18:34]
  wire [31:0] _io_result_T_6 = io_a; // @[ALU.scala 19:35]
  wire [31:0] _io_result_T_7 = io_b; // @[ALU.scala 19:49]
  wire [31:0] _io_result_T_10 = io_a ^ io_b; // @[ALU.scala 21:34]
  wire [31:0] _io_result_T_12 = io_a >> io_b[4:0]; // @[ALU.scala 22:34]
  wire [31:0] _io_result_T_16 = $signed(io_a) >>> io_b[4:0]; // @[ALU.scala 23:56]
  wire [31:0] _io_result_T_17 = io_a | io_b; // @[ALU.scala 24:34]
  wire [31:0] _io_result_T_18 = io_a & io_b; // @[ALU.scala 25:34]
  wire [31:0] _GEN_0 = 4'h9 == io_op ? _io_result_T_18 : 32'h0; // @[ALU.scala 14:13 15:17 25:26]
  wire [31:0] _GEN_1 = 4'h8 == io_op ? _io_result_T_17 : _GEN_0; // @[ALU.scala 15:17 24:26]
  wire [31:0] _GEN_2 = 4'h7 == io_op ? _io_result_T_16 : _GEN_1; // @[ALU.scala 15:17 23:26]
  wire [31:0] _GEN_3 = 4'h6 == io_op ? _io_result_T_12 : _GEN_2; // @[ALU.scala 15:17 22:26]
  wire [31:0] _GEN_4 = 4'h5 == io_op ? _io_result_T_10 : _GEN_3; // @[ALU.scala 15:17 21:26]
  wire [31:0] _GEN_5 = 4'h4 == io_op ? {{31'd0}, io_a < io_b} : _GEN_4; // @[ALU.scala 15:17 20:26]
  wire [31:0] _GEN_6 = 4'h3 == io_op ? {{31'd0}, $signed(_io_result_T_6) < $signed(_io_result_T_7)} : _GEN_5; // @[ALU.scala 15:17 19:26]
  wire [62:0] _GEN_7 = 4'h2 == io_op ? _io_result_T_5 : {{31'd0}, _GEN_6}; // @[ALU.scala 15:17 18:26]
  wire [62:0] _GEN_8 = 4'h1 == io_op ? {{31'd0}, _io_result_T_3} : _GEN_7; // @[ALU.scala 15:17 17:26]
  wire [62:0] _GEN_9 = 4'h0 == io_op ? {{31'd0}, _io_result_T_1} : _GEN_8; // @[ALU.scala 15:17 16:26]
  assign io_result = _GEN_9[31:0];
endmodule
module MirrorLakeSC(
  input         clock,
  input         reset,
  output [31:0] io_imem_addr,
  input  [31:0] io_imem_inst,
  output [31:0] io_dmem_addr,
  output [31:0] io_dmem_wdata,
  input  [31:0] io_dmem_rdata,
  output        io_dmem_wen,
  output [3:0]  io_dmem_wmask
);
  wire  regfile_clock; // @[MirrorLakeSC.scala 25:23]
  wire  regfile_reset; // @[MirrorLakeSC.scala 25:23]
  wire [4:0] regfile_io_rs1; // @[MirrorLakeSC.scala 25:23]
  wire [4:0] regfile_io_rs2; // @[MirrorLakeSC.scala 25:23]
  wire [4:0] regfile_io_rd; // @[MirrorLakeSC.scala 25:23]
  wire [31:0] regfile_io_writeData; // @[MirrorLakeSC.scala 25:23]
  wire  regfile_io_regWrite; // @[MirrorLakeSC.scala 25:23]
  wire [31:0] regfile_io_rs1Data; // @[MirrorLakeSC.scala 25:23]
  wire [31:0] regfile_io_rs2Data; // @[MirrorLakeSC.scala 25:23]
  wire [3:0] alu_io_op; // @[MirrorLakeSC.scala 26:19]
  wire [31:0] alu_io_a; // @[MirrorLakeSC.scala 26:19]
  wire [31:0] alu_io_b; // @[MirrorLakeSC.scala 26:19]
  wire [31:0] alu_io_result; // @[MirrorLakeSC.scala 26:19]
  reg [31:0] pc; // @[MirrorLakeSC.scala 20:19]
  wire [6:0] opcode = io_imem_inst[6:0]; // @[MirrorLakeSC.scala 29:20]
  wire [4:0] rd = io_imem_inst[11:7]; // @[MirrorLakeSC.scala 30:20]
  wire [2:0] funct3 = io_imem_inst[14:12]; // @[MirrorLakeSC.scala 31:20]
  wire [6:0] funct7 = io_imem_inst[31:25]; // @[MirrorLakeSC.scala 34:20]
  wire [19:0] _immI_T_2 = io_imem_inst[31] ? 20'hfffff : 20'h0; // @[Bitwise.scala 77:12]
  wire [31:0] immI = {_immI_T_2,io_imem_inst[31:20]}; // @[MirrorLakeSC.scala 41:51]
  wire [31:0] immS = {_immI_T_2,funct7,rd}; // @[MirrorLakeSC.scala 42:63]
  wire [18:0] _immB_T_2 = io_imem_inst[31] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 77:12]
  wire [31:0] immB = {_immB_T_2,io_imem_inst[31],io_imem_inst[7],io_imem_inst[30:25],io_imem_inst[11:8],1'h0}; // @[MirrorLakeSC.scala 43:92]
  wire [31:0] immU = {io_imem_inst[31:12],12'h0}; // @[Cat.scala 33:92]
  wire [10:0] _immJ_T_2 = io_imem_inst[31] ? 11'h7ff : 11'h0; // @[Bitwise.scala 77:12]
  wire [31:0] immJ = {_immJ_T_2,io_imem_inst[31],io_imem_inst[19:12],io_imem_inst[20],io_imem_inst[30:21],1'h0}; // @[MirrorLakeSC.scala 45:94]
  wire [31:0] _nextPC_T_1 = pc + 32'h4; // @[MirrorLakeSC.scala 53:37]
  wire [31:0] _writeBackData_T_1 = pc + immU; // @[MirrorLakeSC.scala 72:27]
  wire [31:0] _nextPC_T_6 = $signed(pc) + $signed(immJ); // @[MirrorLakeSC.scala 79:36]
  wire [31:0] _nextPC_T_10 = $signed(regfile_io_rs1Data) + $signed(immI); // @[MirrorLakeSC.scala 85:46]
  wire [31:0] _nextPC_T_11 = $signed(regfile_io_rs1Data) + $signed(immI); // @[MirrorLakeSC.scala 85:54]
  wire [31:0] _nextPC_T_13 = _nextPC_T_11 & 32'hfffffffe; // @[MirrorLakeSC.scala 85:61]
  wire  _T_5 = 3'h0 == funct3; // @[MirrorLakeSC.scala 89:22]
  wire  _T_6 = 3'h1 == funct3; // @[MirrorLakeSC.scala 89:22]
  wire  _T_7 = 3'h4 == funct3; // @[MirrorLakeSC.scala 89:22]
  wire  _T_8 = 3'h5 == funct3; // @[MirrorLakeSC.scala 89:22]
  wire  _T_9 = 3'h6 == funct3; // @[MirrorLakeSC.scala 89:22]
  wire  _T_10 = 3'h7 == funct3; // @[MirrorLakeSC.scala 89:22]
  wire  _GEN_0 = 3'h7 == funct3 & regfile_io_rs1Data >= regfile_io_rs2Data; // @[MirrorLakeSC.scala 89:22 61:32 95:36]
  wire  _GEN_1 = 3'h6 == funct3 ? regfile_io_rs1Data < regfile_io_rs2Data : _GEN_0; // @[MirrorLakeSC.scala 89:22 94:36]
  wire  _GEN_2 = 3'h5 == funct3 ? $signed(regfile_io_rs1Data) >= $signed(regfile_io_rs2Data) : _GEN_1; // @[MirrorLakeSC.scala 89:22 93:36]
  wire  _GEN_3 = 3'h4 == funct3 ? $signed(regfile_io_rs1Data) < $signed(regfile_io_rs2Data) : _GEN_2; // @[MirrorLakeSC.scala 89:22 92:36]
  wire  _GEN_4 = 3'h1 == funct3 ? regfile_io_rs1Data != regfile_io_rs2Data : _GEN_3; // @[MirrorLakeSC.scala 89:22 91:36]
  wire  _GEN_5 = 3'h0 == funct3 ? regfile_io_rs1Data == regfile_io_rs2Data : _GEN_4; // @[MirrorLakeSC.scala 89:22 90:36]
  wire [31:0] _nextPC_T_18 = $signed(pc) + $signed(immB); // @[MirrorLakeSC.scala 98:38]
  wire  _GEN_67 = 7'h67 == opcode ? 1'h0 : 7'h63 == opcode & _GEN_5; // @[MirrorLakeSC.scala 64:18 61:32]
  wire  _GEN_77 = 7'h6f == opcode ? 1'h0 : _GEN_67; // @[MirrorLakeSC.scala 64:18 61:32]
  wire  _GEN_87 = 7'h17 == opcode ? 1'h0 : _GEN_77; // @[MirrorLakeSC.scala 64:18 61:32]
  wire  branchTaken = 7'h37 == opcode ? 1'h0 : _GEN_87; // @[MirrorLakeSC.scala 64:18 61:32]
  wire [31:0] _GEN_6 = branchTaken ? _nextPC_T_18 : _nextPC_T_1; // @[MirrorLakeSC.scala 97:25 98:16 53:33]
  wire [5:0] byteShift = _nextPC_T_10[1:0] * 4'h8; // @[MirrorLakeSC.scala 110:37]
  wire [31:0] _byteData_T = io_dmem_rdata >> byteShift; // @[MirrorLakeSC.scala 111:36]
  wire [7:0] byteData = _byteData_T[7:0]; // @[MirrorLakeSC.scala 111:49]
  wire [23:0] _writeBackData_T_8 = byteData[7] ? 24'hffffff : 24'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _writeBackData_T_9 = {_writeBackData_T_8,byteData}; // @[Cat.scala 33:92]
  wire [5:0] halfShift = _nextPC_T_10[1] * 5'h10; // @[MirrorLakeSC.scala 115:35]
  wire [31:0] _halfData_T = io_dmem_rdata >> halfShift; // @[MirrorLakeSC.scala 116:36]
  wire [15:0] halfData = _halfData_T[15:0]; // @[MirrorLakeSC.scala 116:49]
  wire [15:0] _writeBackData_T_12 = halfData[15] ? 16'hffff : 16'h0; // @[Bitwise.scala 77:12]
  wire [31:0] _writeBackData_T_13 = {_writeBackData_T_12,halfData}; // @[Cat.scala 33:92]
  wire  _T_14 = 3'h2 == funct3; // @[MirrorLakeSC.scala 108:22]
  wire [31:0] _writeBackData_T_14 = {24'h0,byteData}; // @[Cat.scala 33:92]
  wire [31:0] _writeBackData_T_15 = {16'h0,halfData}; // @[Cat.scala 33:92]
  wire [31:0] _GEN_7 = _T_8 ? _writeBackData_T_15 : 32'h0; // @[MirrorLakeSC.scala 108:22 130:25 49:33]
  wire [31:0] _GEN_8 = _T_7 ? _writeBackData_T_14 : _GEN_7; // @[MirrorLakeSC.scala 108:22 125:25]
  wire [31:0] _GEN_9 = 3'h2 == funct3 ? io_dmem_rdata : _GEN_8; // @[MirrorLakeSC.scala 108:22 120:25]
  wire [31:0] _GEN_10 = _T_6 ? _writeBackData_T_13 : _GEN_9; // @[MirrorLakeSC.scala 108:22 117:25]
  wire [31:0] _GEN_11 = _T_5 ? _writeBackData_T_9 : _GEN_10; // @[MirrorLakeSC.scala 108:22 112:25]
  wire [31:0] addr_1 = $signed(regfile_io_rs1Data) + $signed(immS); // @[MirrorLakeSC.scala 137:46]
  wire [31:0] _io_dmem_addr_T_1 = $signed(regfile_io_rs1Data) + $signed(immS); // @[MirrorLakeSC.scala 138:28]
  wire [7:0] storeByte = regfile_io_rs2Data[7:0]; // @[MirrorLakeSC.scala 142:45]
  wire [31:0] _io_dmem_wdata_T = {storeByte,storeByte,storeByte,storeByte}; // @[Cat.scala 33:92]
  wire [1:0] byteSel = addr_1[1:0]; // @[MirrorLakeSC.scala 144:29]
  wire [3:0] _io_dmem_wmask_T = 4'h1 << byteSel; // @[MirrorLakeSC.scala 145:33]
  wire [15:0] storeHalf = regfile_io_rs2Data[15:0]; // @[MirrorLakeSC.scala 148:45]
  wire [31:0] _io_dmem_wdata_T_1 = {storeHalf,storeHalf}; // @[Cat.scala 33:92]
  wire  halfSel = addr_1[1]; // @[MirrorLakeSC.scala 150:29]
  wire [3:0] _io_dmem_wmask_T_2 = ~halfSel ? 4'h3 : 4'hc; // @[MirrorLakeSC.scala 151:31]
  wire [31:0] _GEN_12 = _T_14 ? regfile_io_rs2Data : 32'h0; // @[MirrorLakeSC.scala 140:22 154:25 57:17]
  wire [3:0] _GEN_13 = _T_14 ? 4'hf : 4'h0; // @[MirrorLakeSC.scala 140:22 155:25 59:17]
  wire [31:0] _GEN_14 = _T_6 ? _io_dmem_wdata_T_1 : _GEN_12; // @[MirrorLakeSC.scala 140:22 149:25]
  wire [3:0] _GEN_15 = _T_6 ? _io_dmem_wmask_T_2 : _GEN_13; // @[MirrorLakeSC.scala 140:22 151:25]
  wire [31:0] _GEN_16 = _T_5 ? _io_dmem_wdata_T : _GEN_14; // @[MirrorLakeSC.scala 140:22 143:25]
  wire [3:0] _GEN_17 = _T_5 ? _io_dmem_wmask_T : _GEN_15; // @[MirrorLakeSC.scala 140:22 145:25]
  wire  _T_24 = 3'h3 == funct3; // @[MirrorLakeSC.scala 162:22]
  wire  _aluOp_T = funct7 == 7'h20; // @[MirrorLakeSC.scala 170:44]
  wire [3:0] _aluOp_T_1 = funct7 == 7'h20 ? 4'h7 : 4'h6; // @[MirrorLakeSC.scala 170:36]
  wire [3:0] _GEN_18 = _T_8 ? _aluOp_T_1 : 4'h0; // @[MirrorLakeSC.scala 162:22 170:30 50:33]
  wire [3:0] _GEN_19 = _T_6 ? 4'h2 : _GEN_18; // @[MirrorLakeSC.scala 162:22 169:30]
  wire [3:0] _GEN_20 = _T_10 ? 4'h9 : _GEN_19; // @[MirrorLakeSC.scala 162:22 168:30]
  wire [3:0] _GEN_21 = _T_9 ? 4'h8 : _GEN_20; // @[MirrorLakeSC.scala 162:22 167:30]
  wire [3:0] _GEN_22 = _T_7 ? 4'h5 : _GEN_21; // @[MirrorLakeSC.scala 162:22 166:30]
  wire [3:0] _GEN_23 = 3'h3 == funct3 ? 4'h4 : _GEN_22; // @[MirrorLakeSC.scala 162:22 165:30]
  wire [3:0] _GEN_24 = _T_14 ? 4'h3 : _GEN_23; // @[MirrorLakeSC.scala 162:22 164:30]
  wire [3:0] _GEN_25 = _T_5 ? 4'h0 : _GEN_24; // @[MirrorLakeSC.scala 162:22 163:30]
  wire [31:0] _aluSrc2_T = {_immI_T_2,io_imem_inst[31:20]}; // @[MirrorLakeSC.scala 172:23]
  wire [3:0] _aluOp_T_3 = _aluOp_T ? 4'h1 : 4'h0; // @[MirrorLakeSC.scala 178:36]
  wire [3:0] _GEN_26 = _T_10 ? 4'h9 : 4'h0; // @[MirrorLakeSC.scala 177:22 185:30 50:33]
  wire [3:0] _GEN_27 = _T_9 ? 4'h8 : _GEN_26; // @[MirrorLakeSC.scala 177:22 184:30]
  wire [3:0] _GEN_28 = _T_8 ? _aluOp_T_1 : _GEN_27; // @[MirrorLakeSC.scala 177:22 183:30]
  wire [3:0] _GEN_29 = _T_7 ? 4'h5 : _GEN_28; // @[MirrorLakeSC.scala 177:22 182:30]
  wire [3:0] _GEN_30 = _T_24 ? 4'h4 : _GEN_29; // @[MirrorLakeSC.scala 177:22 181:30]
  wire [3:0] _GEN_31 = _T_14 ? 4'h3 : _GEN_30; // @[MirrorLakeSC.scala 177:22 180:30]
  wire [3:0] _GEN_32 = _T_6 ? 4'h2 : _GEN_31; // @[MirrorLakeSC.scala 177:22 179:30]
  wire [3:0] _GEN_33 = _T_5 ? _aluOp_T_3 : _GEN_32; // @[MirrorLakeSC.scala 177:22 178:30]
  wire [3:0] _GEN_34 = 7'h33 == opcode ? _GEN_33 : 4'h0; // @[MirrorLakeSC.scala 64:18 50:33]
  wire [3:0] _GEN_36 = 7'h13 == opcode ? _GEN_25 : _GEN_34; // @[MirrorLakeSC.scala 64:18]
  wire [31:0] _GEN_37 = 7'h13 == opcode ? _aluSrc2_T : regfile_io_rs2Data; // @[MirrorLakeSC.scala 172:15 64:18 52:33]
  wire  _GEN_38 = 7'h13 == opcode | 7'h33 == opcode; // @[MirrorLakeSC.scala 173:16 64:18]
  wire [31:0] _GEN_39 = 7'h23 == opcode ? _io_dmem_addr_T_1 : 32'h0; // @[MirrorLakeSC.scala 64:18 138:20 56:17]
  wire [31:0] _GEN_41 = 7'h23 == opcode ? _GEN_16 : 32'h0; // @[MirrorLakeSC.scala 57:17 64:18]
  wire [3:0] _GEN_42 = 7'h23 == opcode ? _GEN_17 : 4'h0; // @[MirrorLakeSC.scala 59:17 64:18]
  wire [3:0] _GEN_43 = 7'h23 == opcode ? 4'h0 : _GEN_36; // @[MirrorLakeSC.scala 64:18 50:33]
  wire [31:0] _GEN_44 = 7'h23 == opcode ? regfile_io_rs2Data : _GEN_37; // @[MirrorLakeSC.scala 64:18 52:33]
  wire  _GEN_45 = 7'h23 == opcode ? 1'h0 : _GEN_38; // @[MirrorLakeSC.scala 64:18 48:33]
  wire [31:0] _GEN_46 = 7'h3 == opcode ? _nextPC_T_11 : _GEN_39; // @[MirrorLakeSC.scala 64:18 105:20]
  wire  _GEN_47 = 7'h3 == opcode ? 1'h0 : 7'h23 == opcode; // @[MirrorLakeSC.scala 64:18 106:19]
  wire [31:0] _GEN_48 = 7'h3 == opcode ? _GEN_11 : 32'h0; // @[MirrorLakeSC.scala 64:18 49:33]
  wire  _GEN_49 = 7'h3 == opcode | _GEN_45; // @[MirrorLakeSC.scala 133:16 64:18]
  wire [31:0] _GEN_50 = 7'h3 == opcode ? 32'h0 : _GEN_41; // @[MirrorLakeSC.scala 57:17 64:18]
  wire [3:0] _GEN_51 = 7'h3 == opcode ? 4'h0 : _GEN_42; // @[MirrorLakeSC.scala 59:17 64:18]
  wire [3:0] _GEN_52 = 7'h3 == opcode ? 4'h0 : _GEN_43; // @[MirrorLakeSC.scala 64:18 50:33]
  wire [31:0] _GEN_53 = 7'h3 == opcode ? regfile_io_rs2Data : _GEN_44; // @[MirrorLakeSC.scala 64:18 52:33]
  wire [31:0] _GEN_55 = 7'h63 == opcode ? _GEN_6 : _nextPC_T_1; // @[MirrorLakeSC.scala 64:18 53:33]
  wire [31:0] _GEN_56 = 7'h63 == opcode ? 32'h0 : _GEN_46; // @[MirrorLakeSC.scala 56:17 64:18]
  wire  _GEN_57 = 7'h63 == opcode ? 1'h0 : _GEN_47; // @[MirrorLakeSC.scala 58:17 64:18]
  wire [31:0] _GEN_58 = 7'h63 == opcode ? 32'h0 : _GEN_48; // @[MirrorLakeSC.scala 64:18 49:33]
  wire  _GEN_59 = 7'h63 == opcode ? 1'h0 : _GEN_49; // @[MirrorLakeSC.scala 64:18 48:33]
  wire [31:0] _GEN_60 = 7'h63 == opcode ? 32'h0 : _GEN_50; // @[MirrorLakeSC.scala 57:17 64:18]
  wire [3:0] _GEN_61 = 7'h63 == opcode ? 4'h0 : _GEN_51; // @[MirrorLakeSC.scala 59:17 64:18]
  wire [3:0] _GEN_62 = 7'h63 == opcode ? 4'h0 : _GEN_52; // @[MirrorLakeSC.scala 64:18 50:33]
  wire [31:0] _GEN_63 = 7'h63 == opcode ? regfile_io_rs2Data : _GEN_53; // @[MirrorLakeSC.scala 64:18 52:33]
  wire [31:0] _GEN_64 = 7'h67 == opcode ? _nextPC_T_1 : _GEN_58; // @[MirrorLakeSC.scala 64:18 83:21]
  wire  _GEN_65 = 7'h67 == opcode | _GEN_59; // @[MirrorLakeSC.scala 64:18 84:16]
  wire [31:0] _GEN_66 = 7'h67 == opcode ? _nextPC_T_13 : _GEN_55; // @[MirrorLakeSC.scala 64:18 85:14]
  wire [31:0] _GEN_68 = 7'h67 == opcode ? 32'h0 : _GEN_56; // @[MirrorLakeSC.scala 56:17 64:18]
  wire  _GEN_69 = 7'h67 == opcode ? 1'h0 : _GEN_57; // @[MirrorLakeSC.scala 58:17 64:18]
  wire [31:0] _GEN_70 = 7'h67 == opcode ? 32'h0 : _GEN_60; // @[MirrorLakeSC.scala 57:17 64:18]
  wire [3:0] _GEN_71 = 7'h67 == opcode ? 4'h0 : _GEN_61; // @[MirrorLakeSC.scala 59:17 64:18]
  wire [3:0] _GEN_72 = 7'h67 == opcode ? 4'h0 : _GEN_62; // @[MirrorLakeSC.scala 64:18 50:33]
  wire [31:0] _GEN_73 = 7'h67 == opcode ? regfile_io_rs2Data : _GEN_63; // @[MirrorLakeSC.scala 64:18 52:33]
  wire [31:0] _GEN_74 = 7'h6f == opcode ? _nextPC_T_1 : _GEN_64; // @[MirrorLakeSC.scala 64:18 77:21]
  wire  _GEN_75 = 7'h6f == opcode | _GEN_65; // @[MirrorLakeSC.scala 64:18 78:16]
  wire [31:0] _GEN_78 = 7'h6f == opcode ? 32'h0 : _GEN_68; // @[MirrorLakeSC.scala 56:17 64:18]
  wire  _GEN_79 = 7'h6f == opcode ? 1'h0 : _GEN_69; // @[MirrorLakeSC.scala 58:17 64:18]
  wire [31:0] _GEN_80 = 7'h6f == opcode ? 32'h0 : _GEN_70; // @[MirrorLakeSC.scala 57:17 64:18]
  wire [3:0] _GEN_81 = 7'h6f == opcode ? 4'h0 : _GEN_71; // @[MirrorLakeSC.scala 59:17 64:18]
  wire [3:0] _GEN_82 = 7'h6f == opcode ? 4'h0 : _GEN_72; // @[MirrorLakeSC.scala 64:18 50:33]
  wire [31:0] _GEN_83 = 7'h6f == opcode ? regfile_io_rs2Data : _GEN_73; // @[MirrorLakeSC.scala 64:18 52:33]
  wire [31:0] _GEN_84 = 7'h17 == opcode ? _writeBackData_T_1 : _GEN_74; // @[MirrorLakeSC.scala 64:18 72:21]
  wire  _GEN_85 = 7'h17 == opcode | _GEN_75; // @[MirrorLakeSC.scala 64:18 73:16]
  wire [31:0] _GEN_88 = 7'h17 == opcode ? 32'h0 : _GEN_78; // @[MirrorLakeSC.scala 56:17 64:18]
  wire  _GEN_89 = 7'h17 == opcode ? 1'h0 : _GEN_79; // @[MirrorLakeSC.scala 58:17 64:18]
  wire [31:0] _GEN_90 = 7'h17 == opcode ? 32'h0 : _GEN_80; // @[MirrorLakeSC.scala 57:17 64:18]
  wire [3:0] _GEN_91 = 7'h17 == opcode ? 4'h0 : _GEN_81; // @[MirrorLakeSC.scala 59:17 64:18]
  wire [3:0] _GEN_92 = 7'h17 == opcode ? 4'h0 : _GEN_82; // @[MirrorLakeSC.scala 64:18 50:33]
  wire [31:0] _GEN_93 = 7'h17 == opcode ? regfile_io_rs2Data : _GEN_83; // @[MirrorLakeSC.scala 64:18 52:33]
  wire [31:0] _GEN_94 = 7'h37 == opcode ? immU : _GEN_84; // @[MirrorLakeSC.scala 64:18 67:21]
  RegisterFile regfile ( // @[MirrorLakeSC.scala 25:23]
    .clock(regfile_clock),
    .reset(regfile_reset),
    .io_rs1(regfile_io_rs1),
    .io_rs2(regfile_io_rs2),
    .io_rd(regfile_io_rd),
    .io_writeData(regfile_io_writeData),
    .io_regWrite(regfile_io_regWrite),
    .io_rs1Data(regfile_io_rs1Data),
    .io_rs2Data(regfile_io_rs2Data)
  );
  ALU alu ( // @[MirrorLakeSC.scala 26:19]
    .io_op(alu_io_op),
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_result(alu_io_result)
  );
  assign io_imem_addr = pc; // @[MirrorLakeSC.scala 21:16]
  assign io_dmem_addr = 7'h37 == opcode ? 32'h0 : _GEN_88; // @[MirrorLakeSC.scala 56:17 64:18]
  assign io_dmem_wdata = 7'h37 == opcode ? 32'h0 : _GEN_90; // @[MirrorLakeSC.scala 57:17 64:18]
  assign io_dmem_wen = 7'h37 == opcode ? 1'h0 : _GEN_89; // @[MirrorLakeSC.scala 58:17 64:18]
  assign io_dmem_wmask = 7'h37 == opcode ? 4'h0 : _GEN_91; // @[MirrorLakeSC.scala 59:17 64:18]
  assign regfile_clock = clock;
  assign regfile_reset = reset;
  assign regfile_io_rs1 = io_imem_inst[19:15]; // @[MirrorLakeSC.scala 32:20]
  assign regfile_io_rs2 = io_imem_inst[24:20]; // @[MirrorLakeSC.scala 33:20]
  assign regfile_io_rd = io_imem_inst[11:7]; // @[MirrorLakeSC.scala 30:20]
  assign regfile_io_writeData = opcode == 7'h33 | opcode == 7'h13 ? alu_io_result : _GEN_94; // @[MirrorLakeSC.scala 204:57 205:19]
  assign regfile_io_regWrite = 7'h37 == opcode | _GEN_85; // @[MirrorLakeSC.scala 64:18 68:16]
  assign alu_io_op = 7'h37 == opcode ? 4'h0 : _GEN_92; // @[MirrorLakeSC.scala 64:18 50:33]
  assign alu_io_a = regfile_io_rs1Data; // @[MirrorLakeSC.scala 51:{33,33}]
  assign alu_io_b = 7'h37 == opcode ? regfile_io_rs2Data : _GEN_93; // @[MirrorLakeSC.scala 64:18 52:33]
  always @(posedge clock) begin
    if (reset) begin // @[MirrorLakeSC.scala 20:19]
      pc <= 32'h0; // @[MirrorLakeSC.scala 20:19]
    end else if (7'h37 == opcode) begin // @[MirrorLakeSC.scala 64:18]
      pc <= _nextPC_T_1; // @[MirrorLakeSC.scala 53:33]
    end else if (7'h17 == opcode) begin // @[MirrorLakeSC.scala 64:18]
      pc <= _nextPC_T_1; // @[MirrorLakeSC.scala 53:33]
    end else if (7'h6f == opcode) begin // @[MirrorLakeSC.scala 64:18]
      pc <= _nextPC_T_6; // @[MirrorLakeSC.scala 79:14]
    end else begin
      pc <= _GEN_66;
    end
  end
endmodule
