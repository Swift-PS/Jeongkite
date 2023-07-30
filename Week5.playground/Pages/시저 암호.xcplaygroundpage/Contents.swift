//: [Previous](@previous)

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var result: String = ""
    for char in s {
        var ascii = UnicodeScalar(String(char))!.value
        if (UnicodeScalar("A").value <= ascii && ascii <= UnicodeScalar("Z").value
            && (ascii + UInt32(n) > UnicodeScalar("Z").value)) {
            ascii = UnicodeScalar("A").value + (ascii + UInt32(n) - UnicodeScalar("Z").value) - 1
        } else if (UnicodeScalar("a").value <= ascii && ascii <= UnicodeScalar("z").value
                   && (ascii + UInt32(n) > UnicodeScalar("z").value)) {
            ascii = UnicodeScalar("a").value + (ascii + UInt32(n) - UnicodeScalar("z").value) - 1
        } else if (String(char) != " ") {
            ascii = ascii + UInt32(n)
        }
        result.append(String(UnicodeScalar(ascii)!))
    }
    return result
}

solution("z", 1)

//: [Next](@next)
