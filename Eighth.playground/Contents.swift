import UIKit

// Optional
var myName8111: String? = "pxzhu"
print(myName8111)
/*
 Optional("pxzhu")
 */

myName8111 = nil
print(myName8111)
/*
 nil
 */

func checkOptionalValue8112(value optionalValue: Any?) {
  switch optionalValue {
  case .none:
    print("This Optional variable is nil")
  case .some(let value):
    print("Value is \(value)")
  }
}

var myName8112: String? = "pxzhu"
checkOptionalValue8112(value: myName8112)
/*
 Value is pxzhu
 */

myName8112 = nil
checkOptionalValue8112(value: myName8112)
/*
 This Optional variable is nil
 */

let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
  switch number {
  case .some(let value) where value < 0:
    print("Negative value!! \(value)")
  case .some(let value) where value > 10:
    print("Large Value!! \(value)")
    
  case .some(let value):
    print("Value \(value)")
  
  case .none:
    print("nil")
  }
}
/*
 Value 2
 nil
 Negative value!! -4
 nil
 Large Value!! 100
 */

// Forced Unwrapping
var myName8211: String? = "pxzhu"

// 옵셔널이 아닌 변수에는 옵셔널 값이 들어갈 수 없음 추출해서 할당
var pxzhu8211: String = myName8211!

myName8211 = nil
// pxzhu8211 = myName8211!                      // Runtime Error

// if 구문 등 조건물을 이용해서 조금 더 안전하게 처리
if myName8211 != nil {
  print("My name is \(myName8211)")
} else {
  print("myName8211 == nil")
}
/*
 myName8211 == nil
 */

// Binding
var myName8212: String? = "pxzhu"

// 옵셔널 바인딩을 통한 임시 상수 할당
if let name8212 = myName8212 {
  print("My name is \(name8212)")
}
else {
  print("myName8212 == nil")
}
/*
 My name is pxzhu
 */

// 옵셔널 바인딩을 통한 임시 변수 할당
if var name8212 = myName8212 {
  name8212 = "wizplan"                            // 변수이므로 내부 변경 가능
  print("My name is \(name8212)")
} else {
  print("myName8212 == nil")
}
/*
 My name is wizplan
 */

var myName8213: String? = "pxzhu"
var yourName8213: String? = nil

// friend에 바인딩이 되지 않으므로 실행되지 않음
if let name = myName8213, let friend = yourName8213 {
  print("We are friend! \(name) & \(friend)")
}

yourName8213 = "eric"

if let name = myName8213, let friend = yourName8213 {
  print("We are friend! \(name) & \(friend)")
}
/*
 We are friend! pxzhu & eric
 */
