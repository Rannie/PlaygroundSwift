// Playground - noun: a place where people can play

import Cocoa

// #1 swap value. don't use extra variable.

func swap<T>(inout a:T, inout with b:T) {
    (a, b) = (b, a)
}

//demo code
var a = "Marin", b = "Todorov"
swap(&a, &b)

[a, b]


/*
#2 write a function.
The function can take precisely 0, 1 or 2 string parameters.
Returns the function parameters concatenated as String.
If no parameters pass to the function, it will return the string “none”.
*/

func flexStrings(s1: String = "", s2: String = "") -> String {
    return s1 + s2 == "" ? "none" : s1 + s2
}

var s1 = ""
flexStrings()
flexStrings(s1: "hello", s2: "world")


/*
#3
The function will return the sum of the passed parameters as a String, following the rules below.
If a parameter is an empty string or an Int equal to 0, add -10 to the result.
If a parameter is an String that represents a positive number (e.g. “10″, not “-5″), add it to the result.
If a parameter is an Int, add it to the result.
In any other case, do not add it to the result.
*/

[1, 2, 3].reduce(4) {
    $1 + $0
}

func sumAny(anys: Any ...) -> String {
    return String((anys.map({
        item in
        switch item {
        case "" as String, 0 as Int:
            return -10
        case let s as String where s.toInt() > 0:
            return s.toInt()!
        case is Int:
            return item as Int
        default:
            return 0
        }
        }) as [Int]).reduce(0) {
            $0 + $1
        }
    )
}

let resultEmpty = sumAny()
let result1 = sumAny(Double(), 10, "-10", 2)
let result2 = sumAny("Marin Todorov", 2, 22, "-3", "10", "", 0, 33, -5)


/*
#4
Write a function countFrom(from:Int, #to:Int) that will produce as output (eg. via print() or println()) the numbers from from to to. You can’t use any loop operators, variables, nor any built-in Array functions. Assume the value of from is less than to .
*/

func countFrom(from: Int, #to: Int) {
    print(from) // output to the assistant editor
    if from < to {
        countFrom(from + 1, to: to)
    }
}

countFrom(1, to: 5)


/*
#5
Write a single function that reverses the text in a string.

You can’t use any loop operators nor subscripts (i.e. no square brackets in the code).
You can’t use any built-in Array functions.
Don’t use variables.
*/

//func reverseString (input: String, output: String="") -> String {
//    if input.isEmpty {
//        return output
//    } else {
//        return reverseString(
//            input.substringToIndex(input.endIndex.predecessor()),
//            output: output + input.substringFromIndex(input.endIndex.predecessor()))
//    }
//}



