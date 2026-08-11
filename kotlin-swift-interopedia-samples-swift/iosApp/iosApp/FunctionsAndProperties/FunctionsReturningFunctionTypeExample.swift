import Foundation
import shared

func functionReturningFunctionTypeExample() {
    let kFun: () -> String = FunctionReturnsLambdaKt.returnLambda()
    print(kFun())
    let kFunWithArg = FunctionReturnsLambdaKt.returnParametrizedLambda()
    print(kFunWithArg("Swift arg"))
}
