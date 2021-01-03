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
