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

// Character
let alphabetA34: Character = "A"
print(alphabetA34)
/*
 A
 */

// Character 값에 유니코드 문자를 사용할 수 있습니다.
let commandCharacter34: Character = "♡"
print(commandCharacter34)
/*
 ♡
 */

let 한글변수이름34: Character = "ㄱ"

// 한글도 유니코드 문자에 속하므로 스위프트 코드의 변수 이름으로 사용할 수 있습니다.
print("한글의 첫 자음: \(한글변수이름34)")
/*
 한글의 첫 자음: ㄱ
 */

// String
// 상수로 선언된 문자열은 변경 불가능
let name35: String = "pxzhu"

// 이니셜라이저를 사용하여 빈 문자열을 생성할 수 있음
// var 키워드를 사용하여 변수를 생성했으므로 문자열의 수정 및 변경 가능
var introduce35: String = String()

// appen() 메서드를 사용하여 문자열을 이어붙일 수 있음
introduce35.append("제 이름은")

// + 연산자를 통해서도 문자열을 이어붙일 수 있음
introduce35 = introduce35 + " " + name35 + "입니다."
print(introduce35)
/*
 제 이름은 pxzhu입니다.
 */

// name35에 해당하는 문자의 수를 셀 수 있음
print("name35의 글자 수: \(name35.count)")
/*
 name35의 글자 수: 5
 */
// 빈 문자열인지 확인해볼 수 있음
print("introduce35가 비어있습니까?: \(introduce35.isEmpty)")
/*
 introduce35가 비어있습니까?: false
 */

// 유니코드의 스칼라값을 사용하면 값에 해당하는 표현이 출력
let unicodeScalarValue35: String = "\u{2665}"
print(unicodeScalarValue35)
/*
 ♥
 */

// 연산자를 통한 문자열 결합
let hello35: String = "Hello"
let pxzhu35: String = "pxzhu"
var greeting35: String = hello35 + " " + pxzhu35 + "!"
print(greeting35)
/*
 Hello pxzhu!
 */

greeting35 = hello35
greeting35 += " "
greeting35 += pxzhu35
greeting35 += "!"
print(greeting35)
/*
 Hello pxzhu!
 */


// 연산자를 통한 문자열 비교
var isSameString35: Bool = false

isSameString35 = hello35 == "Hello"
print(isSameString35)
/*
 true
 */

isSameString35 = hello35 == "hello"
print(isSameString35)
/*
 false
 */

isSameString35 = pxzhu35 == "pxzhu"
print(isSameString35)
/*
 true
 */

isSameString35 = pxzhu35 == hello35
print(isSameString35)
/*
 false
 */


// 메서드를 통한 접두어, 접미어 확인
var hasPrefix35: Bool = false
hasPrefix35 = hello35.hasPrefix("He")
print(hasPrefix35)
/*
 true
 */

hasPrefix35 = hello35.hasPrefix("HE")
print(hasPrefix35)
/*
 false
 */

hasPrefix35 = greeting35.hasPrefix("Hello ")
print(hasPrefix35)
/*
 true
 */

hasPrefix35 = pxzhu35.hasPrefix("zhu")
print(hasPrefix35)
/*
 false
 */

hasPrefix35 = hello35.hasPrefix("Hello")
print(hasPrefix35)
/*
 true
 */

var hasSuffix35: Bool = false
hasSuffix35 = hello35.hasSuffix("He")
print(hasSuffix35)
/*
 false
 */

hasSuffix35 = hello35.hasSuffix("llo")
print(hasSuffix35)
/*
 true
 */

hasSuffix35 = greeting35.hasSuffix("pxzhu")
print(hasSuffix35)
/*
 false
 */

hasSuffix35 = greeting35.hasSuffix("pxzhu!")
print(hasSuffix35)
/*
 true
 */

hasSuffix35 = pxzhu35.hasSuffix("zhu")
print(hasSuffix35)
/*
 true
 */


// 메서드를 통한 대소문자 변환
var convertedString35: String = ""
convertedString35 = hello35.uppercased()
print(convertedString35)
/*
 HELLO
 */

convertedString35 = hello35.lowercased()
print(convertedString35)
/*
 hello
 */

convertedString35 = pxzhu35.uppercased()
print(convertedString35)
/*
 PXZHU
 */

convertedString35 = greeting35.uppercased()
print(convertedString35)
/*
 HELLO PXZHU!
 */

convertedString35 = greeting35.lowercased()
print(convertedString35)
/*
 hello pxzhu!
 */


// 프로퍼티를 통한 빈 문자열 확인
var isEmptyString35: Bool = false
isEmptyString35 = greeting35.isEmpty
print(isEmptyString35)
/*
 false
 */

greeting35 = "안녕"
isEmptyString35 = greeting35.isEmpty
print(isEmptyString35)
/*
 false
 */

greeting35 = ""
isEmptyString35 = greeting35.isEmpty
print(isEmptyString35)
/*
 true
 */

// 프로퍼티를 이용해 문자열 길이 확인
print(greeting35.count)
/*
 0
 */

greeting35 = "안녕하세요"
print(greeting35.count)
/*
 5
 */

greeting35 = "안녕!"
print(greeting35.count)
/*
 3
 */

// 코드상에서 여러 줄의 문자열을 직접 쓰고 싶다면 큰따옴표 세 개를 사용
// 큰따옴표 세 개를 써주고 한 줄을 내려써야 함
// 마지막 줄도 큰따옴표 세 개는 한 줄 내려써야 함

greeting35 = """
안녕하세요 저는 피이입니다.
스위프트를 잘하고 싶어요!
잘 부탁합니다!
"""
