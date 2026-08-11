import Foundation
import shared

class OpenClassExample: classesandinterfaces.OpenClassWithConstructorParams {
//    // Overriding leads to an exception at runtime on instantiation 
//    override func finalFunctionInClass() -> String {
//        "Final function can't be overridden"
//    }

    override func functionCanBeOverridden() -> String {
        "Open function overridden from Swift"
    }
}

func openClassExample() {
    let openClass = OpenClassExample(param1: "123", param2: true)

    // Swift can't access protected property
    // print("Accessing field: \(openClass.someField)")
    
    print("Calling \(openClass.finalFunctionInClass())")
    print("Calling \(openClass.functionCanBeOverridden())")
}
