// Playground - noun: a place where people can play

import Cocoa

/*For*/
var sum = 0
for _ in 1...5 {
    sum += 1
}
sum

/*Value Bind*/
let point = (2,0)
var print: String = ""
switch point {
case (let x, 1):
    print += "x : \(x)"
case (1 , let y):
    print += "y : \(y)"
case let(x, y):
    print += "this is a point"
}
print

/*Where*/
switch point {
case let(x, y) where x > y :
    print = "x > y"
default :
    print = "x < y"
}
print

/*Continue*/
var input = "hello world!"
var output = ""
for character in input {
    switch character {
    case "l", "o", " " :
        continue
    default :
        output += character
    }
}
output

/*Lebeled
<#label name> : while <condition> {
    statement
}
*/
var num = 1
PrimeLoop : while num != 0 {
    switch num {
    case 2, 3, 5, 7 :
        break PrimeLoop
    default :
        num += 1
    }
}



