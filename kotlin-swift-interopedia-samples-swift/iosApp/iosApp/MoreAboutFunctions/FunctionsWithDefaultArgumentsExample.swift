import Foundation
import shared

func functionsWithDefaultArgumentsExample(){
    // Doesn't compile:
    //moreaboutfunctions.FunctionWithDefaultArgumentsClass().defaultParamsFunction(funcParam1: "String")
    moreaboutfunctions.FunctionWithDefaultArgumentsClass().defaultParamsFunction(funcParam1: "1", funcParam2: 100)
}
