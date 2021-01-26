import UIKit

struct Student17211 {
  var name: String
  var number: Int
}

class School17211 {
  var number: Int = 0
  var students: [Student17211] = [Student17211]()
  
  func addStudent(name: String) {
    let student: Student17211 = Student17211(name: name, number: self.number)
    self.students.append(student)
    self.number += 1
  }
  
  func addStudents(names: String...) {
    for name in names {
      self.addStudent(name: name)
    }
  }
  
  subscript(index: Int) -> Student17211? {
    if index < self.number {
      return self.students[index]
    }
    return nil
  }
}

let highSchool17211: School17211 = School17211()
highSchool17211.addStudents(names: "MiJeong", "JuHyun", "JiYoung", "SeongUk", "MoonDuk")

let aStudent17211: Student17211? = highSchool17211[1]
print("\(aStudent17211?.number) \(aStudent17211?.name)")
/*
 Optional(1) Optional("JuHyun")
 */

struct Student17311 {
  var name: String
  var number: Int
}

class School17311 {
  var number: Int = 0
  var students: [Student17311] = [Student17311]()
  
  func addStudent(name: String) {
    let student: Student17311 = Student17311(name: name, number: self.number)
    self.students.append(student)
    self.number += 1
  }
  
  func addStudents(names: String...) {
    for name in names {
      self.addStudent(name: name)
    }
  }
  subscript(index: Int) -> Student17311? {
    get {
      if index < self.number {
        return self.students[index]
      }
      return nil
    }
    
    set {
      guard var newStudent: Student17311 = newValue else {
        return
      }
      
      var number: Int = index
      
      if index > self.number {
        number = self.number
        self.number += 1
      }
      
      newStudent.number = number
      self.students[number] = newStudent
    }
  }
  
  subscript(name: String) -> Int? {
    get {
      return self.students.filter { $0.name == name }.first?.number
    }
    
    set {
      guard var number: Int = newValue else {
        return
      }
      
      if number > self.number {
        number = self.number
        self.number += 1
      }
      
      let newStudent: Student17311 = Student17311(name: name, number: number)
      self.students[number] = newStudent
    }
  }
  subscript(name: String, number: Int) -> Student17311? {
    return self.students.filter { $0.name == name && $0.number == number }.first
  }
}

let highSchool17311: School17311 = School17311()
highSchool17311.addStudents(names: "MiJeong", "JuHyun", "JiYoung", "SeongUk", "MoonDuk")

let aStudent17311: Student17311? = highSchool17311[1]
print("\(aStudent17311?.number) \(aStudent17311?.name)")
/*
 Optional(1) Optional("JuHyun")
 */

print(highSchool17311["MiJeong"])
/*
 Optional(0)
 */
print(highSchool17311["DongJin"])
/*
 nil
 */

highSchool17311[0] = Student17311(name: "HongEui", number: 0)
highSchool17311["MangGu"] = 1

print(highSchool17311["JuHyun"])
/*
 nil
 */
print(highSchool17311["MangGu"])
/*
 Optional(1)
 */
print(highSchool17311["SeongUk", 3])
/*
 Optional(__lldb_expr_254.Student17311(name: "SeongUk", number: 3))
 */
print(highSchool17311["HeeJin", 3])
/*
 nil
 */

// Type Script
enum School17411: Int {
  case elemtary = 1, middle, high, unibersity
  
  static subscript(level: Int) -> School17411? {
    return Self(rawValue: level)
  }
}

let school17411: School17411? = School17411[2]
print(school17411)
/*
 Optional(__lldb_expr_292.School17411.middle)
 */
