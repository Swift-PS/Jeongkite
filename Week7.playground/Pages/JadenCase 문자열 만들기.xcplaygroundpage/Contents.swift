import UIKit

func solution(_ s:String) -> String {
    return s.lowercased().split(separator: " ").map { $0[$0.startIndex].uppercased()+$0[$0.startIndex+1..<$0.endIndex] }.joined(separator: " ")
}

solution("3people unFollowed me")

