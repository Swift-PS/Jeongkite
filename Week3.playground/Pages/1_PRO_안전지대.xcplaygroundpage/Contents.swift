//: [Previous](@previous)

import Foundation

extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

func solution(_ board:[[Int]]) -> Int {
    var newBoard: [[Int]] = board
    var result: Int = 0
    for i in 0..<newBoard.count {
        for j in 0..<newBoard[i].count {
            if newBoard[i][j] == 1 {
                result += 1
                for x in i-1...i+1 {
                    for y in j-1...j+1 {
                        if newBoard[safe: x]?[safe: y] == 0 {
                            newBoard[x][y] = -1
                            result += 1
                        }
                    }
                }
            }
        }
    }
    
    return board.count * board[0].count - result
}

solution([[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 0, 0]])
solution([[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 1, 0], [0, 0, 0, 0, 0]])
solution([[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]])

//: [Next](@next)
