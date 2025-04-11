package mirrorlakesc

import chisel3._

object Constants {
  // RISC-V base instruction opcodes (7-bit)
  val OPCODE_LUI     = "b0110111".U(7.W)
  val OPCODE_AUIPC   = "b0010111".U(7.W)
  val OPCODE_JAL     = "b1101111".U(7.W)
  val OPCODE_JALR    = "b1100111".U(7.W)
  val OPCODE_BRANCH  = "b1100011".U(7.W)
  val OPCODE_LOAD    = "b0000011".U(7.W)
  val OPCODE_STORE   = "b0100011".U(7.W)
  val OPCODE_ALUI    = "b0010011".U(7.W)  // ALU immediate
  val OPCODE_ALU     = "b0110011".U(7.W)  // ALU register
  val OPCODE_MISC_MEM= "b0001111".U(7.W)  // FENCE/FENCE.I
  val OPCODE_SYSTEM  = "b1110011".U(7.W)  // ECALL/EBREAK (and CSR)
}