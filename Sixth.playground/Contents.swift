import UIKit

// Conditional
// if
// 스위프트의 if 구문은 조건의 값이 꼭 Bool 타입이어야 함
let first6111: Int = 5
let second6111: Int = 7

if first6111 > second6111 {
  print("First > Second")
} else if first6111 < second6111 {
  print("First < Second")
} else {
  print("First == Second")
}
/*
 First < Second
 */

let first6112: Int = 5
let second6112: Int = 5
var biggerValue6112: Int = 0

if first6112 > second6112 {                 // 조건 수식을 소괄호로 묶어주는 것은 선택 사항
  biggerValue6112 = first6112
} else if first6112 == second6112 {
  biggerValue6112 = first6112
} else if first6112 < second6112 {
  biggerValue6112 = second6112
} else if first6112 == 5 {
  // 조건을 충족하더라도 이미 first == second라는 조건을 충족해 위에서 실행됨으로써 실행되지 않음
  biggerValue6112 = 100
}
// 마지막 else는 생략 가능 else if도 생략 가능
// 즉, else나 else if 없이 if만 단독으로 사용할 수 있음

print(biggerValue6112)
/*
 5
 */

let first6113: Int = 5
let second6113: Int = 5
var biggerValue6113: Int = 0

if (first6113 > second6113) {
  biggerValue6113 == first6113
} else if (first6113 == second6113) {
  biggerValue6113 = first6113
} else if (first6113 < second6113) {
  biggerValue6113 == second6113
} else if (first6113 == 5) {
  biggerValue6113 = 100
}

print(biggerValue6113)
/*
 5
 */

// switch
let integerValue6121: Int = 5

switch integerValue6121 {
case 0:
  print("Value == zero")
case 1...10:
  print("Value == 1 ~ 10")
  fallthrough                                       // fallthrough는 다음 case문도 실행
case Int.min..<0,  101..<Int.max:
  print("Value < 0 or Value > 100")
  break
default:
  print("10 < Value <= 100")
}
/*
 Value == 1 ~ 10
 Value < 0 or Value > 100
 */

let doubleValue6122: Double = 3.0

switch doubleValue6122 {
case 0:
  print("Value == Zero")
case 1.5...10.5:
  print("1.5 <= Value <= 10.5")
default:
  print("Value == \(doubleValue6122)")
}
/*
 1.5 <= Value <= 10.5
 */

let stringValue6123: String = "Liam Neeson"

switch stringValue6123 {
case "pxzhu":
  print("He is pxzhu")
case "Jay":
  print("He is Jay")
case "Jenny", "Joker", "Nova":
  print("He or She is \(stringValue6123)")
default:
  print("\(stringValue6123) said 'I don't know who you are'")
}
/*
 Liam Neeson said 'I don't know who you are'
 */

let stringValue6124: String = "Joker"

switch stringValue6124 {
case "pxzhu":
  print("He is pxzhu")
case "Jay":
  print("He is Jay")
case "Jenny":
  fallthrough
case "Joker":
  fallthrough
case "Nova":
  print("He or She is \(stringValue6124)")
default:
  print("\(stringValue6124) said 'I don't know who you are.'")
}
/*
 He or She is Joker
 */

typealias NameAge6125 = (name: String, age: Int)

let tupleValue6125: NameAge6125 = ("pxzhu", 99)

switch tupleValue6125 {
case ("pxzhu", 50):
  print("정확히 맞췄습니다!")
case ("pxzhu", _):
  print("이름만 맞았습니다. 나이는 \(tupleValue6125.age)세 입니다.")
case (_, 99):
  print("나이만 맞았습니다. 이름은 \(tupleValue6125.name)세 입니다.")
default:
  print("누굴 찾나요?")
}
/*
 이름만 맞았습니다. 나이는 99세 입니다.
 */

let 직급6126: String = "사원"
let 연차6126: Int = 1
let 인턴인가6126: Bool = false

switch 직급6126 {
case "사원" where 인턴인가6126 == true:
  print("인턴입니다.")
case "사원" where 연차6126 < 2 && 인턴인가6126 == false:
  print("신입사원입니다.")
case "사원" where 연차6126 > 5:
  print("연식 좀 된 사원입니다.")
case "사원":
  print("사원입니다.")
case "대리":
  print("대리입니다.")
default:
  print("사장입니까?")
}
/*
 신입사원입니다.
 */

enum School6127 {
  case primary, elementary, middle, high, college, university, graduate
}

let 최종학력6127: School6127 = School6127.university

switch 최종학력6127 {
case .primary:
  print("최종학력은 유치원입니다.")
case .elementary:
  print("최종학력은 초등학교입니다.")
case .middle:
  print("최종학력은 중학교입니다. ")
case .high:
  print("최종학력은 고등학교입니다.")
case .college, .university:
  print("최종학력은 대학(교)입니다.")
case .graduate:
  print("최종학력은 대학원입니다.")
}
/*
 최종학력은 대학(교)입니다.
 */

enum Menu6128 {
  case chicken, pizza
}

let lunchMenu6128: Menu6128 = .chicken

switch lunchMenu6128 {
case .chicken:
  print("반반 무많이")
case .pizza:
  print("핫소스 많이 주세요")
case _:                         // case default:와 같은 표현
  print("오늘 메뉴가 뭐죠>")
}

enum Menu6129 {
  case chicken, pizza, hamburger
}

let lunchMenu6129: Menu6129 = .chicken

switch lunchMenu6129 {
case .chicken:
  print("반반 무많이")
case .pizza:
  print("핫소스 많이 주세요")
@unknown case _:
  print("오늘 메뉴가 뭐죠?")
}

// Loop
// for
for i in 0...2 {
  print(i)
}
/*
 0
 1
 2
 */

for i in 0...5 {
  if i.isMultiple(of: 2) {
    print(i)
    continue
  }
  print("\(i) == 홀수")
}
/*
 0
 1 == 홀수
 2
 3 == 홀수
 4
 5 == 홀수
 */

let helloSwift6211: String = "Hello Swift!"

for char in helloSwift6211 {
  print(char)
}
/*
 H
 e
 l
 l
 o
  
 S
 w
 i
 f
 t
 !
 */

var result6211: Int = 1

// 시퀀스에 해당하는 값이 필요 없다면 와일드카드 식별자(_)를 사용하면 됨
for _ in 1...3 {
  result6211 *= 10
}

print("10의 3제곱은 \(result6211)입니다.")
/*
 10의 3제곱은 1000입니다.
 */

// Dictionary
let friends6212: [String: Int] = ["Jay": 35, "Joe": 29, "Jenny": 31]

for tuple in friends6212 {
  print(tuple)
}
/*
 (key: "Jenny", value: 31)
 (key: "Joe", value: 29)
 (key: "Jay", value: 35)
 */

let 주소: [String: String] = ["도": "충청북도", "시군구": "청주시 청원구", "동읍면": "율량동"]

for (키, 값) in 주소 {
  print("\(키): \(값)")
}
/*
 도: 충청북도
 동읍면: 율량동
 시군구: 청주시 청원구
 */

// Set
let 지역번호: Set<String> = ["02",
                          "031", "032", "033",
                          "041", "042", "043",
                          "051", "052", "053", "054", "055",
                          "061", "062", "063", "064"
]

for 번호 in 지역번호 {
  print(번호)
}
/*
 032
 052
 053
 051
 063
 031
 061
 02
 042
 033
 064
 054
 062
 041
 043
 055
 */

var names6221: [String] = ["Joker", "Jenny", "Nova", "pxzhu"]

while names6221.isEmpty == false {
  print("Good bye \(names6221.removeFirst())")
  // removeFirst()는 요소를 삭제함과 동시에 삭제한 요소를 반환함
}
/*
 Good bye Joker
 Good bye Jenny
 Good bye Nova
 Good bye pxzhu
 */

// repear-while
var names6231: [String] = ["John", "Jenny", "Joe", "pxzhu"]

repeat {
  print("Good bye \(names6231.removeFirst())")
} while names6231.isEmpty == false
/*
 Good bye John
 Good bye Jenny
 Good bye Joe
 Good bye pxzhu
 */

var numbers: [Int] = [3, 2342, 6, 3252]

numbersLoop: for num in numbers {
  if num > 5 || num < 1 {
    continue numbersLoop
  }
  
  var count: Int = 0
  
  printLoop: while true {
    print(num)
    count += 1
    
    if count == num {
      break printLoop
    }
  }
  
  removeLoop: while true {
    if numbers.first != num {
      break numbersLoop
    }
    numbers.removeFirst()
  }
}
/*
 3
 3
 3
 numbers에는 [2342, 6, 3252]가 남음
 */
