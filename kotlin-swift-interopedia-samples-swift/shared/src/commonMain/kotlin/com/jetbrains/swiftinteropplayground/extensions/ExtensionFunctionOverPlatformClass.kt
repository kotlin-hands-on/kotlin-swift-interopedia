package com.jetbrains.swiftinteropplayground.extensions

fun String.extensionFunctionOverStringClass() {
    println(this) //Do something
}

fun extensionFunctionOverPlatformClassExample() {
    "123".extensionFunctionOverStringClass()
}