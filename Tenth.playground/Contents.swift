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

// Observers
class Account10141 {
  var credit: Int = 0 {
    willSet {
      print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
    }
    
    didSet {
      print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
    }
  }
}

let myAccount10141: Account10141 = Account10141()
/*
 잔액이 0원에서 1000원으로 변경될 예정입니다.
 */

myAccount10141.credit = 1000
/*
 잔액이 0원에서 1000원으로 변경되었습니다.
 */

class Account10142 {
  var credit: Int = 0 {
    willSet {
      print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
    }
    
    didSet {
      print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
    }
  }
  
  var dollarValue10142: Double {
    get {
      return Double(credit)
    }
    
    set {
      credit = Int(newValue * 1000)
      print("잔액을 \(newValue)달러로 변경중입니다.")
    }
  }
}

class ForeignAccount10142: Account10142 {
  override var dollarValue10142: Double {
    willSet {
      print("잔액이 \(dollarValue10142)달러에서 \(newValue)달러로 변경될 예정입니다.")
    }
    
    didSet {
      print("잔액이 \(oldValue)달러에서 \(dollarValue10142)달러로 변경되었습니다.")
    }
  }
}

let myAccount10142: ForeignAccount10142 = ForeignAccount10142()
/*
 잔액이 0원에서 1000원으로 변경될 예정입니다.
 */
myAccount10142.credit = 1000
/*
 잔액이 0원에서 1000원으로 변경되었습니다.
 */

myAccount10142.dollarValue10142 = 2
/*
 잔액이 1000.0달러에서 2.0달러로 변경될 예정입니다.
 잔액이 1000원에서 2000원으로 변경될 예정입니다.
 잔액이 1000원에서 2000원으로 변경되었습니다.
 잔액을 2.0달러로 변경중입니다.
 잔액이 1000.0달러에서 2000.0달러로 변경되었습니다.
 */

var wonInPocket10151: Int = 2000 {
  willSet {
    print("주머니의 돈이 \(wonInPocket10151)원에서 \(newValue)원으로 변경될 예정입니다.")
  }
  
  didSet {
    print("주머니의 돈이 \(oldValue)원에서 \(wonInPocket10151)원으로 변경되었습니다.")
  }
}

var dollarInPocket10151: Double {
  get {
    return Double(wonInPocket10151) / 1000.0
  }
  
  set {
    wonInPocket10151 = Int(newValue * 1000.0)
    print("주머니의 달러를 \(newValue)달러로 변경 중입니다.")
  }
}

dollarInPocket10151 = 3.5
/*
 주머니의 돈이 2000원에서 3500원으로 변경될 예정입니다.
 주머니의 돈이 2000원에서 3500원으로 변경되었습니다.
 주머니의 달러를 3.5달러로 변경 중입니다.
 */

class AClass10161 {
  
  // 저장 타입 프로퍼티
  static var typeProperty: Int = 0
  
  // 저장 인스턴스 프로퍼티
  var instanceProperty: Int = 0 {
    didSet {
      Self.typeProperty = instanceProperty + 100
    }
  }
  
  // 연산 타입 프로퍼티
  static var typeComputedProperty: Int {
    get {
      return typeProperty
    }
    
    set {
      typeProperty = newValue
    }
  }
}

AClass10161.typeProperty = 123

let classInstance10161: AClass10161 = AClass10161()
classInstance10161.instanceProperty = 100

print(AClass10161.typeProperty)
/*
 200
 */
print(AClass10161.typeComputedProperty)
/*
 200
 */

class Account10162 {
  
  static let dollarExchangeRate: Double = 1000.0
  
  var credit: Int = 0
  
  var dollarValue: Double {
    get {
      return Double(credit) / Self.dollarExchangeRate
    }
    
    set {
      credit = Int(newValue * Account10162.dollarExchangeRate)
      print("잔액을 \(newValue)달러로 변경 중입니다.")
    }
  }
}

// Key Path
class Person10171 {
  var name: String
  
  init(name: String) {
    self.name = name
  }
}

struct Stuff10171 {
  var name: String
  var owner: Person10171
}

print(type(of: \Person10171.name))
/*
 ReferenceWritableKeyPath<Person10171, String>
 */
print(type(of: \Stuff10171.name))
/*
 WritableKeyPath<Stuff10171, String>
 */

class Person10172 {
  let name: String
  init(name: String) {
    self.name = name
  }
}

struct Stuff10172 {
  var name: String
  var owner: Person10172
}

let pxzhu10172 = Person10172(name: "pxzhu")
let hana10172 = Person10172(name: "hana")
let macbook10172 = Stuff10172(name: "MacBook Pro", owner: pxzhu10172)
var iMac10172 = Stuff10172(name: "iMac", owner: pxzhu10172)
let iPhone10172 = Stuff10172(name: "iPhone", owner: hana10172)

let stuffNameKeyPath10172 = \Stuff10172.name
let ownerkeyPath10172 = \Stuff10172.owner

let ownerNameKeyPath10172 = ownerkeyPath10172.appending(path: \.name)

// 키 경로와 서브스크립트를 이용해 프로퍼티에 접근하여 값을 가져옴
print(macbook10172[keyPath: stuffNameKeyPath10172])
/*
 MacBook Pro
 */
print(iMac10172[keyPath: stuffNameKeyPath10172])
/*
 iMac
 */
print(iPhone10172[keyPath: stuffNameKeyPath10172])
/*
 iPhone
 */

print(macbook10172[keyPath: ownerNameKeyPath10172])
/*
 pxzhu
 */
print(iMac10172[keyPath: ownerNameKeyPath10172])
/*
 pxzhu
 */
print(iPhone10172[keyPath: ownerNameKeyPath10172])
/*
 hana
 */

// 키 경로와 서브스크립트를 이용해 프로퍼티에 접근하여 값을 변경
iMac10172[keyPath: stuffNameKeyPath10172] = "iMac Pro"
iMac10172[keyPath: ownerkeyPath10172] = hana10172

print(iMac10172[keyPath: stuffNameKeyPath10172])
/*
 iMac Pro
 */
print(iMac10172[keyPath: ownerNameKeyPath10172])
/*
 hana
 */

// 상수로 지정한 값 타입과 읽기 전용 프로퍼티는 키 경로 스크립트로도 값을 바꿔줄 수 없음
// macbook[keyPath: stuffNameKeyPath] = "macbook Pro touch bar"             // 오류 발생
// pxzhu[keyPath: \Person10172.name] = "bear"                               // 오류 발생

// Method
class LevelClass10211 {
  // 현재 레벨을 저장하는 저장 프로퍼티
  var level: Int = 0 {
    // 프로퍼티 값이 변경되면 호출하는 프로퍼티 감시자
    didSet {
      print("Level \(level)")
    }
  }
  
  // 레벨이 올랐을 때 호출할 메서드
  func levelUp() {
    print("Level Up!")
    level += 1
  }
  
  // 레벨이 감소했을 때 호출할 메서드
  func levelDown() {
    print("Level Down")
    level -= 1
    if level < 0 {
      reset()
    }
  }
  
  // 특정 레벨로 이동할 때 호출할 메서드
  func jumpLevel(to: Int) {
    print("Jump to \(to)")
    level = to
  }
  // 레벨을 초기화할때 호출할 메서드
  func reset() {
    print("Reset!")
    level = 0
  }
}

var levelClassInstance10211: LevelClass10211 = LevelClass10211()
levelClassInstance10211.levelUp()
/*
 Level Up!
 Level 1
 */
levelClassInstance10211.levelDown()
/*
 Level Down
 Level 0
 */
levelClassInstance10211.levelDown()
/*
 Level Down
 Level -1
 Reset!
 Level 0
 */
levelClassInstance10211.jumpLevel(to: 3)
/*
 Jump to 3
 Level 3
 */

// Mutating
struct LevelStruct10212 {
  var level: Int = 0 {
    didSet {
      print("Level \(level)")
    }
  }
  
  mutating func levelUp() {
    print("Level Up!")
    level += 1
  }
  
  mutating func levelDown() {
    print("Level Down")
    level -= 1
    if level < 0 {
      reset()
    }
  }
  
  mutating func jumpLevel(to: Int) {
    print("Jump to \(to)")
    level = to
  }
  
  mutating func reset() {
    print("Reset!")
    level = 0
  }
}

var levelStructInstance10212: LevelStruct10212 = LevelStruct10212()
levelStructInstance10212.levelUp()
/*
 Level Up!
 Level 1
 */
levelStructInstance10212.levelDown()
/*
 Level Down
 Level 0
 */
levelStructInstance10212.levelDown()
/*
 Level Down
 Level -1
 Reset!
 Level 0
 */
levelStructInstance10212.jumpLevel(to: 3)
/*
 Jump to 3
 Level 3
 */

class LevelClass10213 {
  var level: Int = 0
  
  func jumpLevel(to level: Int) {
    print("Jump to \(level)")
    self.level = level
  }
}

//class LevelClass10214 {
//  var level: Int = 0
//
//  func reset() {
//    // 오류!! self 프로퍼티 참조 변경 불가
//    self = LevelClass10214()
//  }
//}

struct LevelStruct10214 {
  var level: Int = 0
  
  mutating func levelUp() {
    print("Level Up!")
    level += 1
  }
  
  mutating func reset() {
    print("Reset!")
    self = LevelStruct10214()
  }
}

var levelStructInstance10214: LevelStruct10214 = LevelStruct10214()
levelStructInstance10214.levelUp()
print(levelStructInstance10214)
/*
 Level Up!
 LevelStruct10214(level: 1)
 */

levelStructInstance10214.reset()
print(levelStructInstance10214)
/*
 Reset!
 LevelStruct10214(level: 0)
 */

enum onOffSwitch10214 {
  case on, off
  mutating func nextStage() {
    self = self == .on ? .off : .on
  }
}

var toggle10214: onOffSwitch10214 = onOffSwitch10214.off
toggle10214.nextStage()
print(toggle10214)
/*
 on
 */

// Type
class AClass10221 {
  static func staticTypeMethod() {
    print("AClass staticTypeMethod")
  }
  
  class func classTypeMethod() {
    print("AClass classTypeMethod")
  }
}

class BClass10221: AClass10221 {
  /*
   // 오류 발생!! 재정의 불가
   override static func staticTypeMethod() {
   
   }
   */
  override class func classTypeMethod() {
    print("BClass classTypeMethod")
  }
}

AClass10221.staticTypeMethod()
/*
 AClass staticTypeMethod
 */
AClass10221.classTypeMethod()
/*
 AClass classTypeMethod
 */
BClass10221.classTypeMethod()
/*
 BClass classTypeMethod
 */

// 시스템 음량은 한 기기에서 유일한 값이어야 함
struct SystemVolume10222 {
  // 타입 프로퍼티를 사용하면 언제나 유일한 값이 됨
  static var volume: Int = 5
  
  // 타입 프로퍼티를 제어하기 위해 타입 메서드를 사용
  static func mute() {
    self.volume = 0
  }
}

// 내비게이션 역할은 여러 인스턴스가 수행할 수 있음
class Navigation10222 {
  // 내비게이션 인스턴스마다 음량을 따로 설정할 수 있음
  var volume: Int = 5
  
  // 길 안내 음성 재생
  func guideWay() {
    // 내비게이션 외 다른 재생원 음소거
    SystemVolume10222.mute()
  }
  
  // 길 안내 음성 종료
  func finishGuideWay() {
    // 기존 재생원 음량 복구
    SystemVolume10222.volume = self.volume
  }
}

SystemVolume10222.volume = 10

let myNavi10222: Navigation10222 = Navigation10222()

myNavi10222.guideWay()
print(SystemVolume10222.volume)
/*
 0
 */

myNavi10222.finishGuideWay()
print(SystemVolume10222.volume)
/*
 5
 */
