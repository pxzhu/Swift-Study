import UIKit

// Struct
/// struct 구조체 이름 {
///   프로퍼티와 메서드들
/// }

struct BasicInformation {
  var name: String
  var age: Int
}

// 프로퍼티 이름(name, age)으로 자동 생성된 이니셜라이저를 사용하여 구조체 생성
var pxzhuInfo9121: BasicInformation = BasicInformation(name: "pxzhu", age: 99)
pxzhuInfo9121.age = 100
pxzhuInfo9121.name = "Seba"

// 프로퍼티 이름(name, age)으로 자동 생성된 이니셜라이저를 사용하여 구조체 생성
let sebaInfo9121: BasicInformation = BasicInformation(name: "Seba", age: 99)
// sebaInfo9121.age = 100           // 변경 불가 오류
// jennyInfo9121.age = 100          // 변경 불가

// Class
/// class 클래스 이름 {
///   프로퍼티와 메서드들
/// }
/// Inheritance
/// class 클래스 이름: 부모클래스 이름 {
///   프로퍼티와 메서드들
/// }
class Person {
  var hieght: Float = 0.0
  var weight: Float = 0.0
}

var pxzhu9211: Person = Person()
pxzhu9211.hieght = 123.4
pxzhu9211.weight = 123.4

let jenny9211: Person = Person()
jenny9211.hieght = 123.4
jenny9211.weight = 123.4

// Deinitializer
class Person9231 {
  var height: Float = 0.0
  var weight: Float = 0.0
  
  deinit {
    print("Person9231 클래스의 인스턴스가 소멸됩니다.")
  }
}

var pxzhu9231: Person9231? = Person9231()
pxzhu9231 = nil
/*
 Person9231 클래스의 인스턴스가 소멸됩니다.
 */

struct BasicInformation9311 {
  let name: String
  var age: Int
}

var pxzhuInfo9311: BasicInformation9311 = BasicInformation9311(name: "pxzhu", age: 99)
pxzhuInfo9311.age = 100

// pxzhuInfo9311의 값을 복사하여 할당
var friendInfo9311: BasicInformation9311 = pxzhuInfo9311

print("pxzhu's age: \(pxzhuInfo9311.age)")
/*
 pxzhu's age: 100
 */
print("friend's age: \(friendInfo9311.age)")
/*
 friend's age: 100
 */

friendInfo9311.age = 999

print("pxzhu's age: \(pxzhuInfo9311.age)")
/*
 pxzhu's age: 100
 */
print("friend's age: \(friendInfo9311.age)")
/*
 friend's age: 999
 */

class Person9311 {
  var height: Float = 0.0
  var weight: Float = 0.0
}

var pxzhu9311: Person9311 = Person9311()
var friend9311: Person9311 = pxzhu9311                // pxzhu의 참조 할당

print("pxzhu's height: \(pxzhu9311.height)")
/*
 pxzhu's height: 0.0
 */
print("friend's height: \(friend9311.height)")
/*
 friend's height: 0.0
 */

friend9311.height = 183.1
print("pxzhu's height: \(pxzhu9311.height)")          // friend는 pxzhu를 참조하기 때문에 값 변동
/*
 pxzhu's height: 183.1
 */

print("friend's height: \(friend9311.height)")        // 이를 통해 pxzhu이 참조하는 곳과 friend가 참조하는 곳이 같음을 알 수 있음
/*
 friend's height: 183.1
 */

func changeBasicInfo9311(_ info: BasicInformation9311) {
  var copiedInfo: BasicInformation9311 = info
  copiedInfo.age = 1
}
func changePersonInfo9311(_ info: Person9311) {
  info.height = 155.3
}

// changeBasicInfo9311(_:)로 전달되는 전달인자는 값이 복사되어 전달되기 때문에 pxzhuInfo9311의 값만 전달
changeBasicInfo9311(pxzhuInfo9311)
print("pxzhu's age: \(pxzhuInfo9311.age)")
/*
 pxzhu's age: 100
 */

// changePersonInfo9311(_:)의 전달인자로 pxzhu의 참조가 전달되었기 때문에 pxzhu가 참조하는 값들에 변화가 생김
changePersonInfo9311(pxzhu9311)
print("pxzhu's height: \(pxzhu9311.height)")
/*
 pxzhu's height: 155.3
 */

// Identity Operator
var pxzhu9312: Person9311 = Person9311()
let friend9312: Person9311 = pxzhu9312
let anotherFriend9312: Person9311 = Person9311()

print(pxzhu9312 === friend9312)
/*
 true
 */
print(pxzhu9312 === anotherFriend9312)
/*
 false
 */
print(friend9312 !== anotherFriend9312)
/*
 true
 */
