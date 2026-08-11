import Foundation
import shared

func innerClassExample() {
    let innerClass = classesandinterfaces.OuterClass.InnerClass(classesandinterfaces.OuterClass(param: "1323"))
    print(innerClass.useSomeFunction())
}

