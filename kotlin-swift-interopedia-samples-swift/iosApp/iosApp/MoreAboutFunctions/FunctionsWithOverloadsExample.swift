import Foundation
import shared

func functionsWithOverloadsExample1() {
    moreaboutfunctions.overloadFunction(param: true)  // Bool
    moreaboutfunctions.overloadFunction(param: 2.0 as Double)  // Double
    moreaboutfunctions.overloadFunction(param: 2.0 as Float) // Float
    moreaboutfunctions.overloadFunction(param: 2 as Int32)  // Int32
    moreaboutfunctions.overloadFunction(param: 4 as Int64) // Int64
    moreaboutfunctions.overloadFunction(param: "123")
}
