package com.jetbrains.swiftinteropplayground.functionsandproperties

fun returnLambda(): () -> String {
    return { "Kotlin Lambda" }
}

fun returnParametrizedLambda(): (String) -> String {
    return { s -> "Kotlin Lambda taking a String argument: $s" }
}
