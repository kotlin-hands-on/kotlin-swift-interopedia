import Foundation
import shared

func innerClassExample() {
    let innerClass = OuterClass.InnerClass(OuterClass(param: "1323"))
    print(innerClass.useSomeFunction())
}

