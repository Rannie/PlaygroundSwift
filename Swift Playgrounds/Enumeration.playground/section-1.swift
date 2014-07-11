// Playground - noun: a place where people can play

import Cocoa

enum CompassPoint {
    case North, South, East, West
}

var directionToHead = CompassPoint.North
directionToHead = .South

switch directionToHead {
case .North:
    println("north head")
case .South:
    println("south head")
case .East:
    println("east head")
case .West:
    println("west head")
}

enum BarCode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

var productCode = ""
var code = BarCode.QRCode("wja4i90smkld")
switch code {
case .QRCode(let identifier):
    productCode = identifier
default:
    println("upca code")
}

/*Raw Value*/
enum Colors: Int {
    case Blue = 1, Red, Green, Black
}

let colorNumber = Colors.Blue.toRaw()
var possibleColor: Colors? = Colors.fromRaw(5)

possibleColor = Colors.fromRaw(3)
let isGreen = (possibleColor == Colors.Green)

enum ColorNames: String {
    case Blue = "Blue", Red = "Red", Green = "Green", Black = "Black"
}
