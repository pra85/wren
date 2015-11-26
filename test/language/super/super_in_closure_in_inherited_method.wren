class A {
  callSuperToString {
    return Fn.new { super.toString }()
  }

  toString { "A.toString" }
}

class B is A {
  construct new() {}
}

System.print(B.new().callSuperToString) // expect: instance of B
