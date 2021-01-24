import UIKit

// Map
let numbers15111: [Int] = [0, 1, 2, 3, 4]

var doubledNumbers15111: [Int] = [Int]()
var strings15111: [String] = [String]()

// for 구문 사용
for number in numbers15111 {
  doubledNumbers15111.append(number * 2)
  strings15111.append("\(number)")
}

print(doubledNumbers15111)
/*
 [0, 2, 4, 6, 8]
 */
print(strings15111)
/*
 ["0", "1", "2", "3", "4"]
 */

// map 메서드 사용
doubledNumbers15111 = numbers15111.map({ (number: Int) -> Int in
  return number * 2
})
strings15111 = numbers15111.map({ (number: Int) -> String in
  return "\(number)"
})

print(doubledNumbers15111)
/*
 [0, 2, 4, 6, 8]
 */
print(strings15111)
/*
 ["0", "1", "2", "3", "4"]
 */

let numbers15112: [Int] = [0, 1, 2, 3, 4]

// 기본 클로저 표현식 사용
var doubledNumbers15112 = numbers15112.map({ (number: Int) -> Int in
  return number * 2
})

// 매개변수 및 반환 타입 생략
doubledNumbers15112 = numbers15112.map({ return $0 * 2 })
print(doubledNumbers15112)
/*
 [0, 2, 4, 6, 8]
 */

// 반환 키워드 생략
doubledNumbers15112 = numbers15112.map({ $0 * 2 })
print(doubledNumbers15112)
/*
 [0, 2, 4, 6, 8]
 */

// 후행 클로저 사용
doubledNumbers15112 = numbers15112.map { $0 * 2 }
print(doubledNumbers15112)
/*
 [0, 2, 4, 6, 8]
 */

let evenNumbers15113: [Int] = [0, 2, 4, 6, 8]
let oddNumbers15113: [Int] = [0, 1, 3, 5, 7]
let multiplyTwo15113: (Int) -> Int = { $0 * 2 }

let doubledEvenNumbers15113 = evenNumbers15113.map(multiplyTwo15113)
print(doubledEvenNumbers15113)
/*
 [0, 4, 8, 12, 16]
 */

let doubledOddNumbers15113 = oddNumbers15113.map(multiplyTwo15113)
print(doubledOddNumbers15113)
/*
 [0, 2, 6, 10, 14]
 */

let alphabetDictionary15114: [String: String] = ["a":"A", "b":"B"]

var keys15114: [String] = alphabetDictionary15114.map { (tuple: (String, String)) -> String in
  return tuple.0
}

keys15114 = alphabetDictionary15114.map { $0.0 }

let values15114: [String] = alphabetDictionary15114.map { $0.1 }
print(keys15114)
/*
 ["a", "b"]
 */
print(values15114)
/*
 ["A", "B"]
 */

var numberSet15114: Set<Int> = [1, 2, 3, 4, 5]
let reesultSet15114 = numberSet15114.map { $0 * 2 }
print(reesultSet15114)
/*
 [10, 6, 2, 4, 8]
 */

let optionalInt15114: Int? = 3
let resultInt15114: Int? = optionalInt15114.map { $0 * 2 }
print(resultInt15114)
/*
 Optional(6)
 */

let range15114: CountableClosedRange = (0...3)
let resultRange15114: [Int] = range15114.map { $0 * 2 }
print(resultRange15114)
/*
 [0, 2, 4, 6]
 */

// Filter
let numbers15211: [Int] = [0, 1, 2, 3, 4, 5]

let evenNumbers15211: [Int] = numbers15211.filter { (number: Int) -> Bool in
  return number % 2 == 0
}
print(evenNumbers15211)
/*
 [0, 2, 4]
 */

let oddNumbers15211: [Int] = numbers15211.filter { $0 % 2 == 1 }
print(oddNumbers15211)
/*
 [1, 3, 5]
 */

let numbers15212: [Int] = [0, 1, 2, 3, 4, 5]

let mappedNumbers15212: [Int] = numbers15212.map { $0 + 3 }

let evenNumbers15212: [Int] = mappedNumbers15212.filter { (number: Int) -> Bool in
  return number % 2 == 0
}
print(evenNumbers15212)
/*
 [4, 6, 8]
 */

// mappedNumbers15212 를 굳이 여러 번 사용할 필요가 없다면 메서드를 체인처럼 연결하여 사용할 수 있음
let oddNumbers15212: [Int] = numbers15212.map { $0 + 3 }.filter { $0 % 2 == 1 }
print(oddNumbers15212)
/*
 [3, 5, 7]
 */

// Reduce
let numbers15311: [Int] = [1, 2, 3]

// 첫 번째 형태인 reduce(_:_:) 메서드 사용

// 초깃값이 0이고 정수 배열의 모든 값을 더함
var sum15311: Int = numbers15311.reduce(0, { (result: Int, next: Int) -> Int in
  print("\(result) + \(next)")
  /*
   0 + 1
   1 + 2
   3 + 3
   */
  return result + next
})

print(sum15311)
/*
 6
 */

// 초깃값이 0이고 정수 배열의 모든 값을 뺌
let subtract15311: Int = numbers15311.reduce(0, { (result: Int, next: Int) -> Int in
  print("\(result) - \(next)")
  /*
   0 - 1
   -1 - 2
   -3 - 3
   */
  return result - next
})

print(subtract15311)
/*
 -6
 */

// 초깃값이 3이고 정수 배열의 모든 값을 더함
let sumFromThree15311: Int = numbers15311.reduce(3) {
  print("\($0) + \($1)")
  /*
   3 + 1
   4 + 2
   6 + 3
   */
  return $0 + $1
}

print(sumFromThree15311)
/*
 9
 */

// 초깃값이 3이고 정수 배열의 모든 값을 뺌
var subtractFromThree15311: Int = numbers15311.reduce(3) {
  print("\($0) - \($1)")
  /*
   3 - 1
   2 - 2
   0 - 3
   */
  return $0 - $1
}

print(subtractFromThree15311)
/*
 -3
 */

// 문자열 배열을 reduce(_:_:) 메서드를 이용해 연결시킴
let names15311: [String] = ["Chope", "Jay", "Joker", "Nova"]

let reducedNames15311: String = names15311.reduce("pxzhu's friend : ") {
  return $0 + ", " + $1
}

print(reducedNames15311)
/*
 pxzhu's friend : , Chope, Jay, Joker, Nova
 */

// 두 번째 형태인 reduce(into:_:) 메서드의 사용

// 초깃값이 0이고 정수 배열의 모든 값을 더함
// 첫 번째 리듀스 형태와 달리 클로저의 값을 반환하지 않고 내부에서 직접 이전 값을 변경한다는 점이 다름
sum15311 = numbers15311.reduce(into: 0, { (result: inout Int, next: Int) in
  print("\(result) + \(next)")
  /*
   0 + 1
   1 + 2
   3 + 3
   */
  result += next
})

print(sum15311)
/*
 6
 */

// 초깃값이 3이고 정수 배열의 모든 값을 뺌
// 첫 번째 리듀스 형태와 달리 클로저의 값을 반환하지 않고 내부에서 직접 이전 값을 변경한다는 점이 다름
subtractFromThree15311 = numbers15311.reduce(into: 3, {
  print("\($0) - \($1)")
  /*
   3 - 1
   2 - 2
   0 - 3
   */
  $0 -= $1
})

print(subtractFromThree15311)
/*
 -3
 */

// 첫 번째 리듀스 형태와 다르기 때문에 다른 컨테이너에 값을 변경하여 넣어줄 수도 있음
// 이렇게 하면 맵이나 필터와 유사한 형태로도 사용할 수 있음

// 홀수는 걸러내고 짝수만 두 배로 변경하여 초깃값인 [1, 2, 3] 배열에 직접 연산
//var doubledNumbers15311: [Int] = numbers15311.reduce(into: [1, 2]) { (result: inout [Int], next: Int) in
//  print("result: \(result) next: \(next)")
//
//  guard next.is else {
//    return
//  }
//
//  print("\(result) append \(next)")
//
//  result.append(next * 2)
//}
//
//print(doubledNumbers15311)

// 이름을 모두 대문자로 변환하여 초깃값인 빈 배열에 직접 연산
var upperCasedNames15311: [String]
upperCasedNames15311 = names15311.reduce(into: [], {
  $0.append($1.uppercased())
})

print(upperCasedNames15311)
/*
 ["CHOPE", "JAY", "JOKER", "NOVA"]
 */

// 맵을 사용한 모습
upperCasedNames15311 = names15311.map { $0.uppercased() }
print(upperCasedNames15311)
/*
 ["CHOPE", "JAY", "JOKER", "NOVA"]
 */

let numbers15312: [Int] = [1, 2, 3, 4, 5, 6, 7]

// 짝수를 걸러내어 각 값에 3을 곱해준 후 모든 값을 더함
var result15312: Int = numbers15312.filter { $0.isMultiple(of: 2) }.map { $0 * 3 }.reduce(0) { $0 + $1 }
print(result15312)
/*
 36
 */

// for-in 구문 사용 시
result15312 = 0

for number in numbers15312 {
  guard number.isMultiple(of: 2) else {
    continue
  }
  
  result15312 += number * 3
}

print(result15312)
/*
 36
 */

enum Gender15411 {
  case male, female, unknown
}

struct Friend15411 {
  let name: String
  let gender: Gender15411
  let location: String
  var age: UInt
}

var friends15411: [Friend15411] = [Friend15411]()

friends15411.append(Friend15411(name: "Yoobato", gender: .male, location: "발리", age: 26))
friends15411.append(Friend15411(name: "JiSoo", gender: .male, location: "시드니", age: 24))
friends15411.append(Friend15411(name: "JuHyun", gender: .male, location: "경기", age: 30))
friends15411.append(Friend15411(name: "JiYoung", gender: .female, location: "서울", age: 22))
friends15411.append(Friend15411(name: "SungHo", gender: .male, location: "충북", age: 20))
friends15411.append(Friend15411(name: "JungKi", gender: .unknown, location: "대전", age: 29))
friends15411.append(Friend15411(name: "YoungMin", gender: .male, location: "경기", age: 24))

// 서울 외의 지역에 거주하며 25세 이상인 친구
var result15411: [Friend15411] = friends15411.map { Friend15411(name: $0.name, gender: $0.gender, location: $0.location, age: $0.age + 1) }

result15411 = result15411.filter { $0.location != "서울" && $0.age >= 25 }

let string15411: String = result15411.reduce("서울 외의 지역에 거주하며 25세 이상인 친구") { $0 + "\n" + "\($1.name) \($1.gender) \($1.location) \($1.age)세" }

print(string15411)
/*
 서울 외의 지역에 거주하며 25세 이상인 친구
 Yoobato male 발리 27세
 JiSoo male 시드니 25세
 JuHyun male 경기 31세
 JungKi unknown 대전 30세
 YoungMin male 경기 25세
 */
