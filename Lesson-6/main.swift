//
//  main.swift
//  Lesson-6
//
//  Created by Daniil.Startsev on 10.05.2022.
//

import Foundation



// Переделанное 6 задание

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.





struct QueueTwo<Number> {
    var numbers = [Number]()
    
    mutating func appendInQueue(number: Number) {
        numbers.append(number)
    }
    mutating func deleteForQueue() -> Number? {
        numbers.isEmpty ? nil : numbers.removeFirst()
    }
    func filter(_ isIncluded: (Number) -> Bool)  -> [Number] {
        var filteredQueue: [Number] = []
        for number in numbers {
            if isIncluded(number) {
                filteredQueue.append(number)
            }
        }
        return filteredQueue
            
    }
    
    subscript(index: Int) -> Number? {
        numbers.indices.contains(index) ? numbers[index] : nil
    }
    
}


var queueTwo = QueueTwo<Int>()

queueTwo.appendInQueue(number: 1)
queueTwo.appendInQueue(number: 2)
queueTwo.appendInQueue(number: 3)

var filreredQueue = queueTwo.filter{ $0 % 2 == 0 }
filreredQueue

queueTwo[7]


queueTwo.deleteForQueue()
queueTwo.deleteForQueue()
queueTwo.deleteForQueue()
queueTwo.deleteForQueue()
