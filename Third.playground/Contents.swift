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
var boolean33: Bool = true
boolean33.toggle()                       // true -> false
let iLoveYou33: Bool = true
let isTimeUnlimited33: Bool = false
print("시간은 무한합니까?: \(isTimeUnlimited33)")
/*
 시간은 무한합니까?: false
 */
