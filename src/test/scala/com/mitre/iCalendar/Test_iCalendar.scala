package com.mitre.iCalendar

import org.junit.Test
import org.apache.daffodil.tdml.Runner
import org.junit.AfterClass

object Test_iCalendar {
  val runner = Runner("com/mitre/iCalendar", "iCalendar.tdml")

  @AfterClass def shutDown = {
    runner.reset()
  }
}
class Test_iCalendar {

  import Test_iCalendar._

  @Test def test_ex01() = { runner.runOneTest("ex01") }
  @Test def test_ex02() = { runner.runOneTest("ex02") }
  @Test def test_ex03_x_alt_1() = { runner.runOneTest("ex03-x-alt-1") }
  @Test def test_ex04_attachment() = { runner.runOneTest("ex04-attachment") }
  @Test def test_ex05_x_alt_2() = { runner.runOneTest("ex05-x-alt-2") }
}
