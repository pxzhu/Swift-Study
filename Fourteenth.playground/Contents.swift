import UIKit

// Optional Chaining
class Room14111 {
  var number: Int                       // 호실 정보
  
  init(number: Int) {
    self.number = number
  }
}

class Building14111 {                   // 건물
  var name: String                      // 건물 이름
  var room: Room14111?                  // 호실 정보
  
  init(name: String) {
    self.name = name
  }
}

struct Address14111 {                   // 주소
  var province: String                  // 광역시/도
  var city: String                      // 시/군/구
  var street: String                    // 도로명
  var building: Building14111?          // 건물
  var detailAddress: String?            // 건물 외 상세 주소
}

class Person14111 {                     // 사람
  var name: String                      // 이름
  var address: Address14111?            // 주소
  
  init(name: String) {
    self.name = name
  }
}

let pxzhu14111: Person14111 = Person14111(name: "pxzhu")

let pxzhuRoomViaOptionalChaining14111: Int? = pxzhu14111.address?.building?.room?.number
/*
 nil
 */
// let pxzhuRoomViaOptionalWnraping14111: Int = pxzhu14111.address!.building!.room!.number
// 오류 발생!!

pxzhu14111.address = Address14111(province: "충청북도", city: "청주시 청원구", street: "충청대로", building: nil, detailAddress: nil)
pxzhu14111.address?.building = Building14111(name: "곰굴")
pxzhu14111.address?.building?.room = Room14111(number: 0)
pxzhu14111.address?.building?.room?.number = 505

print(pxzhu14111.address?.building?.room?.number)
/*
 Optional(505)
 */

//struct Address14113 {
//  var province: String
//  var city: String
//  var street: String
//  var building: Building14111?
//  var detailAddress: String?
//
//  init(province: String, city: String, street: String) {
//    self.province = province
//    self.city = city
//    self.street = street
//  }
//
//  func fullAddress() -> String? {
//    var restAddress: String? = nil
//
//    if let buildingInfo: Building14111 = self.building {
//      restAddress = buildingInfo.name
//    } else if let detail = self.detailAddress {
//      restAddress = detail
//    }
//
//    if let rest: String = restAddress {
//      var fullAddress: String = self.province
//
//      fullAddress += " " + self.city
//      fullAddress += " " + self.street
//      fullAddress += " " + rest
//
//      return fullAddress
//    } else {
//      return nil
//    }
//  }
//
//  func printAddress() {
//    if let address: String = self.fullAddress() {
//      print(address)
//    }
//  }
//}
//
//pxzhu14111.address?.fullAddress()?.isEmpty
//pxzhu14111.address?.printAddress()

// Early Exit
func greet14211(_ person: [String: String]) {
  guard let name: String = person["name"] else {
    return
  }
  
  print("Hello \(name)")
  
  guard let location: String = person["location"] else {
    print("I hope the wrather is nice near you")
    return
  }
  
  print("I hope the weather is nice in \(location)")
}

var personInfo: [String: String] = [String: String]()
personInfo["name"] = "Jenny"

greet14211(personInfo)
/*
 Hello Jenny
 I hope the wrather is nice near you
 */

personInfo["location"] = "Korea"

greet14211(personInfo)
/*
 Hello Jenny
 I hope the weather is nice in Korea
 */
