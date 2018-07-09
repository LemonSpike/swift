public protocol Real : Numeric {
  static func /(_ lhs: Self, _ rhs: Self) -> Self
  //  Exponential functions
  static func exp(_ x: Self) -> Self
  static func exp2(_ x: Self) -> Self
  static func exp10(_ x: Self) -> Self
  static func expMinusOne(_ x: Self) -> Self
  //  Logarithm functions
  static func log(_ x: Self) -> Self
  static func log2(_ x: Self) -> Self
  static func log10(_ x: Self) -> Self
  static func log(onePlus x: Self) -> Self
  //  Trigonometric functions
  static func cos(_ x: Self) -> Self
  static func sin(_ x: Self) -> Self
  static func tan(_ x: Self) -> Self
  //  Inverse trigonometric functions
  static func acos(_ x: Self) -> Self
  static func asin(_ x: Self) -> Self
  static func atan(_ x: Self) -> Self
  static func atan2(y: Self, x: Self) -> Self
  //  Trig-pi functions
  static func cos(πTimes x: Self) -> Self
  static func sin(πTimes x: Self) -> Self
  static func tan(πTimes x: Self) -> Self
}

public extension Real {
  @_transparent
  static func /=(_ lhs: inout Self, _ rhs: Self) { lhs = lhs / rhs }
}
