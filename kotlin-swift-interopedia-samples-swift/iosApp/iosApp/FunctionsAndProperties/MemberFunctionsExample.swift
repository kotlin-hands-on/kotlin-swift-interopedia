import Foundation
import shared

func memberFunctionsExample() {
    let myClass = functionsandproperties.MyKotlinClass()

//     myClass.kotlinInternalFunction(),
//     myClass.kotlinPrivateFunction(),
    print("Calling \(myClass.kotlinPublicFunction())")
}
