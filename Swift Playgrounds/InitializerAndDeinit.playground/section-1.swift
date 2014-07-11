// Playground - noun: a place where people can play

import Cocoa

class Playground {
    
    var area: Double!
    
    init() {
        // do something initializer...
    }
    
    convenience init(area: Double) {
        self.init()
        
        // do something custom
    }
}

struct Checkerboard {
    let boardColors: [Bool] = {
        var tempBoard = [Bool]()
        var isBlack = false
        
        for i in 1...10 {
            for j in 1...10 {
                tempBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        
        return tempBoard
    }()
    
    func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
        return boardColors[(row * 10) + column]
    }
}

var board = Checkerboard()
var isBlack = board.squareIsBlackAtRow(1, column: 1)

class Country {
    let name: String
    let capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: "Beijing", country: self)
    }
}

class City {
    let name: String
    unowned let country : Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
    
    @lazy var someClosure : () -> String? = {
        [unowned self] in
        var ret: String?
        //do someting...
        return ret
    }
}