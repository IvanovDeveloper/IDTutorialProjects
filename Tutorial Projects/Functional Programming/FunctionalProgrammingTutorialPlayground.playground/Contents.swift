//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Имеративный способ фильтрации
var events: [Int] = []
for i in 1...10 {
    if i % 2 == 0 {
        events.append(i)
    }
}
print("Imperative method: \(events)")


func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

// Functionality method
events = Array(1...10).filter(isEven)

print("Functionality method: \(events)")

// Short Functionality method
events = Array(1...10).filter { (number) in number % 2 == 0 }
print("Short Functionality method: \(events)")

// Shorter Functionality method
events = Array(1...10).filter { $0 % 2 == 0 }
print("Shorter Functionality method: \(events)")

// MARK: Filters

func myFilter<T>(source:[T], predicate: (T) -> Bool) -> [T] {
    var result: [T] = []
    for i in source {
        if predicate(i) {
            result.append(i)
        }
    }
    return result
}

events = myFilter(source: Array(1...10), predicate: isEven)
print(events)

// Reduce filter



