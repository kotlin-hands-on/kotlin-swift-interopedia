package com.jetbrains.swiftinteropplayground.classesandinterfaces

fun interface FunInterfaceExample {
    fun singleFunctionInInterface(funInterfaceExample: String): String
}

interface NotFunInterface {
    fun singleFunctionInInterface(funInterfaceExample: String): String
}

private fun example() {
    val notFun = object : NotFunInterface {
        override fun singleFunctionInInterface(funInterfaceExample: String): String {
            return "return"
        }
    }

    val listener = FunInterfaceExample {
        println("it: ${it}")
        "some return value"
    }
}