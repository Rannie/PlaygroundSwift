// Playground - noun: a place where people can play

import Cocoa

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

let rate = someVideoMode.frameRate
someVideoMode.resolution.width = 5
someVideoMode.resolution

let newResolution = Resolution(width: 10, height: 10)


var hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
hd.width

let anoRef = someVideoMode
anoRef.frameRate = 2.0
someVideoMode.frameRate

var refEqual = anoRef === someVideoMode


var ages = ["Peter": 23, "Wei": 35, "Anish": 65, "Katya": 19]
var copiedAges = ages
copiedAges["Peter"] = 24
ages["Peter"]

var arr: Array<Int> = [1, 3, 5]
var anoArr = arr
arr[0] = 5
anoArr[0]

arr.append(7)
arr
anoArr


var copiedArr = arr.copy()

var unsharedArr = [5, 3, 5]
unsharedArr.unshare()


var arrEqual: Bool = unsharedArr === anoArr
var copyEqual: Bool = copiedArr === arr

var valueEqual = arr[0...2] === copiedArr[0...2]
