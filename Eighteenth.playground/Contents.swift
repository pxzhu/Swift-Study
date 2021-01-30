import UIKit

// Base class
class Person18111 {
  var name: String = ""
  var age: Int = 0
  
  var introduction: String {
    return "이름: \(name), 나이: \(age)"
  }
  
  func speak() {
    print("가나다라마바사")
  }
}

let pxzhu18111: Person18111 = Person18111()
pxzhu18111.name = "pxzhu"
pxzhu18111.age = 99
print(pxzhu18111.introduction)
/*
 이름: pxzhu, 나이: 99
 */
pxzhu18111.speak()
/*
 가나다라마바사
 */

class Student18111: Person18111 {
  var grade: String = "F"
  
  func study() {
    print("Study hard...")
  }
}

let jay18111: Student18111 = Student18111()
jay18111.name = "jay"
jay18111.age = 10
jay18111.grade = "A"
print(jay18111.introduction)
/*
 이름: jay, 나이: 10
 */
jay18111.speak()
/*
 가나다라마바사
 */
jay18111.study()
/*
 Study hard...
 */

// Override
class Person18211 {
  var name: String = ""
  var age: Int = 0
  
  var introduction: String {
    return "이름: \(name), 나이: \(age)"
  }
  
  func speak() {
    print("가나다라마바사")
  }
  
  class func introduceClass() -> String {
    return "인류의 소원은 평화입니다."
  }
}

class Student18211: Person18211 {
  var grade: String = "F"
  
  func study() {
    print("Study hard...")
  }
  
  override func speak() {
    print("저는 학생입니다.")
  }
}

class UniversityStudent18211: Student18211 {
  var major: String = ""
  
  class func introduceClass() {
    print(super.introduceClass())
  }
  
  override class func introduceClass() -> String {
    return "대학생의 소원은 A+입니다."
  }
  
  override func speak() {
    super.speak()
    print("대학생이죠.")
  }
}

let pxzhu18211: Person18211 = Person18211()
pxzhu18211.speak()
/*
 가나다라마바사
 */

let jay18211: Student18211 = Student18211()
jay18211.speak()
/*
 저는 학생입니다.
 */

let jenny18211: UniversityStudent18211 = UniversityStudent18211()
jenny18211.speak()
/*
 대학생이죠.
 */

print(Person18211.introduceClass())
/*
 인류의 소원은 평화입니다.
 */
print(Student18211.introduceClass())
/*
 인류의 소원은 평화입니다.
 */
print(UniversityStudent18211.introduceClass() as String)
/*
 대학생의 소원은 A+입니다.
 */
UniversityStudent18211.introduceClass() as Void
/*
 인류의 소원은 평화입니다.
 */
