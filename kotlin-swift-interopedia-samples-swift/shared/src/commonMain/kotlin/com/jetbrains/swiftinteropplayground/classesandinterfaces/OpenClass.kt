package com.jetbrains.swiftinteropplayground.classesandinterfaces

open class OpenClassWithConstructorParams(
    val param1: String,
    val param2: Boolean
) {
    protected val someField: String get() = "14"

    fun finalFunctionInClass(): String = "Final method in open class"

    open fun functionCanBeOverridden(): String = "Open method in open class"
}