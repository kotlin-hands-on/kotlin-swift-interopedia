import Foundation
import shared

func genericFunctionsExample(){
    let result1: Int = generics.convert(data: 12) as! Int
    let result2: String = generics.convert(data: "'222'") as! String
    
    print("results \(result1) \(result2)")
}
