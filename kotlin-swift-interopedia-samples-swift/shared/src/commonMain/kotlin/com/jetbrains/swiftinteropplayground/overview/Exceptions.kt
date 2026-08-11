package com.jetbrains.swiftinteropplayground.overview

fun functionThrowsUndeclaredException() {
    throw Exception("Oops!")
}

@Throws(Exception::class)
fun functionThrowsDeclaredException() {
    throw Exception("Oops!")
}