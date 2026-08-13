package com.jetbrains.swiftinteropplayground.generics

fun <T> convert(data: T): T {
    return data
}

fun genericFunctionsExample() {
    val s: String = convert("322")
    println(s)
    val p: Int = convert(122)
    println(p)
    val l: Long = convert(122L)
    println(l)
}