//: [Previous](@previous)

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    let map1: [[Character]] = arr1.map { getBinary(decimal: $0, n: n) }
    let map2: [[Character]] = arr2.map { getBinary(decimal: $0, n: n) }
    
    for i in 0..<n {
        var a: String = ""
        for j in 0..<n {
            if map1[i][j] == "1" || map2[i][j] == "1" {
                a.append("#")
            } else {
                a.append(" ")
            }
        }
        answer.append(a)
    }
    
    return answer
}

func getBinary(decimal: Int, n: Int) -> [Character] {
    var binary = Array(String(decimal, radix: 2))
    let result = [Character](repeating: "0", count: n - binary.count)
    binary.insert(contentsOf: result, at: 0)
    return binary
}

solution(5, [9, 20, 28, 18, 11], [30, 1, 21, 17, 28])

/*
 1. 이진수로 바꾸기
 2. 바꾼 이진수들 2차원 배열로 만들기
 3. 0..<n 이중for문 돌면서 answer 구성하기
    인덱스로 비교하면서 answer.append
 
 */

//: [Next](@next)
