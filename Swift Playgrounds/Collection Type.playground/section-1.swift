// Playground - noun: a place where people can play

import Cocoa

/*Array*/

let i: Int = 4
let d: Int = 3

var arr: Array<Int> = [i, d]
var strings: String[] = ["123", "nihao"]
var anoStrings : Array<String> = strings

arr[0] = 6
arr

let isEmpty = arr.isEmpty
let count = arr.count

arr += 5
arr

arr.insert(10, atIndex: 0)
arr
arr.removeAtIndex(0)
arr.removeLast()
arr

var emptyArr = Array<Int>()
var pArr = Array<Int>(count:3, repeatedValue:0)

/*Dictionary*/

var emptyDict = Dictionary<String, String>()
emptyDict

var dict: Dictionary<Int, Int> = [4 : 8, 10 : 20]
dict[4] = 6
dict
dict[4] = nil
dict

dict.updateValue(50, forKey: 10)
dict
dict.updateValue(100, forKey: 50)
dict

let countD = dict.count
dict

for (key, value) in dict {
    println("\(key) : \(value)")
}

let keys = dict.keys
let values = dict.values

var sum = 0
for value in values {
    println("\(value)")
    sum += value
}
sum







