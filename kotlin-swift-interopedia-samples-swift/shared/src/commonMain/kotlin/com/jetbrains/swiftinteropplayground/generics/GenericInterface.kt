package com.jetbrains.swiftinteropplayground.generics

interface SocketConverter<T : Any> {
    fun convert(element: String): T
}