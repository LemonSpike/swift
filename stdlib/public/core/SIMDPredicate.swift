public protocol SIMDPredicate : SIMDVector
                          where Element == Bool, Predicate == Self {
  
  static prefix func !(rhs: Self) -> Self
  
  static func &&(lhs: Self, rhs: Self) -> Self
  
  static func ||(lhs: Self, rhs: Self) -> Self
  
  static func all(_ predicate: Self) -> Bool
  
  static func any(_ predicate: Self) -> Bool
}
