import Foundation
import shared

func inlineFunctionsExample() {
    InlineFunctionKt.inlineFunction {
        print("I'm inside inline!!!")
    }
}
