//: [Previous](@previous)

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var result: String = ""
    for char in s.utf8 {
        var code = Int(char)
        switch code {
        case 65...90:
            code = (code + n - 65) % 26 + 65
        case 97...122:
            code = (code + n - 97) % 26 + 97
        default:
            break
        }
        result.append(String(UnicodeScalar(code)!))
    }
    return result
}

solution("a bz", 3)

//: [Next](@next)
