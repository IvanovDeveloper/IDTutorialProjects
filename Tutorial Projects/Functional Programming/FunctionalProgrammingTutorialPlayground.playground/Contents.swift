//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Имеративный способ фильтрации
var evens: [Int] = []
for i in 1...10 {
    if i % 2 == 0 {
        evens.append(i)
    }
}
print("Imperative method: \(evens)")


func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

// Functionality method
evens = Array(1...10).filter(isEven)

print("Functionality method: \(evens)")

// Short Functionality method
evens = Array(1...10).filter { (number) in number % 2 == 0 }
print("Short Functionality method: \(evens)")

// Shorter Functionality method
evens = Array(1...10).filter { $0 % 2 == 0 }
print("Shorter Functionality method: \(evens)")

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

evens = myFilter(source: Array(1...10), predicate: isEven)
print(evens)

// Filter Reduce
var evenSum = 0
for i in evens {
    evenSum += i
}
print("Evens sum = \(evenSum)")


evenSum = Array(1...10)
    .filter { (number) in number % 2 == 0 }
    .reduce(0) { (total, number) in total + number }

print(evenSum)
