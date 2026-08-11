import Foundation
import shared

func functionsWithVarargParameterExample(){
    let arr = KotlinArray<NSString>(
        size: 10,
        init: { index in "\(index)" as NSString }
    )
    FunctionWithVarargParameterKt.funcWithVararg(item: arr)
}
