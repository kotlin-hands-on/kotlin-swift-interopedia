package com.jetbrains.swiftinteropplayground.moreaboutfunctions

class ConstructorWithDefaultArgumentsClass(
    val param1: String,
    val param2: Int = 300,
    val param3: Boolean = false
)

private fun constructorWithDefaultArgumentsExample() {
    ConstructorWithDefaultArgumentsClass(param1 = "123")
}