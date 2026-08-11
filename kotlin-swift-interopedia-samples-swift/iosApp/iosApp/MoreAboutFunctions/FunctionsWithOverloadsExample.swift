import Foundation
import shared

func functionsWithOverloadsExample1() {
    FunctionsWithOverloadsKt.overloadFunction(param: true)  // Bool
    FunctionsWithOverloadsKt.overloadFunction(param_: 2.0)  // Double
    FunctionsWithOverloadsKt.overloadFunction(param__: 2.0) // Float
    FunctionsWithOverloadsKt.overloadFunction(param___: 2)  // Int32
    FunctionsWithOverloadsKt.overloadFunction(param____: 4) // Int64
    FunctionsWithOverloadsKt.overloadFunction(param_____: "123")
}
