// Playground - noun: a place where people can play

import Cocoa

class DataManager {
    @lazy var dataList :NSMutableArray = NSMutableArray()
    var version: Double
    
    init () {
        version = 1.0
    }
    
    func addObject(obj: AnyObject) {
        dataList.addObject(obj)
    }
    
    func deleteObj(obj: AnyObject) -> AnyObject {
        dataList.removeObject(obj)
        return obj
    }
}

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var Center: Point {
    get {
        let centerX = origin.x + (size.width/2)
        let centerY = origin.y + (size.height/2)
        return Point(x: centerX, y: centerY)
    }
    set(newCenter) {
        origin.x = newCenter.x - (size.width/2)
        origin.y = newCenter.y - (size.height/2)
    }
    }
    var sideNumber: Int { get {return 4} }
    var area: Double { return size.width * size.height }
}

class StepCounter {
    var totalSteps: Int = 0 {
    willSet {
        println("new value is \(newValue)")
    }
    didSet {
        println("added value \(totalSteps - oldValue)")
    }
    }
    
    class var shared: StepCounter {
    dispatch_once(&Inner.token, {
        Inner.instance = StepCounter()
        })
        return Inner.instance!
    }
    struct Inner {
        static var instance: StepCounter?
        static var token: dispatch_once_t = 0
    }
}

let counter = StepCounter.shared
counter.totalSteps = 5
let stepNow = StepCounter.shared.totalSteps

extension Point {
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

enum TriStateSwitch {
    case Off, Low, High
    mutating func next() {
        switch self {
        case .Off:
            self = Low
        case .Low:
            self = High
        case .High:
            self = Off
        }
    }
}

class Model {
    class var modelCount: Int {
    return 0
    }
    var identifer: String?
    var type: String?
    class func quickModelWithId(iden: String, type: String) -> Model {
        let model: Model = Model()
        model.identifer = iden
        model.type = type
        
        return model
    }
    
    init() {
        println("Initialization")
    }
}


