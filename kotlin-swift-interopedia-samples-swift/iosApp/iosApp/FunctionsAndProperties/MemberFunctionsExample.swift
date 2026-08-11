import Foundation
import shared

func memberFunctionsExample() {
    let myClass = MyKotlinClass()

//     myClass.kotlinInternalFunction(),
//     myClass.kotlinPrivateFunction(),
    print("Calling \(myClass.kotlinPublicFunction())")
}
