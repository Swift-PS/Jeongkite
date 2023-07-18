import Foundation

func solution(_ code:String) -> String {
    var ret: String = ""
    var mode: Int = 0
    
    for (idx, char) in code.enumerated() {
        if char == "1" {
            mode = mode == 0 ? 1 : 0
        } else {
            if idx % 2 == mode {
                ret.append(char)
            }
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}

solution("abc1abc1abc")
solution("")
