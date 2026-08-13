import Foundation
import shared

func typesExample(){
    let intType = overview.printInt(intType: 123)
    print("From Swift: \(intType)")
    let stringType = overview.printString(stringType: "abc")
    print("From Swift: \(stringType)")
    let customType = overview.printCustomType(customType: overview.CustomType(name: "Author name", surname: "Author surname"))
    print("From Swift: \(customType)")
}
