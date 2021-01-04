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

// Collection
// Array
// 대괄호를 사용하여 배열임을 표현
// var names441: Array<String> = ["pxzhu", "matt", "pea", "phs"]

// 위 선언과 정확히 동일한 표현, [String]은 Array<String>의 축약 표현
var names441: [String] = ["pxzhu", "matt", "pea", "phs"]

// var emptyArray441: [Any] = [Any]()         // Any 데이터를 요소로 갖는 빈 배열 생성
// var emptyArray441: [Any] = Array<Any>()    // 위 선언과 정확히 같은 동작을 하는 코드

// 배열의 타입을 정확이 명시해줬다면 []만으로도 빈 배열을 생성할 수 있음
var emptyArray441: [Any] = []
print(emptyArray441.isEmpty)
/*
 true
 */
print(names441.count)
/*
 4
 */

print(names441[2])
/*
 pea
 */
names441[2] = "anon"
print(names441[2])
/*
 anon
 */
// print(names441[4])                         // 인덱스의 범위를 벗어났기 때문에 오류 발생

// names441[4] = "gat"                        // 인덱스의 범위를 벗어났기 때문에 오류 발생
names441.append("elsa")                       // 마지막에 elsa가 추가됨
names441.append(contentsOf: ["john", "max"])  // 맨 마지막에 john과 max가 추가됨
names441.insert("happy", at: 2)               // 인덱스 2에 삽입됨
// 인덱스 5의 위치에 jinhee와 minsoo가 삽임됨
names441.insert(contentsOf: ["jinhee", "minsoo"], at: 5)

print(names441[4])
/*
 phs
 */
print(names441.index(of: "pxzhu"))
/*
 Optional(0)
 */
print(names441.index(of: "christal"))
/*
 nil
 */
print(names441.first)
/*
 Optional("pxzhu")
 */
print(names441.last)
/*
 Optional("max")
 */

let firstItem441: String = names441.removeFirst()
let lastItem441: String = names441.removeLast()
let indexZeroItem441: String = names441.remove(at: 0)

print(firstItem441)
/*
 pxzhu
 */
print(lastItem441)
/*
 max
 */
print(indexZeroItem441)
/*
 matt
 */
print(names441[1...3])
/*
 ["anon", "phs", "jinhee"]
 */

// Dictionary
// typealias를 통해 조금 더 단순하게 표현해볼 수도 있음
typealias StringIntDictionary442 = [String: Int]

// 키는 String, 값은 Int 타입인 빈 딕셔너리를 생성함
// var numberForName442: Dictionary<String, Int> = Dictionary<String, Int>()

// 위 선언과 같은 표현, [String; Int]는 Dictionary<String, Int>의 축약 표현
// var numberForName442: [String: Int] = [String: Int]()

// 위 코드와 같은 동작
// var numberForName442: StringIntDictionary442 = StringIntDictionary442()

// 딕셔너리의 키와 값 타입을 정확이 명시해줬다면 [:]만으로도 빈 딕셔너리를 생성할 수 있음
// var numberForName442: [String: Int] = [:]

// 초깃값을 주어 생성해줄 수도 있음
var numberForName442: [String: Int] = ["pxzhu": 100, "matt": 200, "pea": 300]

print(numberForName442.isEmpty)
/*
 false
 */
print(numberForName442.count)
/*
 3
 */

print(numberForName442["matt"])
/*
 Optional(200)
 */
print(numberForName442["phs"])
/*
 nil
 */

numberForName442["matt"] = 150
print(numberForName442["matt"])
/*
 Optional(150)
 */

numberForName442["max"] = 999                       // max라는 키로 999라는 값 추가
print(numberForName442["max"])
/*
 Optional(999)
 */

print(numberForName442.removeValue(forKey: "pxzhu"))
/*
 Optional(100)
 */

// 위에서 pxzhu 키에 해당하는 값이 이미 삭제되었으므로 nil이 반환됨
// 키에 해당하는 값이 없으면 기본값을 돌려주도록 할 수도 있음
print(numberForName442.removeValue(forKey: "pxzhu"))
/*
 nil
 */

// pxzhu 키에 해당하는 값이 없으면 기본으로 0이 반환됨
print(numberForName442["pxzhu", default: 0])
/*
 0
 */

// Set
// var names443: Set<String> = Set<String>()         // 빈 세트 생성
// var names443: Set<String> = []                    // 빈 세트 생성

// Array와 마찬가지로 대괄호를 사용
var names443: Set<String> = ["pxzhu", "matt", "pea", "pxzhu"]

// 그렇기 때문에 타입 추론을 사용하게 되면 컴파일러는 Set가 아닌 Array로 타입을 지정함
var numbers443 = [100, 200, 300]
print(type(of: numbers443))
/*
 Array<Int>
 */

print(names443.isEmpty)
/*
 false
 */
print(names443.count)
/*
 3                                                    // 중복된 값은 허용되지 않아 pxzhu는 1개만 남음
 */

print(names443.count)
names443.insert("phs")
print(names443.count)

print(names443.remove("matt"))
/*
 Optional("matt")
 */
print(names443.remove("john"))
/*
 nil
 */

let englishClassStudents443: Set<String> = ["pxzhu", "matt", "pea"]
let koreanClassStudents443: Set<String> = ["jenny", "pea", "matt", "hana", "minsoo"]

// 교집합 {"matt", "pea"}
let intersectSet: Set<String> = englishClassStudents443.intersection(koreanClassStudents443)

// 여집합의 합(배타적 논리합) {"pxzhu", "jenny", "hana", "minsoo"}
let stmmetricDiffSet: Set<String> = englishClassStudents443.symmetricDifference(koreanClassStudents443)

// 합집합 {"pxzhu", "matt", "pea", "jenny", "hana", "minsoo"}
let unionSet: Set<String> = englishClassStudents443.union(koreanClassStudents443)

// 차집합 {"pxzhu"}
let subtractSet: Set<String> = englishClassStudents443.subtracting(koreanClassStudents443)

print(unionSet.sorted())
/*
 ["hana", "jenny", "matt", "minsoo", "pea", "pxzhu"]
 */

let 새: Set<String> = ["비둘기", "닭", "기러기"]
let 포유류: Set<String> = ["사자", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류)              // 새와 포유류의 합집합

print(새.isDisjoint(with: 포유류))                   // 서로 배타적인가?
/*
 true
 */
print(새.isSubset(of: 동물))                        // 새가 동물의 부분집합인가?
/*
 true
 */
print(동물.isSuperset(of: 포유류))                   // 동물은 포유류의 전체집합인가?
/*
 true
 */
print(동물.isSuperset(of: 새))                      // 동물은 새의 전체집합인가?
/*
 true
 */

// Randomization, Shuffle
var array444: [Int] = [0, 1, 2, 3, 4]
var set444: Set<Int> = [0, 1, 2, 3, 4]
var dictionary444: [String: Int] = ["a": 1, "b": 2, "c": 3]
var string444: String = "string"

print(array444.randomElement())                   // 임의의 요소
/*
 Oprtional(1)
 */
print(array444.shuffled())                        // 뒤죽박죽된 배열, array444 내부의 요소는 그대로 있음
/*
 [0, 2, 4, 3, 1]
 */
print(array444)
/*
 [0, 1, 2, 3, 4]
 */
array444.shuffle()                                // array 자체를 뒤죽박죽으로 뒤섞기
print(array444)                                   // 뒤죽박죽된 배열
/*
 [1, 0, 4, 2, 3]
 */

print(set444.shuffled())                          // 세트를 뒤섞으면 배열로 반환해줌
/*
 [2, 0, 1, 4, 3]
 */
// set.shuffle()                                  // 오류 발생! 세트는 순서가 없기 때문에 스스로 뒤섞을 수 없음
print(dictionary444.shuffled())                   // 딕셔너리를 뒤섞으면 (키, 값)이 쌍을 이룬 튜플의 배열로 반환해줌
/*
 [(key: "c", value: 3), (key: "b", value: 2), (key: "a", value: 1)]
 */
print(string444.shuffled())                       // String로 컬렉션
/*
 ["t", "r", "s", "i", "g", "n"]
 */
