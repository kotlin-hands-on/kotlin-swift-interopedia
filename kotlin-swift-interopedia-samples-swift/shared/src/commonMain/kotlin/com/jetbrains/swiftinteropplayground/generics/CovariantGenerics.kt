package com.jetbrains.swiftinteropplayground.generics

class OutGeneric<out T>(data: T) {
    val myState = data
    fun pullState(): T = myState
}
 fun example(param: OutGeneric<String>) {
    val t: OutGeneric<Any> = param // Doesn't compile without out
}