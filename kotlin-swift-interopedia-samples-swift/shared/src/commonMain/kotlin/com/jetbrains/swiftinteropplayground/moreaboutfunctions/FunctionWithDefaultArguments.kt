package com.jetbrains.swiftinteropplayground.moreaboutfunctions

class FunctionWithDefaultArgumentsClass {

    fun defaultParamsFunction(funcParam1: String, funcParam2: Int = 30): String {
        return "def"
    }
}

fun functionWithDefaultArgumentsExample() {
    // funcParam2 will be the default parameter
    FunctionWithDefaultArgumentsClass().defaultParamsFunction(funcParam1 = "1")
}