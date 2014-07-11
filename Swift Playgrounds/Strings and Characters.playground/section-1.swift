// Playground - noun: a place where people can play

import Cocoa

var statement: String? = nil

/*Unicode*/

let blackHeart = "\u2665"
let sparklingHeart = "\U0001F496"

/*Empty String*/

var empty = ""
var anoEmpty = String()
if empty.isEmpty {
    statement = "empty string"
}
statement

/*Character*/

let string = "nihao!"
for char in string {
    println("current char is \(char)")
}

var count = countElements(string)
var lent = string.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)

for codeunit in string.utf8 {
    codeunit
    println("\(codeunit)")
}


