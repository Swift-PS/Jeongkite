import UIKit

func solution(_ s:String) -> String {
    var isFirst: Bool = true
    var result: String = ""
    for c in s {
        result.append(isFirst ? c.uppercased() : c.lowercased())
        if c == " " {
            isFirst = true
        } else {
            isFirst = false
        }
    }
    
//    return s.lowercased().split(separator: " ").map { $0[$0.startIndex].uppercased()+$0[$0.startIndex+1..<$0.endIndex] }.joined(separator: " ")
    return result
}

solution("3people unFollowed me")

