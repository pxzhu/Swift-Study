import UIKit

// Monad
// Context
func addThree16111(_ num: Int) -> Int {
  return num + 3
}

addThree16111(2)

// Functor
Optional(2).map(addThree16111)

var value16111: Int? = 2
value16111.map { $0 + 3 }
value16111 = nil
value16111.map { $0 + 3 }

extension Optional {
  func map<U>(f: (Wrapped) -> U) -> U? {
    switch self {
      case .some(let x): return f(x)
      case .none: return .none
    }
  }
}

// Monad(Endofunctor)
func doubleEven16311(_ num: Int) -> Int? {
  if num.isMultiple(of: 2) {
    return num * 2
  }
  return nil
}

Optional(3).flatMap(doubleEven16311)

let optionals16312: [Int?] = [1, 2, nil, 5]

let mapped16312: [Int?] = optionals16312.map { $0 }
let compactMapped16312: [Int] = optionals16312.compactMap { $0 }

print(mapped16312)
/*
 [Optional(1), Optional(2), nil, Optional(5)]
 */
print(compactMapped16312)
/*
 [1, 2, 5]
 */

let multipleContainer16313 = [[1, 2, Optional.none], [3, Optional.none], [4, 5, Optional.none]]

let mappedMultipleContainer16313 = multipleContainer16313.map { $0.map { $0 } }
let flatmappedMultipleContainer16313 = multipleContainer16313.flatMap { $0.flatMap { $0 } }

print(mappedMultipleContainer16313)
/*
 [[Optional(1), Optional(2), nil], [Optional(3), nil], [Optional(4), Optional(5), nil]]
 */
print(flatmappedMultipleContainer16313)
/*
 [1, 2, 3, 4, 5]
 */
