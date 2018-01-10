//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var events: [Int] = []
for i in 1...10 {
    if i % 2 == 0 {
        events.append(i)
    }
}
print(events)
