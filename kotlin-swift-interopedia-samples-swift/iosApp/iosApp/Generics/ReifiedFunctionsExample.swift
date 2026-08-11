import Foundation
import shared

func reifiedFunctionsExample() {
    let c = ReifiedFunctionsKt.reifiedFunction(marks: 23)
    print("c = \(String(describing: c))")
}
