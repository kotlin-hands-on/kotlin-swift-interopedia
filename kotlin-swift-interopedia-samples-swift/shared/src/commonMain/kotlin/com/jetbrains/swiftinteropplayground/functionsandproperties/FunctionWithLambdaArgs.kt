package com.jetbrains.swiftinteropplayground.functionsandproperties

fun kotlinFunWithLambda(lambda: () -> String): String {
    return "Calling lambda from Kotlin: ${lambda()}"
}

fun kotlinFunWithLambdaTakingArg(lambda: (String) -> String): String {
    return "Calling lambda with arg from Kotlin: ${lambda("Kotlin arg")})"
}

fun kotlinFunWithUnitLambda(unitLambda: (String) -> Unit) {
    unitLambda("Kotlin argument")
}

fun kotlinFunWithSeveralLambdas(
    calculation: () -> Int,
    formatting: (String) -> String
): String {
    val calculationResult = calculation()
    return "Calculated ${formatting(calculationResult.toString())} from Kotlin"
}