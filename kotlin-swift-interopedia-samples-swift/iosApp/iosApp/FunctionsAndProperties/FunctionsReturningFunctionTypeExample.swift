import Foundation
import shared

func functionReturningFunctionTypeExample() {
    let kFun: () -> String = functionsandproperties.FunctionReturnsLambdaKt.returnLambda()
    print(kFun())
    let kFunWithArg = functionsandproperties.FunctionReturnsLambdaKt.returnParametrizedLambda()
    print(kFunWithArg("Swift arg"))
}
