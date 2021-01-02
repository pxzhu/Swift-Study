import UIKit

// Int, UInt
var integer31: Int = -100
let unsignedInteger31: UInt = 50
print("integer 값: \(integer31), unsignedInteger 값: \(unsignedInteger31)")
/*
 integer 값: -100, unsignedInteger 값: 50
 */
print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)")
/*
 Int 최댓값: 9223372036854775807, Int 최솟값: -9223372036854775808
 */
print("UInt 최댓값: \(UInt.max), UInt 최솟값: \(UInt.min)")
/*
 UInt 최댓값: 18446744073709551615, UInt 최솟값: 0
 */
let largeInteger31: Int64 = Int64.max
let smallUnsignedInteger31: UInt8 = UInt8.max
print("Int64 최댓값 : \(largeInteger31), UInt8 최댓값: \(smallUnsignedInteger31)")
/*
 Int64 최댓값 : 9223372036854775807, UInt8 최댓값: 255
 */

// let tooLarge31: Int = Int.max + 1   // Int의 표현 범위를 초과하므로 오류
// let cannotBeNegetive31: UInt = -5   // UInt는 음수가 될 수 없으므로 오류

// integer31 = unsigendInteger31       // 오류! 스위프트에서 Int와 UInt는 다른 타입
integer31 = Int(unsignedInteger31)     // Int 타입의 값으로 할당해주어야 함

// Numeral
let binaryInteger31: Int = 0b11100     // 2진수로 10진수 28 표현
let octalInteger31: Int = 0o34         // 8진수로 10진수 28 표현
let decimalInteger31: Int = 28
let hexadecimalInteger31: Int = 0x1C   // 16진수로 10진수 28 표현

// Bool
var boolean32: Bool = true
boolean32.toggle()                       // true -> false
let iLoveYou32: Bool = true
let isTimeUnlimited32: Bool = false
print("시간은 무한합니까?: \(isTimeUnlimited32)")
/*
 시간은 무한합니까?: false
 */

// Float, Double
// Float이 수용할 수 있는 범위를 넘어섬
// 자신이 감당할 수 있는 만큼만 남기므로 정확도가 떨어짐
var floatValue33: Float = 1234567890.1

// Double는 충분히 수용할 수 있음
let doubleValue33: Double = 1234567890.1

print("floatValue33: \(floatValue33) doubleValue33: \(doubleValue33)")
/*
 floatValue33: 1.234568e+09 doubleValue33: 1234567890.1
 */

// Float이 수용할 수 있는 범위의 수로 변경
floatValue33 = 123456.1

// 문자열 보간법을 사용하지 않고 단순히 변수 또는 상수의 값만 보고싶으면
// print 함수의 전달인자로 변수 또는 상수를 전달
print(floatValue33)
/*
 123456.1
 */

// Random Number
Int.random(in: -100...100)
UInt.random(in: 1...30)
Double.random(in: 1.5...4.3)
Float.random(in: -0.5...1.5)
