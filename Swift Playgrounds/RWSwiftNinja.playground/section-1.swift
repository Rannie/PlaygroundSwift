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

