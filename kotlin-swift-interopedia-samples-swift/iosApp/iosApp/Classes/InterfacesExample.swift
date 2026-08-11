import Foundation
import shared

class InterfacesExample : Interfaces {
    func defaultParams(param1: String, param2: Int32) -> String {
        return "param1: \(param1) ; param2: \(param2)"
    }
    
    func functionWithParam(param1: String) -> String {
        return "functionWithParam: \(param1)"
    }
    
    func simpleFunction() -> String {
        return "simpleFunction()"
    }
    
    // From the strange `val id: String` to `var` by default.
    // But this can be manually replaced with `let`
    let id: String = "default"
}

func interfacesExample(){
    let ex = InterfacesExample()
    print(ex.defaultParams(param1: "123", param2: 234))
    print(ex.functionWithParam(param1: "abc"))
    print(ex.simpleFunction())
    
}
