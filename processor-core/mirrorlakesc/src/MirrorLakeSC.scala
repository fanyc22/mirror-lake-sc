package mirrorlakesc

import chisel3._
import chisel3.util._
import Constants._
import ALUOps._
class MirrorLakeSC extends Module {
  val io = IO(new Bundle {
    // Instruction memory interface
    val imem_addr = Output(UInt(32.W))
    val imem_inst = Input(UInt(32.W))
    // Data memory interface
    val dmem_addr  = Output(UInt(32.W))
    val dmem_wdata = Output(UInt(32.W))
    val dmem_rdata = Input(UInt(32.W))
    val dmem_wen   = Output(Bool())    // write enable (false = read)
    val dmem_wmask = Output(UInt(4.W)) // byte write mask
  })

  val pc = RegInit(0.U(32.W))
  io.imem_addr := pc
  val inst = io.imem_inst

  // Instantiate submodules
  val regfile = Module(new RegisterFile)
  val alu = Module(new ALU)

  // Decode fields
  val opcode = inst(6,0)
  val rd     = inst(11,7)
  val funct3 = inst(14,12)
  val rs1    = inst(19,15)
  val rs2    = inst(24,20)
  val funct7 = inst(31,25)

  // Connect register file read ports
  regfile.io.rs1 := rs1
  regfile.io.rs2 := rs2

  // Immediate generation (sign-extended)
  val immI = Cat(Fill(20, inst(31)), inst(31,20)).asSInt        // 12-bit I-immediate
  val immS = Cat(Fill(20, inst(31)), inst(31,25), inst(11,7)).asSInt  // 12-bit S-immediate
  val immB = Cat(Fill(19, inst(31)), inst(31), inst(7), inst(30,25), inst(11,8), 0.U(1.W)).asSInt // 13-bit B-imm (with 0)
  val immU = Cat(inst(31,12), 0.U(12.W)).asUInt                 // 20-bit U-immediate (shifted left 12)
  val immJ = Cat(Fill(11, inst(31)), inst(31), inst(19,12), inst(20), inst(30,21), 0.U(1.W)).asSInt // 21-bit J-immediate

  // Default control signals
  val regWrite     = WireDefault(false.B)
  val writeBackData= WireDefault(0.U(32.W))
  val aluOp        = WireDefault(ADD)
  val aluSrc1      = WireDefault(regfile.io.rs1Data)
  val aluSrc2      = WireDefault(regfile.io.rs2Data)
  val nextPC       = WireDefault(pc + 4.U)

  // Default memory signals (no access)
  io.dmem_addr  := 0.U
  io.dmem_wdata := 0.U
  io.dmem_wen   := false.B
  io.dmem_wmask := 0.U(4.W)

  val branchTaken = WireDefault(false.B)

  // Instruction decoding and control
  switch(opcode) {
    is(OPCODE_LUI) {
      // Load Upper Immediate: rd = immU
      writeBackData := immU
      regWrite := true.B
    }
    is(OPCODE_AUIPC) {
      // AUIPC: rd = PC + immU
      writeBackData := pc + immU
      regWrite := true.B
    }
    is(OPCODE_JAL) {
      // JAL: rd = PC+4, PC = PC + immJ
      writeBackData := pc + 4.U
      regWrite := true.B
      nextPC := (pc.asSInt + immJ).asUInt
    }
    is(OPCODE_JALR) {
      // JALR: rd = PC+4, PC = (rs1 + immI) & ~1
      writeBackData := pc + 4.U
      regWrite := true.B
      nextPC := ((regfile.io.rs1Data).asSInt + immI).asUInt & ~1.U(32.W)
    }
    is(OPCODE_BRANCH) {
      // Conditional branch instructions
      switch(funct3) {
        is("b000".U) { branchTaken := (regfile.io.rs1Data === regfile.io.rs2Data) }       // BEQ
        is("b001".U) { branchTaken := (regfile.io.rs1Data =/= regfile.io.rs2Data) }       // BNE
        is("b100".U) { branchTaken := (regfile.io.rs1Data.asSInt < regfile.io.rs2Data.asSInt) }   // BLT
        is("b101".U) { branchTaken := (regfile.io.rs1Data.asSInt >= regfile.io.rs2Data.asSInt) }  // BGE
        is("b110".U) { branchTaken := (regfile.io.rs1Data < regfile.io.rs2Data) }         // BLTU
        is("b111".U) { branchTaken := (regfile.io.rs1Data >= regfile.io.rs2Data) }        // BGEU
      }
      when(branchTaken) {
        nextPC := (pc.asSInt + immB).asUInt
      }
      // No register write for branches
    }
    is(OPCODE_LOAD) {
      // Load instructions: LB, LH, LW, LBU, LHU
      val addr = (regfile.io.rs1Data).asSInt + immI
      io.dmem_addr := addr.asUInt
      io.dmem_wen := false.B  // indicate read
      val dataWord = io.dmem_rdata  // 32-bit word from memory
      switch(funct3) {
        is("b000".U) { // LB
          val byteShift = addr(1,0) * 8.U
          val byteData = (dataWord >> byteShift)(7,0)
          writeBackData := Cat(Fill(24, byteData(7)), byteData)
        }
        is("b001".U) { // LH
          val halfShift = addr(1) * 16.U
          val halfData = (dataWord >> halfShift)(15,0)
          writeBackData := Cat(Fill(16, halfData(15)), halfData)
        }
        is("b010".U) { // LW
          writeBackData := dataWord
        }
        is("b100".U) { // LBU
          val byteShift = addr(1,0) * 8.U
          val byteData = (dataWord >> byteShift)(7,0)
          writeBackData := Cat(0.U(24.W), byteData)
        }
        is("b101".U) { // LHU
          val halfShift = addr(1) * 16.U
          val halfData = (dataWord >> halfShift)(15,0)
          writeBackData := Cat(0.U(16.W), halfData)
        }
      }
      regWrite := true.B
    }
    is(OPCODE_STORE) {
      // Store instructions: SB, SH, SW
      val addr = (regfile.io.rs1Data).asSInt + immS
      io.dmem_addr := addr.asUInt
      io.dmem_wen := true.B   // indicate write
      switch(funct3) {
        is("b000".U) { // SB
          val storeByte = regfile.io.rs2Data(7,0)
          io.dmem_wdata := Cat(storeByte, storeByte, storeByte, storeByte)
          val byteSel = addr(1,0)
          io.dmem_wmask := (1.U << byteSel).asUInt  // enable one byte
        }
        is("b001".U) { // SH
          val storeHalf = regfile.io.rs2Data(15,0)
          io.dmem_wdata := Cat(storeHalf, storeHalf)
          val halfSel = addr(1)
          io.dmem_wmask := Mux(halfSel === 0.U, "b0011".U(4.W), "b1100".U(4.W))
        }
        is("b010".U) { // SW
          io.dmem_wdata := regfile.io.rs2Data
          io.dmem_wmask := "b1111".U(4.W)
        }
      }
      // No register write for stores
    }
    is(OPCODE_ALUI) {
      // ALU operations with immediate
      switch(funct3) {
        is("b000".U) { aluOp := ADD }  // ADDI
        is("b010".U) { aluOp := SLT }  // SLTI
        is("b011".U) { aluOp := SLTU } // SLTIU
        is("b100".U) { aluOp := XOR }  // XORI
        is("b110".U) { aluOp := OR }   // ORI
        is("b111".U) { aluOp := AND }  // ANDI
        is("b001".U) { aluOp := SLL }  // SLLI
        is("b101".U) { aluOp := Mux(funct7 === "b0100000".U, SRA, SRL) } // SRLI/SRAI
      }
      aluSrc2 := immI.asUInt
      regWrite := true.B
    }
    is(OPCODE_ALU) {
      // R-type ALU operations
      switch(funct3) {
        is("b000".U) { aluOp := Mux(funct7 === "b0100000".U, SUB, ADD) } // ADD/SUB
        is("b001".U) { aluOp := SLL }
        is("b010".U) { aluOp := SLT }
        is("b011".U) { aluOp := SLTU }
        is("b100".U) { aluOp := XOR }
        is("b101".U) { aluOp := Mux(funct7 === "b0100000".U, SRA, SRL) } // SRL/SRA
        is("b110".U) { aluOp := OR }
        is("b111".U) { aluOp := AND }
      }
      regWrite := true.B
    }
    is(OPCODE_MISC_MEM) {
      // FENCE/FENCE.I: no operation needed for single-cycle CPU
    }
    is(OPCODE_SYSTEM) {
      // ECALL, EBREAK (and possibly CSR instructions)
      // For now, treat as no-ops or placeholder for system call handling
    }
  }

  // Execute ALU operation (for ALU/ALUI instructions)
  alu.io.op := aluOp
  alu.io.a := aluSrc1
  alu.io.b := aluSrc2
  val aluResult = alu.io.result

  when(opcode === OPCODE_ALU || opcode === OPCODE_ALUI) {
    writeBackData := aluResult
  }

  // Write-back: write result to register file
  regfile.io.rd := rd
  regfile.io.writeData := writeBackData
  regfile.io.regWrite := regWrite

  // Update program counter
  pc := nextPC
}


// The Main object extending App to generate the Verilog code.
object MirrorLakeSC extends App {
  // Generate Verilog
  val verilog =
    (new chisel3.stage.ChiselStage).emitVerilog(
      new MirrorLakeSC(),
      args,
    )
  // Print the generated Verilog code to the console
  // println(verilog)
}
