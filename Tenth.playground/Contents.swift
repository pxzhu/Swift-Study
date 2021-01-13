import UIKit

// Property
// Stored
// 좌표
struct CoordinatePoint10111 {
  var x: Int
  var y: Int
}

// 구조체에는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 있음
let pxzhuPoint10111: CoordinatePoint10111 = CoordinatePoint10111(x: 10, y: 5)

// 사람의 위치 정보
class Position10111 {
  var point: CoordinatePoint10111
  //저장 프로퍼티(변수) - 위치(point)는 변경될 수 있음을 뜻함
  let name: String                  // 저장 프로퍼티(상수)
  
  // 프로퍼티 기본값을 지정해주지 않는다면 이니셜라이저를 따로 정의해주어야 함
  init(name: String, currentPoint: CoordinatePoint10111) {
    self.name = name
    self.point = currentPoint
  }
}

// 사용자 정의 이니셜라이저를 호출해야만 함
// 그렇지 않으면 프로퍼티 초깃값을 할당할 수 없기 때문에 인스턴스 생성이 불가능
let pxzhuPosition10111: Position10111 = Position10111(name: "pxzhu", currentPoint: pxzhuPoint10111)

// 초깃값 지정
// 좌표
struct CoordinatePoint10112 {
  var x: Int = 0
  var y: Int = 0
}

// 프로퍼티의 초깃값을 할당했다면 굳이 전달인자로 초깃값을 넘길 필요가 없음
let pxzhuPoint10112: CoordinatePoint10112 = CoordinatePoint10112()

// 물론 기존에 초깃값을 할당할 수 있는 이니셜라이저도 사용 가능
let wizplanPoint10112: CoordinatePoint10112 = CoordinatePoint10112(x: 10, y: 5)

print("pxzhu's point: \(pxzhuPoint10112.x), \(pxzhuPoint10112.y)")
/*
 pxzhu's point: 0, 0
 */

print("wizplan's point: \(wizplanPoint10112.x), \(wizplanPoint10112.y)")
/*
 wizplan's point: 10, 5
 */

// 사람의 위치 정보
class Position10112 {
  var point: CoordinatePoint10112 = CoordinatePoint10112()        // 저장 프로퍼티
  var name: String = "Unkown"                                     // 저장 프로퍼티
}

// 초깃값을 지정해줬다면 사용자 정의 이니셜라이저를 사용하지 않아도 됨
let pxzhuPosition10112: Position10112 = Position10112()

pxzhuPosition10112.point = pxzhuPoint10112
pxzhuPosition10112.name = "pxzhu"

// Optional
// 좌표
struct CoordinatePoint10113 {
  // 위치는 x, y 값이 모두 있어야 하므로 옵셔널이면 안 됨
  var x: Int
  var y: Int
}

// 사람의 위치 정보
class Position10113 {
  // 현재 사람의 위치를 모를 수도 있음(옵셔널)
  var point: CoordinatePoint10113?
  
  let name: String
  
  init(name: String) {
    self.name = name
  }
}

// 이름은 필수지만 위치는 모를 수 있음
let pxzhuPosition10113: Position10113 = Position10113(name: "pxzhu")

// 위치를 알게되면 그 때 위치 값을 할당해 줌
pxzhuPosition10113.point = CoordinatePoint10113(x: 20, y: 10)

// Lazy Stored
struct CoordinatePoint10121 {
  var x: Int = 0
  var y: Int = 0
}

class Position10121 {
  lazy var point: CoordinatePoint10121 = CoordinatePoint10121()
  let name: String
  
  init(name: String) {
    self.name = name
  }
}

let pxzhuPosition10121: Position10121 = Position10121(name: "pxzhu")

// 이 코드를 통해 point 프로퍼티로 처음 접근할 때 point 프로퍼티의 CoordinatePoint10121가 생성됨
print(pxzhuPosition10121.point)
/*
 CoordinatePoint10121(x: 0, y: 0)
 */

struct CoordinatePoint10131 {
  var x: Int
  var y: Int
  
  // 대칭점을 구하는 메서드 - 접근자
  func oppositePoint10131() -> Self {
    return CoordinatePoint10131(x: -x, y: -y)
  }
  
  // 대칭점을 설정하는 메서드 - 설정자
  mutating func setOppositePoint10131(_ opposite: CoordinatePoint10131) {
    x = -opposite.x
    y = -opposite.y
  }
}

var pxzhuPosition10131: CoordinatePoint10131 = CoordinatePoint10131(x: 10, y: 20)

// 현재 좌표
print(pxzhuPosition10131)
/*
 CoordinatePoint10131(x: 10, y: 20)
 */

// 대칭 좌료
print(pxzhuPosition10131.oppositePoint10131())
/*
 CoordinatePoint10131(x: -10, y: -20)
 */

// 대칭 좌표를 (15, 10)으로 설정
pxzhuPosition10131.setOppositePoint10131(CoordinatePoint10131(x: 15, y: 10))

// 현재 좌표
print(pxzhuPosition10131)
/*
 CoordinatePoint10131(x: -15, y: -10)
 */

struct CoordinatePoint10132 {
  var x: Int
  var y: Int
  
  // 대칭 좌표
  var oppositePoint10132: CoordinatePoint10132 {
    // 접근자
    get {
      return CoordinatePoint10132(x: -x, y: -y)
    }
    
    // 설정자
    set(opposite) {
      x = -opposite.x
      y = -opposite.y
    }
  }
}

var pxzhuPosition10132: CoordinatePoint10132 = CoordinatePoint10132(x: 10, y: 20)

// 현재 좌표
print(pxzhuPosition10132)
/*
 CoordinatePoint10132(x: 10, y: 20)
 */

// 대칭 좌표
print(pxzhuPosition10132.oppositePoint10132)
/*
 CoordinatePoint10132(x: -10, y: -20)
 */

pxzhuPosition10132.oppositePoint10132 = CoordinatePoint10132(x: 15, y: 10)

print(pxzhuPosition10132)
/*
 CoordinatePoint10132(x: -15, y: -10)
 */

// 매개변수 이름 생략한 설정자
struct CoordinatePoint10133 {
  var x: Int
  var y: Int
  
  // 대칭 좌표
  var oppositePoint10133: CoordinatePoint10133 {
    get {
      // 이곳에서 return 키워드 생략 가능
      return CoordinatePoint10133(x: -x, y: -y)
    }
    
    set {
      x = -newValue.x
      y = -newValue.y
    }
  }
}

// Read Only
struct CoordinatePoint10134 {
  var x: Int
  var y: Int
  
  // 대칭 좌표
  var oppositePoint10134: CoordinatePoint10134 {
    get {
      return CoordinatePoint10134(x: -x, y: -y)
    }
  }
}

var pxzhuPosition10134: CoordinatePoint10134 = CoordinatePoint10134(x: 10, y: 20)

print(pxzhuPosition10134)
/*
 oordinatePoint10134(x: 10, y: 20)
 */

print(pxzhuPosition10134.oppositePoint10134)
/*
 CoordinatePoint10134(x: -10, y: -20)
 */

// 설정자를 구현하지 않았으므로 오류 발생
// pxzhuPosition10134.oppositePoint10134 = CoordinatePoint10134(x: 15, y: 10)
