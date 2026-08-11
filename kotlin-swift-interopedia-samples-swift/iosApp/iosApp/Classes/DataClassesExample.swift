import Foundation
import shared

func dataClassExample() {
    let data = DataClass(param1: "abc", param2: 123, param3: true)
    print("data: \(data)")

    // Doesn't compile with the error
    // "Missing arguments for parameters 'param1', 'param2', 'param3' in call"
//    let copy = data.doCopy()
//    print(copy)

    let copy = data.doCopy(param1: "def", param2: 456, param3: false)
    print("updated copy: \(copy)")
    print("isEqual: \(copy.isEqual(data))")
}
