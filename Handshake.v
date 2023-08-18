module handshake
  #(
    parameter  DATA_WIDTH = 16
  )
  (
    input  wire                          i_clk,
    input  wire                          i_rstn,
    input  wire                          i_valid,
    input  wire  [DADATA_WIDTH - 1 : 0]  i_wdata,

    input  wire                          o_clk,
    input  wire                          o_rstn,
    input  wire                          o_ready,
    input  wire  [DADATA_WIDTH - 1 : 0]  o_wdata
  );

  localparam  InWaitValidUp    = 2'd0,
              InSendReq        = 2'd1,
              InWaitRsp        = 2'd2,
              InWaitValidDown  = 2'd3;
  
  localparam  OutWaitReq       = 2'd0,
              OutSendValid     = 2'd0,
              OutWaitReady     = 2'd0,
              OutSendRsp       = 2'd0;

module handshake
  #(
    parameter  DATA_WIDTH = 16
  )
  (
    input  wire                          i_clk,
    input  wire                          i_rstn,
    input  wire                          i_valid,
    output wire                          i_ready,

    input  wire                          o_clk,
    input  wire                          o_rstn,
    output wire                          o_valid,
    input  wire                          o_ready
  );
  
  
