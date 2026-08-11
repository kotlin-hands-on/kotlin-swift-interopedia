package com.jetbrains.swiftinteropplayground.generics

inline fun<reified T> reifiedFunction(marks: Int): T {
    return when (T::class) {
        Int::class -> marks as T
        String::class -> "Congratulations! you scored more than 90%" as T
        else -> "Please enter valid type" as T
    }
}