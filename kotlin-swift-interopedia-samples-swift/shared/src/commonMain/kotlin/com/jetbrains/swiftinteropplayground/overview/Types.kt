package com.jetbrains.swiftinteropplayground.overview

data class CustomType(val name: String, val surname: String)

fun printInt(intType: Int): Int{
    println("Int type: $intType")
    return intType
}

fun printString(stringType: String): String{
    println("String type: $stringType")
    return stringType
}

fun printCustomType(customType: CustomType): CustomType{
    println("Custom type: $customType")
    return customType
}