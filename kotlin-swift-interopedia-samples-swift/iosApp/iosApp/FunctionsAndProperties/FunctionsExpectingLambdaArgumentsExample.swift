import Foundation
import shared

func functionsExpectingLambdaArgumentsExample() {
    // lambda
    let result1 = functionsandproperties.kotlinFunWithLambda(lambda: {
        "arg passed from Swift"
    })
    let result2 = functionsandproperties.kotlinFunWithLambda {
        "Use concise syntax inSwift"
    }
    print("result1: \(result1) , result2: \(result2)")

    // Lambda taking arguments
    let result3 = functionsandproperties.kotlinFunWithLambdaTakingArg(lambda: { arg in
        "Swift code using \(arg)"
    })
    let result4 = functionsandproperties.kotlinFunWithLambdaTakingArg { arg in
        "Swift code using \(arg)"
    }
    let result5 = functionsandproperties.kotlinFunWithLambdaTakingArg { _ in
        "Swift code ignoring arument"
    }
    print("result3: \(result3) , result4: \(result4), result5: \(result5)")


    // Lambda returning Unit
    var result6 = ""
    functionsandproperties.kotlinFunWithUnitLambda { arg in
        result6 = arg
    }
    print("result6: \(result6)")

    // Several lambdas in args
    let result7 = functionsandproperties.kotlinFunWithSeveralLambdas(
        calculation: { 42 },
        formatting: { arg in "\(arg)!" }
    )
    print("result7: \(result7)")
}
