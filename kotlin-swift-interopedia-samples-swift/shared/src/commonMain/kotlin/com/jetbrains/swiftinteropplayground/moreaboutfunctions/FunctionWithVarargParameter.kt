package com.jetbrains.swiftinteropplayground.moreaboutfunctions

fun funcWithVararg(vararg item: String) {
    println(item.joinToString { "$it | " })
}