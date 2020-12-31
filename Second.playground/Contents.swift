// Chpater 02 스위프트 처음 시작하기
import UIKit

// print()와 dump()
struct BasicInfomation {
  let name: String
  var age: Int
}

var pxzhuInfo: BasicInfomation = BasicInfomation(name: "pxzhu", age: 25)

class Person {
  var height: Float = 0.0
  var weight: Float = 0.0
}

let pxzhu: Person = Person()
pxzhu.height = 182.1
pxzhu.weight = 73.3

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

print(pxzhu)
/*
 __lldb_expr_34.Person
 */
dump(pxzhu)
/*
 ▿ __lldb_expr_40.Person #0
   - height: 182.1
   - weight: 73.3
 */
