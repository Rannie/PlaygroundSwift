// Playground - noun: a place where people can play

import Cocoa

/*Ignore Return*/
func printAndCount(string: String) -> Int {
    println(string)
    return countElements(string)
}
func printWithoutCount(string: String) {
    printAndCount(string)
}

printWithoutCount("nihao")

/*Return Tuple*/
func lengthAndNumberCount(string: String) -> (length: Int, count: Int) {
    var count = 0
    for character in string {
        switch character {
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
            count++
        default:
            continue
        }
    }
    return (countElements(string), count)
}
var code = "djol24o0glmvalqr3jl4j"
var (length, count) = lengthAndNumberCount(code)
length
count

/*Parameters*/
func containsChar(#str: String, #characterToFind: Character) -> Bool {
    for character in str {
        if character == characterToFind {
            return true
        }
    }
    return false
}
let hasChar: Bool = containsChar(str: "hello", characterToFind: "o")

func add(a: Int = 0, b: Int) -> Int {
    return a + b
}
let sum: Int = add(a: 4, 3);


func sum(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
var result = sum(3,5,1,0,4)

func greeting(var #name: String) {
    name += ", nihao"
}
greeting(name: "Swift")

func swap(inout a: Int, inout b: Int) {
    let temp = a
    a = b
    b = temp
}
var a = 10, b = 20
swap(&a, &b)
a
b

/*Function Type*/
let addFunc: (Int, Int) -> Int = add
let n = addFunc(2, 3)

func addAnother(addFunc: (Int, Int) -> Int, a: Int, b: Int, another: Int = 0) -> Int {
    return addFunc(a, b) + another
}

func stepForward(input: Int) -> Int {
    return input + 1
}
func stepBackward(input: Int) -> Int {
    return input - 1
}
func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

var loc = 4
let stepFunc  = chooseStepFunction(loc > 0)
while loc != 0 {
    loc = stepFunc(loc)
}
loc

func chooseStep(backwards: Bool) -> (Int) -> Int {
    func forward(input: Int) -> Int {return input + 1}
    func backward(input: Int) -> Int {return input - 1}
    return backwards ? forward : backward
}




