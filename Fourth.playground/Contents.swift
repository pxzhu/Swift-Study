import UIKit

// Type Inference
// 타입을 지정하지 않았으나 타입 추론을 통하여 name은 String 타입으로 선언됨
var name412 = "Matt"

// 앞서 타입 추론에 의해 name은 String 타입의 변수로 지정되었기 때문에
// 정수를 할당하려고 시도하면 오류가 발생
// name = 100

// Type Alias
typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let age42: MyInt = 100              // MyInt는 Int의 또 다른 이름
var year42: YourInt = 2080          // YourInt도 Int의 또 다른 이름

// MyInt도, YourInt도 Int이기 때문에 같은 타입으로 취급
year42 = age42

let month42: Int = 7                // 물론 기존의 Int도 사용 가능
let percentage42: MyDouble = 99.9   // Int 외에 다른 자료형도 모두 별칭 사용 가능

// Tuple
// String, Int, Double 타입을 갖는 튜플
var person43: (String, Int, Double) = ("pxzhu", 100, 182.1)

// 인덱스를 통해서 값을 빼 올 수 있음
print("이름: \(person43.0), 나이: \(person43.1), 신장: \(person43.2)")
/*
 이름: pxzhu, 나이: 100, 신장: 182.1
 */

person43.1 = 99                     // 인덱스를 통해 값을 할당할 수 있음
person43.2 = 181.9

print("이름: \(person43.0), 나이: \(person43.1), 신장: \(person43.2)")
/*
 이름: pxzhu, 나이: 99, 신장: 181.9
 */

// String, Int, Double 타입을 갖는 튜플
var person44: (name: String, age: Int, height: Double) = ("pxzhu", 100, 182.1)

//요소 이름을 통해서 값을 빼 올 수 있음
print("이름: \(person44.name), 나이: \(person44.age), 신장: \(person44.height)")
/*
 이름: pxzhu, 나이: 100, 신장: 182.1
 */

person44.age = 99                     // 요소 이름을 통해 값을 할당할 수 있음
person44.2 = 181.9                    // 인덱스를 통해 값을 할당할 수 있음

// 기존처럼 인덱스를 이용하여 값을 빼 올 수도 있음
print("이름: \(person44.0), 나이: \(person44.1), 신장: \(person44.2)")
/*
 이름: pxzhu, 나이: 99, 신장: 181.9
 */

typealias PersonTuple = (name: String, age: Int, height: Double)

let pxzhu: PersonTuple = ("pxzhu", 100, 182.1)
let matt: PersonTuple = ("matt", 150, 181.9)

print("이름: \(pxzhu.name), 나이: \(pxzhu.age), 신장: \(pxzhu.height)")
/*
 이름: pxzhu, 나이: 100, 신장: 182.1
 */
print("이름: \(matt.name), 나이: \(matt.age), 신장: \(matt.height)")
/*
 이름: matt, 나이: 150, 신장: 181.9
 */
