package com.jetbrains.swiftinteropplayground.moreaboutfunctions

inline fun inlineFunction(action: () -> Unit) {
    println("FunctionsExample.inlineFunction() begin")
    action()
    println("FunctionsExample.inlineFunction() end")
}