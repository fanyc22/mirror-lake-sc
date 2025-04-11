import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

/**
  * 对 MirrorLakeSC CPU 进行简单的仿真测试。
  *
  * 测试思路：
  *  - 初始时，imem_addr 输出应为 0（PC=0）。
  *  - 驱动 imem_inst 输入一条 NOP 指令（addi x0, x0, 0，其编码为 0x00000013）。
  *  - 由于该指令不会改变程序流程，CPU 应直接执行 PC+4 运算。
  */
class MirrorLakeSCSpec extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "MirrorLakeSC"

  it should "increment PC by 4 on a NOP instruction" in {
    test(new mirrorlakesc.MirrorLakeSC).withAnnotations(
      Seq(
        WriteVcdAnnotation, // 输出 VCD 文件，可以用波形工具观察
        // VerilatorBackendAnnotation, // 如需使用 Verilator 后端，可取消注释
      )
    ) { c =>
      // 初始时，PC (imem_addr) 应为 0
      c.io.imem_addr.expect(0.U)

      // 为本次测试，将 imem_inst 置为 NOP 指令（addi x0, x0, 0）
      c.io.imem_inst.poke("h00000013".U)
      // 对于 NOP 指令，数据存储器接口暂不使用，但需给定默认值
      c.io.dmem_rdata.poke(0.U)

      // 执行一个时钟周期
      c.clock.step(1)

      // 执行完毕后，PC 应增加 4，即 imem_addr 输出应为 4
      c.io.imem_addr.expect(4.U)
    }
  }
}