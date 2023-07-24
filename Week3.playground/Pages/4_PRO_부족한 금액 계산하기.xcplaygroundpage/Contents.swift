//: [Previous](@previous)

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    var totalFee: Int = 0
    
    for fee in stride(from: price, through: price*count, by: price) {
        totalFee += fee
    }
    
    if totalFee - money > 0 {
        answer = Int64(totalFee - money)
    } else {
        answer = 0
    }
    
    return answer
}

solution(3, 20, 4)

//: [Next](@next)
