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

// Infix
"""
precedencegorup 우선순위 그룹 이름 {
  higherThan: 더 낮은 우선순위 그룹 이름
  lowerThan: 더 높은 운선순위 그룹 이름
  associativity: 결합 방향(left / right / none)
  assignment: 할당방향 사용(true / false)
}
"""

// infix operator ** : MultiplicationPrecedence

// String 타입의 contains(_:) 메서드를 사용하기 위해 Foundation 프레임워크를 임포트합니다.
import Foundation

infix operator ** : MultiplicationPrecedence

func ** (lhs: String, rhs: String) -> Bool {
  return lhs.contains(rhs)
}

let helloPxzhu: String = "Hello pxzhu"
let pxzhu: String = "pxzhu"
let isContainsPxzhu: Bool = helloPxzhu ** pxzhu   // true

// Comparison
class Car533 {
  var modelYear: Int?           // 연식
  var modelName: String?        // 모델명
}

struct SmartPhone533 {
  var company: String?          // 제조사
  var model: String?            // 모델
}

// Car 클래스의 인스턴스끼리 == 연산했을 때 modelName이 같다면 true를 반환
func == (lhs: Car533, rhs: Car533) -> Bool {
  return lhs.modelName == rhs.modelName
}

// SmartPhone 구조체의 인스턴스끼리 == 연산했을 때 model이 같다면 true를 반환
func == (lhs: SmartPhone533, rhs: SmartPhone533) -> Bool {
  return lhs.model == rhs.model
}

let myCar533 = Car533()
myCar533.modelName = "S"

let yourCar533 = Car533()
yourCar533.modelName = "S"

var myPhone533 = SmartPhone533()
myPhone533.model = "12"

var yourPhone533 = SmartPhone533()
yourPhone533.model = "SE2"

print(myCar533 == yourCar533)
/*
 true
 */
print(myPhone533 == yourPhone533)
/*
 false
 */

class Car {
  var modelYear: Int?           // 연식
  var modelName: String?        // 모델명
  
  // Car 클래스의 인스턴스끼리 == 연산했을 때 modelName이 같다면 true를 반환
  static func == (lhs: Car, rhs: Car) -> Bool {
    return lhs.modelName == rhs.modelName
  }
}

struct SmartPhone {
  var company: String?
  var model: String?

  // SmartPhone 구조체의 인스턴스끼리 == 연산했을 때 model이 같다면 true를 반환
  static func == (lhs: SmartPhone, rhs: SmartPhone) -> Bool {
    return lhs.model == rhs.model
  }
}
