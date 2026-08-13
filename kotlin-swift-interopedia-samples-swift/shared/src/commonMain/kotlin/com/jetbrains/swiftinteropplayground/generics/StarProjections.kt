package com.jetbrains.swiftinteropplayground.generics

class MyGeneric<T : Any>(val data: T) {
    val state: T get() = data

    fun someStarProjection(myGeneric: MyGeneric<*>) {
        println("myGeneric: ${myGeneric}")
    }
}

fun starProjectionExample() {
    val myGeneric = MyGeneric(1)

    myGeneric.someStarProjection(myGeneric)
    myGeneric.someStarProjection(MyGeneric("11"))
}