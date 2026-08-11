import Foundation
import shared

func functionsWithDefaultArgumentsExample(){
    // Doesn't compile:
    //FunctionWithDefaultArgumentsClass().defaultParamsFunction(funcParam1: "String")
    FunctionWithDefaultArgumentsClass().defaultParamsFunction(funcParam1: "1", funcParam2: 100)
}
