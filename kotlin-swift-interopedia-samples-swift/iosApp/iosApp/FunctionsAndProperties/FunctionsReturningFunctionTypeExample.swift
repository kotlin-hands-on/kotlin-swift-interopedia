import Foundation
import shared

func functionReturningFunctionTypeExample() {
    let kFun: () -> String = functionsandproperties.returnLambda()
    print(kFun())
    let kFunWithArg = functionsandproperties.returnParametrizedLambda()
    print(kFunWithArg("Swift arg"))
}
