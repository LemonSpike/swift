public protocol ElementaryFunctions : Numeric {
  static func power(_ x: Self, _ n: UInt) -> Self
  static func root(_ x: Self, _ n: UInt) -> Self
  static func exp(_ x: Self) -> Self
  static func log(_ x: Self) -> Self
  /*
  static func cos(_ x: Self) -> Self
  static func sin(_ x: Self) -> Self
  static func tan(_ x: Self) -> Self
  static func acos(_ x: Self) -> Self
  static func asin(_ x: Self) -> Self
  static func atan(_ x: Self) -> Self
  static func cosh(_ x: Self) -> Self
  static func sinh(_ x: Self) -> Self
  static func tanh(_ x: Self) -> Self
  static func acosh(_ x: Self) -> Self
  static func asinh(_ x: Self) -> Self
  static func atanh(_ x: Self) -> Self
  */
}

public extension ElementaryFunctions {
  
  @inlinable
  static func power(_ x: Self, _ n: UInt) -> Self {
    var r: Self = 1
    var x = x
    var n = n
    while n > 0 {
      if n % 2 != 0 { r *= x }
      x *= x
      n >>= 1
    }
    return r
  }
  
}

@_transparent
public func power<T>(_ x: T, _ n: UInt) -> T where T : ElementaryFunctions {
  return T.power(x, n)
}

@_transparent
public func root<T>(_ x: T, _ n: UInt) -> T where T : ElementaryFunctions {
  return T.root(x, n)
}

@_transparent
public func exp<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.exp(x)
}

@_transparent
public func log<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.log(x)
}
/*

@_transparent
public func cos<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.cos(x)
}

@_transparent
public func sin<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.sin(x)
}

@_transparent
public func tan<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.tan(x)
}

@_transparent
public func acos<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.acos(x)
}

@_transparent
public func asin<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.asin(x)
}

@_transparent
public func atan<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.atan(x)
}

@_transparent
public func cosh<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.cosh(x)
}

@_transparent
public func sinh<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.sinh(x)
}

@_transparent
public func tanh<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.tanh(x)
}

@_transparent
public func acosh<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.acosh(x)
}

@_transparent
public func asinh<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.asinh(x)
}

@_transparent
public func atanh<T>(_ x: T) -> T where T : ElementaryFunctions {
  return T.atanh(x)
}
*/
