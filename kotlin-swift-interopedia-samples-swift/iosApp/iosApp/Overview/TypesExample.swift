import Foundation
import shared

func typesExample(){
    let intType = overview.TypesKt.printInt(intType: 123)
    print("From Swift: \(intType)")
    let stringType = overview.TypesKt.printString(stringType: "abc")
    print("From Swift: \(stringType)")
    let customType = overview.TypesKt.printCustomType(customType: overview.CustomType(name: "Author name", surname: "Author surname"))
    print("From Swift: \(customType)")
}
