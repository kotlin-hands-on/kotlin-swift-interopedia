import Foundation
import shared

func functionsExpectingLambdaArgumentsExample() {
    // lambda
    let result1 = FunctionWithLambdaArgsKt.kotlinFunWithLambda(lambda: {
        "arg passed from Swift"
    })
    let result2 = FunctionWithLambdaArgsKt.kotlinFunWithLambda {
        "Use concise syntax inSwift"
    }
    print("result1: \(result1) , result2: \(result2)")

    // Lambda taking arguments
    let result3 = FunctionWithLambdaArgsKt.kotlinFunWithLambdaTakingArg(lambda: { arg in
        "Swift code using \(arg)"
    })
    let result4 = FunctionWithLambdaArgsKt.kotlinFunWithLambdaTakingArg { arg in
        "Swift code using \(arg)"
    }
    let result5 = FunctionWithLambdaArgsKt.kotlinFunWithLambdaTakingArg { _ in
        "Swift code ignoring arument"
    }
    print("result3: \(result3) , result4: \(result4), result5: \(result5)")


    // Lambda returning Unit
    var result6 = ""
    FunctionWithLambdaArgsKt.kotlinFunWithUnitLambda { arg in
        result6 = arg
    }
    print("result6: \(result6)")

    // Several lambdas in args
    let result7 = FunctionWithLambdaArgsKt.kotlinFunWithSeveralLambdas(
        calculation: { 42 },
        formatting: { arg in "\(arg)!" }
    )
    print("result7: \(result7)")
}
