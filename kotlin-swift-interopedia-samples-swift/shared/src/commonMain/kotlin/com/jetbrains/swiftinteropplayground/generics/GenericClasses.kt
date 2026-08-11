package com.jetbrains.swiftinteropplayground.generics

class StateHolderWithoutAny<T>(data: T) {
    val myState = data
    fun pullState(): T = myState
}