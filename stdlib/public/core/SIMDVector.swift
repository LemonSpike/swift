public protocol SIMDVector : MutableCollection,
                             Equatable
                       where Index == Int {
  
  /// A type representing the result of lanewise comparison.
  ///
  /// Most SIMD comparison operators are *lanewise*, meaning that a comparison
  /// of two 4-element vectors produces a vector of 4 comparison results. E.g:
  ///
  ///   let vec = Float.Vector4( 1, 2, 3, 4)
  ///   let mask = vec < 3
  ///   // mask = Int32.Vector4(-1,-1, 0, 0), because the condition `< 3` is
  ///   // true in the first two lanes and false in the second two lanes.
  ///
  /// This vector of comparison results is itself a vector with the same
  /// number of elements as the vectors being compared.
  associatedtype Predicate : SIMDPredicate
  
  static func ==(lhs: Self, rhs: Self) -> Predicate
  
  static func !=(lhs: Self, rhs: Self) -> Predicate
}
