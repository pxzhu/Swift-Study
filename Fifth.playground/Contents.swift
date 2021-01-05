import UIKit

// Ternary Operator
var valueA514: Int = 3
var valueB514: Int = 5
var biggerValue514: Int = valueA514 > valueB514 ? valueA514 : valueB514

valueA514 = 0
valueB514 = -3
biggerValue514 = valueA514 > valueB514 ? valueA514 : valueB514

var stringA514: String = ""
var stringB514: String = "String"
var resultValue514: Double = stringA514.isEmpty ? 1.0 : 0.0
resultValue514 = stringB514.isEmpty ? 1.0 : 0.0

// Overflow, Underflow
var unsignedInteger519: UInt8 = 0
// let errorUnderflowResult519: UInt8 = unsignedInteger519 - 1      // RunTime Error
let underflowedValue519: UInt8 = unsignedInteger519 &- 1            // 255

unsignedInteger519 = UInt8.max
// let errorOverflowResult519: UInt8 = unsignedInteger519 + 1       // RunTime Error
let overflowedValue519: UInt8 = unsignedInteger519 &+ 1             // 0
