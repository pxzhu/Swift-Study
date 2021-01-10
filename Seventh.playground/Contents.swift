import UIKit

// Function
func hello7211(name: String) -> String {
  return "Hello \(name)!"
}

let helloJenny7211: String = hello7211(name: "Jenny")
print(helloJenny7211)
/*
 Hello Jenny!
 */

func introduce7211(name: String) -> String {
  // [return "제 이름은 " + name + "입니다."]와 같은 동작을 함
  "제 이름은 " + name + "입니다."
}

let introduceJenny7211: String = introduce7211(name: "Jenny")
print(introduceJenny7211)
/*
 제 이름은 Jenny입니다.
 */

func helloWorld7221() -> String {
  return "Hello, world!"
}

print(helloWorld7221())
/*
 Hello, world!
 */

func sayHello7222(myName: String, yourName: String) -> String {
  return "Hello \(yourName)! I'm \(myName)"
}

print(sayHello7222(myName: "pxzhu", yourName: "Jenny"))
/*
 Hello Jenny! I'm pxzhu
 */

// from과 to라는 전달인자 레이블이 있으며 myName과 name이라는 매개변수 이름이 있는 sayHello7223 함수
func sayHello7223(from myName:String, to name:String) -> String {
  return "Hello \(name)! I'm \(myName)"
}

print(sayHello7223(from: "pxzhu", to: "Jenny"))
/*
 Hello Jenny! I'm pxzhu
 */

func sayHello7224(_ name: String, _ times: Int) -> String {
  var result: String = ""
  
  for _ in 0..<times {
    result += "Hello \(name)!" + " "
  }
  
  return result
}

print(sayHello7224("Chope", 2))
/*
 Hello Chope! Hello Chope!
 */

func sayHello7225(to name: String, _ times: Int) -> String {
  var result: String = ""
  
  for _ in 0..<times {
    result += "Hello \(name)!" + " "
  }
  
  return result
}

func sayHello7225(to name: String, repeatCount times: Int) -> String {
  var result: String = ""
  
  for _ in 0..<times {
    result += "Hello \(name)!" + " "
  }
  
  return result
}

print(sayHello7225(to: "Chope", 2))
/*
 Hello Chope! Hello Chope!
 */
print(sayHello7225(to: "Chope", repeatCount: 2))
/*
 Hello Chope! Hello Chope!
 */

// times 매개변수가 기본값으로 3을 가짐
func sayHello7226(_ name: String, times: Int = 3) -> String {
  var result: String = ""
  
  for _ in 0..<times {
    result += "Hello \(name)!" + " "
  }
  
  return result
}

// times 매개변수의 전달 값을 넘겨주지 않아 기본값인 3을 반영하여 세 번 출력
print(sayHello7226("Hana"))
/*
 Hello Hana! Hello Hana! Hello Hana!
 */
// times 매개변수의 전달 값을 2로 넘겨주었기 때문에 전달 값을 반영하여 두 번 출력
print(sayHello7226("Joe", times: 2))
/*
 Hello Joe! Hello Joe!
 */

func sayHelloToFriends7227(me: String, friends names: String...) -> String {
  var result: String = ""
  
  for friend in names {
    result += "Hello \(friend)!" + " "
  }
  
  result += "I'm " + me + "!"
  return result
}

print(sayHelloToFriends7227(me: "pxzhu", friends: "Johansson", "Jay", "Wizplan"))
/*
 Hello Johansson! Hello Jay! Hello Wizplan! I'm pxzhu!
 */
print(sayHelloToFriends7227(me: "pxzhu"))
/*
 I'm pxzhu!
 */

var numbers7228: [Int] = [1, 2, 3]

func nonReferenceParameter7228(_ arr: [Int]) {
  var copiedArr7228: [Int] = arr
  copiedArr7228[1] = 1
}

func referenceParameter7228(_ arr: inout [Int]) {
  arr[1] = 1
}

nonReferenceParameter7228(numbers7228)
print(numbers7228[1])
/*
 2
 */

referenceParameter7228(&numbers7228)
print(numbers7228[1])
/*
 1
 */

// void
func sayHelloWorld7231() {
  print("Hello, world!")
}
sayHelloWorld7231()
/*
 Hello, world!
 */

func sayHello7231(from myName: String, to name: String) {
  print("Hello \(name)! I'm \(myName)")
}
sayHello7231(from: "pxzhu", to: "Mijeong")
/*
 Hello Mijeong! I'm pxzhu
 */

func sayGoodbye7231() -> Void {
  print("Good bye")
}
sayGoodbye7231()
/*
 Good bye
 */

// type
typealias CalculateTwoInts7241 = (Int, Int) -> Int

func addTwoInts7241(_ a: Int, _ b: Int) -> Int {
  return a + b
}

func multiplyTwoInts7241(_ a: Int, _ b: Int) -> Int {
  return a * b
}

var mathFunction7241: CalculateTwoInts7241 = addTwoInts7241

// var mathFunction7241: (Int, Int) -> Int = add TwoInts와 동일한 표현
print(mathFunction7241(2, 5))
/*
 7
 */

mathFunction7241 = multiplyTwoInts7241
print(mathFunction7241(2, 5))
/*
 10
 */

func printMathResult7241(_ mathFunction7241: CalculateTwoInts7241, _ a: Int, _ b: Int) {
  print("Result: \(mathFunction7241(a, b))")
}

printMathResult7241(addTwoInts7241, 3, 5)
/*
 Result: 8
 */

func chooseMathFunction7241(_ toAdd: Bool) -> CalculateTwoInts7241 {
  return toAdd ? addTwoInts7241 : multiplyTwoInts7241
}

printMathResult7241(chooseMathFunction7241(true), 3, 5)
/*
 Result: 8
 */

// Nested
typealias MoveFunc7311 = (Int) -> Int

func goRight7311(_ currentPosition7311: Int) -> Int {
  return currentPosition7311 + 1
}

func goLeft7311(_ currentPosition7311: Int) -> Int {
  return currentPosition7311 - 1
}

func functionForMove7311(_ shouldGoLeft7311: Bool) -> MoveFunc7311 {
  return shouldGoLeft7311 ? goLeft7311 : goRight7311
}

var position7311: Int = 3

// 현 위치가 0보다 크므로 전달되는 인자 값은 true
// 그러므로 goLeft(_:) 함수가 할당될 것임
let moveToZero7311: MoveFunc7311 = functionForMove7311(position7311 > 0)
print("원점으로 갑시다.")

// 원점에 도착하면(현 위치가 0이면) 반복문 종료
while position7311 != 0 {
  print("\(position7311)...")
  position7311 = moveToZero7311(position7311)
}
print("원점 도착!")
/*
 원점으로 갑시다.
 3...
 2...
 1...
 원점 도착!
 */

typealias MoveFunc7312 = (Int) -> Int

func functionForMove7312(_ shouldGoLeft7312: Bool) -> MoveFunc7312 {
  func goRight7312(_ currentPosition7312: Int) -> Int {
    return currentPosition7312 + 1
  }
  
  func goLeft7312(_ currentPosition7312: Int) -> Int {
    return currentPosition7312 - 1
  }
  
  return shouldGoLeft7312 ? goLeft7312 : goRight7312
}

var position7312: Int = -4

// 현 위치가 0보다 작으므로 전달되는 인자 값은 false
// 그러므로 goRight(_:) 함수 할당

let moveToZero7312: MoveFunc7312 = functionForMove7312(position7312 > 0)

// 원점에 도착하면(현 위치가 0이면) 반복문 종료
while position7312 != 0 {
  print("\(position7312)...")
  position7312 = moveToZero7312(position7312)
}
print("원점 도착!")
/*
 -4...
 -3...
 -2...
 -1...
 원점 도착!
 */

// nonreturning
func crashAndBurn7411() -> Never {
  fatalError("Something very, very bad happend")
}

crashAndBurn7411()                      // 프로세스 종료 후 오류 보고

func someFunction7411(isAllIsWell: Bool) {
  guard isAllIsWell else {
    print("마을에 도둑이 들었습니다!")
    crashAndBurn7411()
  }
  print("All is well")
}

someFunction7411(isAllIsWell: true)     // All is well
someFunction7411(isAllIsWell: false)    // 마을에 도둑이 들었습니다
// 프로세스 종료 후 오류 보고

// discardableResult
func say7511(_ something: String) -> String {
  print(something)
  return something
}

@discardableResult func discadableResultSay7511(_ something: String) -> String {
  print(something)
  return something
}

// 반환 값을 사용하지 안핬으므로 컴파일러가 경고를 표시할 수 있음
say7511("Hello")

// 반환 값을 사용하지 않을 수 있다고 미리 알렸기 때문에 반환 값을 사용하지 않아도 컴파일러가 경고하지 않음
discadableResultSay7511("Hello")
