import Foundation

func solution(_ rank:[Int], _ attendance:[Bool]) -> Int {
    var list: [Int] = []
    var studentNum: [Int] = [Int](repeating: 0, count: rank.count)
    for (i, r) in rank.enumerated() { studentNum[r-1] = i }
    var i = 0
    for s in studentNum {
        if i > 3 { break }
        if attendance[s] {
            list.append(s)
            i += 1
        }
    }
    
    return 10000 * list[0] + 100 * list[1] + list[2]
}

print(solution([3, 7, 2, 5, 4, 6, 1], [false, true, true, true, true, false, false]))
print(solution([1, 2, 3], [true, true, true]))
print(solution([6, 1, 5, 2, 3, 4], [true, false, true, false, false, true]))
