package com.jetbrains.swiftinteropplayground.moreaboutfunctions

data class UsualClassExample(var param1: String, var param2: Int, var param3: Long, var param4: Float, var param5: Double, var param6: Boolean)

fun funcWithExtension(extension: UsualClassExample.() -> Unit) {
    val someObject = UsualClassExample(
        param1 = "FunctionsExample.funcWithExtension",
        param2 = 500,
        param3 = 600L,
        param4 = 700.0f,
        param5 = 800.0,
        param6 = false
    )
    someObject.extension()
}