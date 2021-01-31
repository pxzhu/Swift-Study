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

// Property
class Person18221 {
  var name: String = ""
  var age: Int = 0
  var koreanAge: Int {
    return self.age + 1
  }
  
  var introduction: String {
    return "이름: \(name), 나이: \(age)"
  }
}

class Student18221: Person18221 {
  var grade: String = "F"
  
  override var introduction: String {
    return super.introduction + " " + "학점: \(self.grade)"
  }
  
  override var koreanAge: Int {
    get {
      return super.koreanAge
    }
    
    set {
      self.age = newValue - 1
    }
  }
}

let pxzhu18221: Person18221 = Person18221()
pxzhu18221.name = "pxzhu"
pxzhu18221.age = 55
// pxzhu18221.koreanAge = 56                                  // 오류 발생
print(pxzhu18221.introduction)
/*
 이름: pxzhu, 나이: 55
 */
print(pxzhu18221.koreanAge)
/*
 56
 */

let jay18221: Student18221 = Student18221()
jay18221.name = "jay"
jay18221.age = 14
jay18221.koreanAge = 15
print(jay18221.introduction)
/*
 이름: jay, 나이: 14 학점: F
 */
print(jay18221.koreanAge)
/*
 15
 */

class Person18231 {
  var name: String = ""
  var age: Int = 0 {
    didSet {
      print("Person age: \(self.age)")
    }
  }
  var koreanAge: Int {
    return self.age + 1
  }
  
  var fullName: String {
    get {
      return self.name
    }
    
    set {
      self.name = newValue
    }
  }
}

class Student18231: Person18231 {
  var grade: String = "F"
  
  override var age: Int {
    didSet {
      print("Studnet age: \(self.age)")
    }
  }
  
  override var koreanAge: Int {
    get {
      return super.koreanAge
    }
    
    set {
      self.age = newValue - 1
    }
    
    // didSet {  }                                      // 오류 발생
  }
  
  override var fullName: String {
    didSet {
      print("Full Name: \(self.fullName)")
    }
  }
}

let pxzhu18231: Person18231 = Person18231()
pxzhu18231.name = "pxzhu"
pxzhu18231.age = 55
/*
 Person age: 55
 */
pxzhu18231.fullName = "Park xzhu"
print(pxzhu18231.koreanAge)
/*
 56
 */

let jay18231: Student18231 = Student18231()
jay18231.name = "jay"
jay18231.age = 14
/*
 Person age: 14
 Studnet age: 14
 */
jay18231.koreanAge = 15
/*
 Person age: 14
 Studnet age: 14
 */
jay18231.fullName = "Kim jay"
/*
 Full Name: Kim jay
 */
print(jay18231.koreanAge)
/*
 15
 */

class School18241 {
  var students: [Student18231] = [Student18231]()
  
  subscript(number: Int) -> Student18231 {
    print("School subscript")
    return students[number]
  }
}

class MiddleSchool18241: School18241 {
  var middleStudents: [Student18231] = [Student18231]()
  
  // 부모클래스에게 상속받은 서브스크립트 재정의
  override subscript(index: Int) -> Student18231 {
    print("MiddleSchool subscript")
    return middleStudents[index]
  }
}

let university18241: School18241 = School18241()
university18241.students.append(Student18231())
university18241[0]
/*
 School subscript
 */

let middle18241: MiddleSchool18241 = MiddleSchool18241()
middle18241.middleStudents.append(Student18231())
middle18241[0]
/*
 MiddleSchool subscript
 */

// Final
class Person18251 {
  final var name: String = ""
  
  final func speak() {
    print("가나다라마바사")
  }
}

final class Student18251: Person18251 {
//  override var name: String {
//    set {
//      super.name = newValue
//    }
//    get {
//      return "학생"
//    }
//  }
//
//  override func speak() {
//    print("저는 학생입니다.")
//  }
}

//class UniversityStudent18251: Student18251 {  }

// final을 사용하여 재정의 또는 상속할 수 없음
