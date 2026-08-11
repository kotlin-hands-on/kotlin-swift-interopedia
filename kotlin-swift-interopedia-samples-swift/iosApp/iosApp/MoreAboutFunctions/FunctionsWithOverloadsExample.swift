import Foundation
import shared

func functionsWithOverloadsExample1() {
    moreaboutfunctions.overloadFunction(param: true)  // Bool
    moreaboutfunctions.overloadFunction(param_: 2.0)  // Double
    moreaboutfunctions.overloadFunction(param__: 2.0) // Float
    moreaboutfunctions.overloadFunction(param___: 2)  // Int32
    moreaboutfunctions.overloadFunction(param____: 4) // Int64
    moreaboutfunctions.overloadFunction(param_____: "123")
}
