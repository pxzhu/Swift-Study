import UIKit

// Initailizer
struct Area11111 {
  var squareMeter: Double
  
  init() {
    squareMeter = 0.0
  }
}

let room11111: Area11111 = Area11111()
print(room11111.squareMeter)
/*
 0.0
 */

struct Area11112 {
  var squareMeter: Double = 0.0
}

let room11112: Area11112 = Area11112()
print(room11112.squareMeter)
/*
 0.0
 */

struct Area11121 {
  var squareMeter: Double
  
  init(fromPy py: Double) {
    squareMeter = py * 3.3058
  }
  
  init(fromSquareMeter squareMeter: Double) {
    self.squareMeter = squareMeter
  }
  
  init(value: Double) {
    squareMeter = value
  }
  
  init(_ value: Double) {
    squareMeter = value
  }
}

let roomOne11121: Area11121 = Area11121(fromPy: 15.0)
print(roomOne11121.squareMeter)
/*
 49.587
 */

let roomTwo11121: Area11121 = Area11121(fromSquareMeter: 33.06)
print(roomTwo11121.squareMeter)
/*
 33.06
 */

let roomThree11121: Area11121 = Area11121(value: 30.0)
let roomFour11121: Area11121 = Area11121(55.0)

// Area11121()                              // 오류 발생

// Optional Property
class Person11131 {
  var name: String
  var age: Int?
  
  init(name: String) {
    self.name = name
  }
}

let pxzhu: Person11131 = Person11131(name: "pxzhu")
print(pxzhu.name)
/*
 pxzhu
 */

print(pxzhu.age)
/*
 nil
 */

pxzhu.age = 99
print(pxzhu.age)
/*
 Optional(99)
 */

pxzhu.name = "Eric"
print(pxzhu.name)
/*
 Eric
 */

// Memberwise
struct Point11151 {
  var x: Double = 0.0
  var y: Double = 0.0
}

struct Size11151 {
  var width: Double = 0.0
  var height: Double = 0.0
}

let point11151: Point11151 = Point11151(x: 0, y: 0)
let size11151: Size11151 = Size11151(width:50.0, height: 50.0)

// 구조체의 저장 프로퍼티에 기본값이 있는 경우 필요한 매개변수만 사용하여 초기화할 수도 있음
let somePoint11151: Point11151 = Point11151()
let someSize11151: Size11151 = Size11151(width: 50)
let anotherPoint11151: Point11151 = Point11151(y: 100)

enum Student11161 {
  case elementary, middle, high
  case none
  
  // 사용자 정의 이니셜라이저가 있는 경우, init() 메서드를 구현해주어야 기본 이니셜라이저를 사용할 수 있음
  init() {
    self = .none
  }
  
  init(koreanAge: Int) {
    switch koreanAge {
    case 8...13:
      self = .elementary
    case 14...16:
      self = .middle
    case 17...19:
      self = .high
    default:
      self = .none
    }
  }
  
  init(bornAt: Int, currentYear: Int) {
    self.init(koreanAge: currentYear - bornAt + 1)
  }
}

var younger11161: Student11161 = Student11161(koreanAge: 16)
print(younger11161)
/*
 middle
 */

younger11161 = Student11161(bornAt: 1998, currentYear: 2016)
print(younger11161)
/*
 high
 */

// Failable
class Person11171 {
  let name: String
  var age: Int?
  
  init?(name: String) {
    
    if name.isEmpty {
      return nil
    }
    
    self.name = name
  }
  
  init?(name: String, age: Int) {
    if name.isEmpty || age < 0 {
      return nil
    }
    self.name = name
    self.age = age
  }
}
let pxzhu11171: Person11171? = Person11171(name: "pxzhu", age: 99)

if let person11171: Person11171 = pxzhu11171 {
  print(person11171.name)
} else {
  print("Person wasn't initialized")
}
/*
 pxzhu
 */

let chope11171: Person11171? = Person11171(name: "chope", age: -10)

if let person11171: Person11171 = chope11171 {
  print(person11171.name)
} else {
  print("Person wasn't initialized")
}
/*
 Person wasn't initialized
 */

let eric11171: Person11171? = Person11171(name: "", age: 30)

if let person11171: Person11171 = eric11171 {
  print(person11171.name)
} else {
  print("Person wasn't initialized")
}
/*
 Person wasn't initialized
 */

// Closer
struct Student11181 {
  var name: String?
  var number: Int?
}

class SchoolClass11181 {
  var students: [Student11181] = {
    // 새로운 인스턴스를 생성하고 사용자 정의 연산을 통한 후 반환
    // 반환되는 값의 타입은 [Student11181] 타입이어야 함
    var arr: [Student11181] = [Student11181]()
    
    for num in 1...15 {
      var student: Student11181 = Student11181(name: nil, number: num)
      arr.append(student)
    }
    
    return arr
  }()
}

let myClass11181: SchoolClass11181 = SchoolClass11181()
print(myClass11181.students.count)
/*
 15
 */

// Deinitializer
class FileManager11211 {
  var fileName: String
  
  init(fileName: String) {
    self.fileName = fileName
  }
  
  func openFile() {
    print("Open File: \(self.fileName)")
  }
  
  func modifyFile() {
    print("Modify File: \(self.fileName)")
  }
  
  func writeFile() {
    print("Write File: \(self.fileName)")
  }
  
  func closeFile() {
    print("Close File: \(self.fileName)")
  }
  
  deinit {
    print("Deinit instance")
    self.writeFile()
    self.closeFile()
  }
}

var fileManager11211: FileManager11211? = FileManager11211(fileName: "abc.txt")

if let manager11211: FileManager11211 = fileManager11211 {
  manager11211.openFile()
  manager11211.modifyFile()
  /*
   Open File: abc.txt
   Modify File: abc.txt
   */
}

fileManager11211 = nil
/*
 Deinit instance
 Write File: abc.txt
 Close File: abc.txt
 */
