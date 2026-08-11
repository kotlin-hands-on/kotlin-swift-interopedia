package com.jetbrains.swiftinteropplayground.moreaboutfunctions

fun overloadFunction(param: Int) {
    println("Utility.overloadFunction(param: Int) | $param")
}

fun overloadFunction(param: Long) {
    println("Utility.overloadFunction(param: Long) | $param")
}

fun overloadFunction(param: Float) {
    println("Utility.overloadFunction(param: Float) | $param")
}

fun overloadFunction(param: Double) {
    println("Utility.overloadFunction(param: Double) | $param")
}

fun overloadFunction(param: String) {
    println("Utility.overloadFunction(param: String) | $param")
}

fun overloadFunction(param: Boolean) {
    println("Utility.overloadFunction(param: Boolean) | $param")
}