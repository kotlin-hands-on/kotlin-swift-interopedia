package com.jetbrains.swiftinteropplayground.classesandinterfaces

interface Interfaces {

    val id: String

    fun simpleFunction(): String
    fun functionWithParam(param1: String): String
    fun defaultParams(param1: String, param2: Int = 400): String

}

class MyInt : Interfaces {
    // You can manually replace it with var, but val was initially generated
    override var id: String = "1"

    override fun simpleFunction(): String {
        println("simple")
        return "abc"
    }

    override fun functionWithParam(param1: String): String {
        println("with params")
        return "123"
    }

    override fun defaultParams(param1: String, param2: Int): String {
        println("with default params")
        return "234"
    }
}