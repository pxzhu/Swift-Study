import UIKit

// Closure
let names13111: [String] = ["wizplan", "eric", "pxzhu", "jenny"]

func backwards13111(first: String, second: String) -> Bool {
  print("\(first) \(second) 비교중")
  return first > second
}

let reversed13111: [String] = names13111.sorted(by: backwards13111)
/*
 eric wizplan 비교중
 pxzhu eric 비교중
 pxzhu wizplan 비교중
 jenny eric 비교중
 jenny pxzhu 비교중
 */
print(reversed13111)
/*
 ["wizplan", "pxzhu", "jenny", "eric"]
 */

/// { (매개변수들) -> 반환 타입 in
///   실행 코드
/// }
// backwards13111(first:second) 함수 대신에 sorted(by:) 메서드의 전달인자로 클로저를 직접 전달
let reversed13112: [String] = names13111.sorted(by: { (first: String, second: String) -> Bool in
  return first > second
})
print(reversed13112)
/*
 ["wizplan", "pxzhu", "jenny", "eric"]
 */

// Trailing
let reversed13211: [String] = names13111.sorted() { (first: String, second: String) -> Bool in
  return first > second
}

let reversed13212: [String] = names13111.sorted { (first: String, second: String) -> Bool in
  return first > second
}

let reversed13311: [String] = names13111.sorted { (first, second) in
  return first > second
}

let reversed13321: [String] = names13111.sorted {
  return $0 > $1
}

let reversed13331: [String] = names13111.sorted { $0 > $1 }

// Capture
func makeIncrementer13411(forIncrement amount: Int) -> (() -> Int) {
  var runningTotal = 0
  func incrementer() -> Int {
    runningTotal += amount
    return runningTotal
  }
  return incrementer
}

let incrementByTwo13411: (() -> Int) = makeIncrementer13411(forIncrement: 2)

let first13411: Int = incrementByTwo13411()                      // 2
let second13411: Int = incrementByTwo13411()                     // 4
let third13411: Int = incrementByTwo13411()                      // 6

let incrementByTwo13412: (() -> Int) = makeIncrementer13411(forIncrement: 2)
let incrementByTwo134122: (() -> Int) = makeIncrementer13411(forIncrement: 2)
let incrementByTen13412: (() -> Int) = makeIncrementer13411(forIncrement: 10)

let first13412: Int = incrementByTwo13412()                     // 2
let second13412: Int = incrementByTwo13412()                    // 4
let third13412: Int = incrementByTwo13412()                     // 6

let first134122: Int = incrementByTwo134122()                    // 2
let second134122: Int = incrementByTwo134122()                   // 4
let third134122: Int = incrementByTwo134122()                    // 6

let ten13412: Int = incrementByTen13412()                       // 10
let twenty13412: Int = incrementByTen13412()                    // 20
let thirty13412: Int = incrementByTen13412()                    // 30

// Escaping
typealias VoidVoidClosure13611 = () -> Void
let firstClosure13611: VoidVoidClosure13611 = {
  print("Closure A")
}
let secondClosure13611: VoidVoidClosure13611 = {
  print("Closure B")
}

// first와 second 매개변수 클로저는 함수의 반환 값으로 사용될 수 있으므로 탈출 클로저
func returnOneClosure13611(first: @escaping VoidVoidClosure13611, second: @escaping VoidVoidClosure13611, shouldReturnFirstClosure: Bool) -> VoidVoidClosure13611 {
  // 전달인자로 전달받은 클로저를 함수 외부로 다시 반환하기 때문에 함수를 탈출하는 클로저
  return shouldReturnFirstClosure ? first: second
}

// 함수에서 반환한 클로저가 함수 외부의 상수에 저장
let returnedClosure13611: VoidVoidClosure13611 = returnOneClosure13611(first: firstClosure13611, second: secondClosure13611, shouldReturnFirstClosure: true)

returnedClosure13611()
/*
 Closure A
 */

var closures13611: [VoidVoidClosure13611] = []

// closure 매개변수 클로저는 함수 외부의 변수에 저장될 수 있으므로 탈출 클로저
func appendClosure13611(closure: @escaping VoidVoidClosure13611) {
  // 전달인자로 전달받은 클로저가 함수 외부의 변수 내부에 저장되므로 함수를 탈출
  closures13611.append(closure)
}

typealias VoidVoidClosure13612 = () -> Void

func functionWithNoescapeClosure13612(closure: VoidVoidClosure13612) {
  closure()
}

func functionWithEscapingClosure13612(completionHandler: @escaping VoidVoidClosure13612) -> VoidVoidClosure13612 {
  return completionHandler
}

class SomeClass13612 {
  var x = 10
  
  func runNoescapeClosure13612() {
    // 비탈출 클로저에서 self 키워드 사용은 선택 사항
    functionWithNoescapeClosure13612 {
      x = 200
    }
  }
  
  func runEscapingClosure() -> VoidVoidClosure13612 {
    // 탈출 클로저에서는 명시적으로 self를 사용해야 함
    return functionWithEscapingClosure13612 {
      self.x = 100
    }
  }
}

let instance13612: SomeClass13612 = SomeClass13612()
instance13612.runNoescapeClosure13612()
print(instance13612.x)
/*
 200
 */

let returnedClosure13612: VoidVoidClosure13612 = instance13612.runEscapingClosure()
returnedClosure13612()
print(instance13612.x)
/*
 100
 */

// WithoutActuallyEscaping
let numbers13613: [Int] = [2, 4, 6, 8]

let evenNumberPredicate13613 = { (number: Int) -> Bool in
  return number % 2 == 0
}

let oddNumberPredicate13613 = { (number: Int) -> Bool in
  return number % 2 == 1
}

func hasElements13613(in array: [Int], match predicate: (Int) -> Bool) -> Bool {
  return withoutActuallyEscaping(predicate, do: { escapablePredicate in
    return (array.lazy.filter { escapablePredicate($0) }.isEmpty == false)
  })
}

let hasEvenNumber13613 = hasElements13613(in: numbers13613, match: evenNumberPredicate13613)
let hasOddNumber13613 = hasElements13613(in: numbers13613, match: oddNumberPredicate13613)

print(hasEvenNumber13613)
/*
 true
 */
print(hasOddNumber13613)
/*
 false
 */
