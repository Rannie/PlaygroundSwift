// Playground - noun: a place where people can play

import Cocoa
import Foundation

class vehicle {
    var number: Int = 5
    var description: String {
        return "des"
    }
}

var v: vehicle = vehicle()

struct Point {
    var x,y: Double
    
    mutating func moveBy(dx: Double) {
        x += dx
    }
}

var point = Point(x: 0.0, y: 0.0)
point.moveBy(10)
point

enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter
}
let earth = Planet.Mars.toRaw()

class Book {
    var page: Int
    var author: String
    @lazy var list = NSMutableArray()
    
    init(page : Int, author: String) {
        self.page = page
        self.author = author
    }
    
    convenience init(page: Int) {
        self.init(page: page, author: "Ran")
    }
    
    convenience init(author: NSString) {
        self.init(page: 10, author: author)
    }
}

var clients = ["aaa", "liu", "zhang", "zhao", "xin", "xzz", "azz"]
clients.sort {(a: String, b: String) -> Bool in
    a.hashValue < b.hashValue
}
clients

extension String {
    var hashValue :Int {
    get {
        return 5
    }
    }
}


