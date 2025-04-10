import chisel3._

class MirrorLakeSC() extends Module {
  val io = IO(new Bundle {
    val in  = Input(Bool())
    val out = Output(Bool())
  })

  val dataIn = io.in
  io.out := dataIn

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
