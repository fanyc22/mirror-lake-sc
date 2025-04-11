package mirrorlakesc

import chisel3._
import chisel3.util._
import ALUOps._

class ALU extends Module {
  val io = IO(new Bundle {
    val op     = Input(UInt(4.W))
    val a      = Input(UInt(32.W))
    val b      = Input(UInt(32.W))
    val result = Output(UInt(32.W))
  })
  io.result := 0.U
  switch(io.op) {
    is(ADD)  { io.result := io.a + io.b }
    is(SUB)  { io.result := io.a - io.b }
    is(SLL)  { io.result := io.a << io.b(4,0) }
    is(SLT)  { io.result := (io.a.asSInt < io.b.asSInt).asUInt }
    is(SLTU) { io.result := (io.a < io.b).asUInt }
    is(XOR)  { io.result := io.a ^ io.b }
    is(SRL)  { io.result := io.a >> io.b(4,0) }
    is(SRA)  { io.result := (io.a.asSInt >> io.b(4,0)).asUInt }
    is(OR)   { io.result := io.a | io.b }
    is(AND)  { io.result := io.a & io.b }
  }
}