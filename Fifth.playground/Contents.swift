import UIKit

// Ternary Operator
var valueA514: Int = 3
var valueB514: Int = 5
var biggerValue514: Int = valueA514 > valueB514 ? valueA514 : valueB514

valueA514 = 0
valueB514 = -3
biggerValue514 = valueA514 > valueB514 ? valueA514 : valueB514

var stringA514: String = ""
var stringB514: String = "String"
var resultValue514: Double = stringA514.isEmpty ? 1.0 : 0.0
resultValue514 = stringB514.isEmpty ? 1.0 : 0.0

// Overflow, Underflow
var unsignedInteger519: UInt8 = 0
// let errorUnderflowResult519: UInt8 = unsignedInteger519 - 1      // RunTime Error
let underflowedValue519: UInt8 = unsignedInteger519 &- 1            // 255

unsignedInteger519 = UInt8.max
// let errorOverflowResult519: UInt8 = unsignedInteger519 + 1       // RunTime Error
let overflowedValue519: UInt8 = unsignedInteger519 &+ 1             // 0

// Precedence Group
/*
 * 연산자 우선순위 그룹은 higherThan, lowerThan, associativity 등으로 우선순위 및 결합 방향 등을 지정
 * 스위프트 연산자의 연산자 우선순위는 절대치가 아닌 상대적인 수치
 */
//precedencegroup BitwiseShiftPrecedence {
//  higherThan: MultiplicationPrecedence
//}
//
//precedencegroup FunctionArrowPrecedence {
//  associativity: right
//  higherThan: AdditionPrecedence
//}
//
//precedencegroup MultiplicationPrecedence {
//  associativity: left
//  higherThan: AdditionPrecedence
//}
//
//precedencegroup TernaryPrecedence {
//  associativity: right
//  higherThan: FunctionArrowPrecedence
//}
//
//precedencegroup DefaultPrecedence {
//  higherThan: TernaryPrecedence
//}
//
//precedencegroup LogicalDisjunctionPrecedence {
//  associativity: left
//  higherThan: TernaryPrecedence
//}
//
//precedencegroup LogicalConjunctionPrecedence {
//  associativity: left
//  higherThan: LogicalDisjunctionPrecedence
//}
//
//precedencegroup ComparsionPrecedence {
//  higherThan: LogicalConjunctionPrecedence
//}
//
//precedencegroup NilCoalescingPrecedence {
//  associativity: right
//  higherThan: ComparsionPrecedence
//}
//
//precedencegroup AdditionPrecedence {
//  associativity: left
//  higherThan: RangeFormationPrecedence
//}
//
//precedencegroup CastingPrecedence {
//  higherThan: NilCoalescingPrecedence
//}
//
//precedencegroup AssignmentPrecedence {
//  associativity: right
//  assignment: true
//}
//
//precedencegroup RangeFormationPrecedence {
//  higherThan: CastingPrecedence
//}

let intValue52: Int = 1
let resultValue521: Int = intValue52 << 3 + 5
let resultValue522: Int = 1 * 3 + 5

// Frontend Operator
prefix operator **

prefix func ** (value: Int) -> Int {
  return value * value
}

let minusFive531: Int = -5
let sqrtMinusFive531: Int = **minusFive531

print(sqrtMinusFive531)
/*
 25
 */

prefix func ! (value: String) -> Bool {
  return value.isEmpty
}

var stringValue531: String = "pxzhu"
var isEmptyString531: Bool = !stringValue531

print(isEmptyString531)
/*
 false
 */

stringValue531 = ""
isEmptyString531 = !stringValue531

print(isEmptyString531)
/*
 true
 */

prefix operator ^

prefix func ^ (value: String) -> String {
  return value + " " + value
}

let resultString531: String = ^"pxzhu"

print(resultString531)
/*
 pxzhu pxzhu
 */

postfix operator &

postfix func & (value: Int) -> Int {
  return value + 10
}

let five532: Int = 5
let fivePlusTen532: Int = five532&

print(fivePlusTen532)
/*
 15
 */
