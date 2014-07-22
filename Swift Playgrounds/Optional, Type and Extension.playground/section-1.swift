// Playground - noun: a place where people can play

import Cocoa

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()
//john.residence = Residence()

var count: Int = 0
if let roomCount = john.residence?.numberOfRooms {
    count = roomCount
} else {
    count = -1
}
count

class Student: Person {
    var grade: Int?
}

class Teacher: Person {
    var teacherId: Int?
}

let list: Array<Person> = [
    Teacher(),
    Student()
]

var firstObj = list[0]
var isTeacher: Bool = firstObj is Teacher

var mayStudent = firstObj as? Student
var mayTeacher = firstObj as? Teacher

var things = [Any]()

things.append(0)
things.append(0.1)
things.append("hello")
things.append((3, 5))

things


extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
}

extension Int {
    func repetitions(task: () -> ()) {
        for i in 0..<self {
            task()
        }
    }
}

var aInt: Int = 5
var sum = 0
aInt.repetitions({
    sum += 1
    })
sum


extension Int {
    mutating func square() {
        self = self * self
    }
}

var bInt: Int = 3
bInt.square()
bInt

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
            for _ in 1...digitIndex {
                decimalBase *= 10
            }
            return (self / decimalBase) % 10
    }
}
746381295[0]
746381295[1]
746381295[2]
746381295[8]
