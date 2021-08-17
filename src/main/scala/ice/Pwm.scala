package ice

import spinal.core._
import spinal.lib._

case class PwmCore(width: BitCount = 8 bits) extends Component {
  val io = new Bundle {
    val level = in(UInt(width))
    val pwm = out(Bool)
  }

  io.pwm := Counter(width, True) > io.level
}

object PwmCore {
  def main(args: Array[String]) = boards.IceBreaker.generate(new PwmCore)
}
