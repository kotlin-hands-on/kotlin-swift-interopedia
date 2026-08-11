import Foundation
import shared

func reifiedFunctionsExample() {
    let c = generics.reifiedFunction(marks: 23)
    print("c = \(String(describing: c))")
}
