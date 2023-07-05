import Foundation

func solution(_ code:String) -> String {
    var ret: String = ""
    var mode: Int = 0
    
    for idx in 0..<code.count {
        if code[code.index(code.startIndex, offsetBy: idx)] == "1" {
            mode = mode == 0 ? 1 : 0
        } else {
            if idx % 2 == mode {
                ret.append(code[code.index(code.startIndex, offsetBy: idx)])
            }
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}

solution("abc1abc1abc")
