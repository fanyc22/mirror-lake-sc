package mirrorlakesc

import chisel3._

class RegisterFile extends Module {
  val io = IO(new Bundle {
    val rs1       = Input(UInt(5.W))
    val rs2       = Input(UInt(5.W))
    val rd        = Input(UInt(5.W))
    val writeData = Input(UInt(32.W))
    val regWrite  = Input(Bool())
    val rs1Data   = Output(UInt(32.W))
    val rs2Data   = Output(UInt(32.W))
  })
  val regs = RegInit(VecInit(Seq.fill(32)(0.U(32.W))))
  // x0 is always 0
  regs(0) := 0.U
  io.rs1Data := Mux(io.rs1 === 0.U, 0.U, regs(io.rs1))
  io.rs2Data := Mux(io.rs2 === 0.U, 0.U, regs(io.rs2))
  when(io.regWrite && io.rd =/= 0.U) {
    regs(io.rd) := io.writeData
  }
}