import Foundation
import shared

func functionsWithOverloadsExample1() {
    moreaboutfunctions.FunctionsWithOverloadsKt.overloadFunction(param: true)  // Bool
    moreaboutfunctions.FunctionsWithOverloadsKt.overloadFunction(param_: 2.0)  // Double
    moreaboutfunctions.FunctionsWithOverloadsKt.overloadFunction(param__: 2.0) // Float
    moreaboutfunctions.FunctionsWithOverloadsKt.overloadFunction(param___: 2)  // Int32
    moreaboutfunctions.FunctionsWithOverloadsKt.overloadFunction(param____: 4) // Int64
    moreaboutfunctions.FunctionsWithOverloadsKt.overloadFunction(param_____: "123")
}
