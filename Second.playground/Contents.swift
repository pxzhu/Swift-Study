// Chpater 02 스위프트 처음 시작하기
import UIKit

// print()와 dump()
struct BasicInfomation {
  let name221: String
  var age221: Int
}

var pxzhuInfo: BasicInfomation = BasicInfomation(name221: "pxzhu", age221: 25)

class Person {
  var height221: Float = 0.0
  var weight221: Float = 0.0
}

let pxzhu221: Person = Person()
pxzhu221.height221 = 182.1
pxzhu221.weight221 = 73.3

print(pxzhuInfo)
/*
 BasicInfomation(name: "pxzhu", age: 25)
 */
dump(pxzhuInfo)
/*
 ▿ __lldb_expr_23.BasicInfomation
   - name: "pxzhu"
   - age: 25
 */

print(pxzhu221)
/*
 __lldb_expr_34.Person
 */
dump(pxzhu221)
/*
 ▿ __lldb_expr_40.Person #0
   - height: 182.1
   - weight: 73.3
 */

// String Interpolation
let name222: String = "pxzhu"
print("My name is \(name222)")
/*
 My name is pxzhu
 */

// Comment
// One Line Comment

/*
 Multi Line Comments
 */

/*
 /*
  Overlap Comment
  */
 Overlap Comment
 */

/// <#Description#>

// Variable
var name241: String = "pxzhu"
var age241: Int = 0
var job241 = "iOS Programmer"   // 타입 추론 사용
var height241 = 182.1           // 실수 타입의 타입 추론
print("\(type(of: height241))")
/*
 Double
 */
age241 = 99                     // 변수는 값을 변경해 줄 수 있음
job241 = "Writter"              // 값을 변경할 때는 기존과 같은 타입의 값 할당
print("저의 이름은 \(name241)이고, 나이는 \(age241)세 이며, 직업은 \(job241)입니다. 비밀이지만, 키는  \(height241)cm 입니다.")
/*
 저의 이름은 pxzhu이고, 나이는 99세 이며, 직업은 Writter입니다. 비밀이지만, 키는  182.1cm 입니다.
 */

