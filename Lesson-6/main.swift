//
//  main.swift
//  Lesson-6
//
//  Created by Daniil.Startsev on 10.05.2022.
//

import Foundation
//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.

var queue = [1, 2, 3, 4, 5, 6, 7, 8, 9]  //создаем массив


func printQueue<T> (a: [T]) {// создаем дженерик
    for elements in a {
        print(elements)
    }
}
printQueue(a: queue)

//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

//map
//var queue1: [Int] = []
//for i in queue {
//    queue1.append(i * i)
//}
//print(queue1)
let queue1 = queue.map{ i in i * i }
print(queue1)
let queue2 = queue.map{ $0 * $0}
print(queue2)

//filter
//var queue3: [Int] = []
//for i in queue {
//    if i % 2 == 0 {
//        queue3.append(i)
//    }
//}
//print(queue3)
let queue3 = queue.filter{ i in i % 2 == 0 }
print(queue3)
let queue4 = queue.filter{ $0 % 2 == 0 }
print(queue4)

//reduce
//var sumQueue = 0
//for i in queue {
//    sumQueue += i
//}
//print(sumQueue)
let sumQueue = queue.reduce(0, +)
print(sumQueue)

//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.


struct Queue  {
    var queue = [1, 2, 3, 4, 5]
    subscript(index: Int) -> Int?  {
        switch(index) {
        case 0: return 1
        case 1: return 2
        case 2: return 3
        case 3: return 4
        case 4: return 5
        default: return nil
        }

}
}
var queue0 = Queue()
print(queue0[6])



