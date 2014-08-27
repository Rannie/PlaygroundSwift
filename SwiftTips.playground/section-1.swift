// Playground - noun: a place where people can play

import Cocoa

//Currying
func addTwoNumbers(a: Int)(num: Int) -> Int {
    return a + num
}

let addToFour = addTwoNumbers(4)
let result = addToFour(num: 6)

func greaterThan(comparor: Int)(input: Int) -> Bool {
    return input > comparor
}

let greaterThan10 = greaterThan(10)

greaterThan10(input: 4)
greaterThan10(input: 15)


//Selector
func callMe() {
    //...
}

func callMeWithParam(obj: AnyObject!) {
    //...
}

let someMethod = Selector("callMe")
let anotherMethod = Selector("callMeWithParam:")

func turnByAngle(angle: Int, speed: Float) {
    //...
}

let method = Selector("turnByAngle:Speed:")

//@objc func update() {
//    //....
//}
//
//NSTimer.scheduledTimerWithTimeInterval(1, target: nil, selector:"update", userInfo: nil, repeats: true)
