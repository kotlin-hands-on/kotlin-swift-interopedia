import Foundation
import shared

func functionsWithVarargParameterExample(){
    let arr = kotlin.Array<NSString>(
        size: 10,
        init: { index in "\(index)" as NSString }
    )
    moreaboutfunctions.FunctionWithVarargParameterKt.funcWithVararg(item: arr)
}
