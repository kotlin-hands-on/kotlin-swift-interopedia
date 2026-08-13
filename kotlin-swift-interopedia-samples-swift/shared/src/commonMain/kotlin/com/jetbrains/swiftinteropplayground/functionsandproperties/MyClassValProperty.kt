package com.jetbrains.swiftinteropplayground.functionsandproperties

class MyClassValProperty(
    param: String
) {
    val property: String = "computed property in Kotlin from $param"
}