// Playground - noun: a place where people can play

import Cocoa

/*
subscript(index: Int) -> Int {
get {

}
set {

}
}
*/

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
    get {
        return multiplier * index
    }
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
threeTimesTable[6]

class JsonList {
    var createTime: NSDate
    var timeStamp: NSTimeInterval {
    get {
        return self.createTime.timeIntervalSince1970
    }
    }
    @lazy var data: NSMutableArray = NSMutableArray()
    
    init() {
        self.createTime = NSDate.date()
    }
    
    subscript(index: Int) -> AnyObject? {
    get {
        var ret: AnyObject?
        if index < data.count {
            ret = data.objectAtIndex(index)
        }
        
        return ret
    }
    set {
        if index < data.count {
            data.insertObject(newValue, atIndex: index)
        }
    }
    }
}



