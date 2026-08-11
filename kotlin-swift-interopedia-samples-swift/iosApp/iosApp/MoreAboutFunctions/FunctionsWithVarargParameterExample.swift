import Foundation
import shared

func functionsWithVarargParameterExample(){
    let arr = kotlin.Array(
        size: 10,
        init: { index in "\(index)" }
    )
    moreaboutfunctions.funcWithVararg(item: arr)
}
