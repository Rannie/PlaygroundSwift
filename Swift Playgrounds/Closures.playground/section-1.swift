// Playground - noun: a place where people can play

import Cocoa

/*
{ (parameters) -> return type in
    statements
}
*/

var names = ["Ronaldo", "Messi", "Hazard", "Muller"]
var reversed = sort(names, {(s1: String, s2: String) -> Bool in
    return s1 > s2
    })

reversed = sort(names, {s1, s2 in return s1 > s2})  //上下文明确省略类型
reversed = sort(names, {s1, s2 in s1 > s2})         //单行表达式可隐藏return
reversed = sort(names, {$0 > $1})                   //参数名称可以简写为$0,$1...
reversed = sort(names, >)                           //省略参数使用运算符


/*Trailing Closures*/

reversed = sort(names) {$0 > $1}

//map
let numbers = [5, 8, 9]
let strings = numbers.map({
    (var number) -> String in
    var output = "number: \(number)"
    return output
    })
strings


/*Catch Value*/

func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)
incrementByTen()
incrementByTen()

let increnmentBySeven = makeIncrementor(forIncrement: 7)
increnmentBySeven()

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()



