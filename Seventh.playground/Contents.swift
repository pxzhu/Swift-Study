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
