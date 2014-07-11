// Playground - noun: a place where people can play

import Cocoa

//Basic

var i1: UInt8 = 5
var i2: UInt16 = 2_000
var sum = UInt16(i1) + i2


typealias MyInteger = Int
var mi: MyInteger = 8

//var i = 1
//if i {
//    i = 2
//}

var http404Code = ("error", 404)
var (statusMeesage, statusCode) = http404Code
var code = http404Code.1

let number = "1sdd"
var isIn = false
let convertN = number.toInt()
if convertN {
    isIn = true
}
isIn

//Optional

var string: String! = nil
string = "new str"
string = nil

//Logic Operators

let statementA: Bool = true
let statementB: Bool = false
let statementC: Bool = true

var isAccess: Bool = false

if statementA && statementB || statementC {
    isAccess = true
}
isAccess


