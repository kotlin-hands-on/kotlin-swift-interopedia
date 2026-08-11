package com.jetbrains.swiftinteropplayground.generics

open class ForStricted

class ChildStricted : ForStricted()

class StrictedGeneric<T : ForStricted>(val data: T) {
    fun fetch(): T {
        return data
    }
}

fun boundedGenericsExample() {
    val s1 = StrictedGeneric(ForStricted())
    val s2 = StrictedGeneric(ChildStricted())

    //val s3 = StrictedGeneric("123") // Doesn't compile
}