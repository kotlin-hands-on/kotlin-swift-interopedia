import Foundation
import shared

func typesExample(){
    let intType = TypesKt.printInt(intType: 123)
    print("From Swift: \(intType)")
    let stringType = TypesKt.printString(stringType: "abc")
    print("From Swift: \(stringType)")
    let customType = TypesKt.printCustomType(customType: CustomType(name: "Author name", surname: "Author surname"))
    print("From Swift: \(customType)")
}
