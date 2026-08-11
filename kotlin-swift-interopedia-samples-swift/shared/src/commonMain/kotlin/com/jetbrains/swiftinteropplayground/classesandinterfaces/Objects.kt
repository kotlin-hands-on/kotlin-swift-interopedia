package com.jetbrains.swiftinteropplayground.classesandinterfaces

data class MyDataClass(val param1: String, val param2: Int, val param3: Boolean)

object MyKotlinObject {

    const val CONST_VAL_EXAMPLE = "ObjectExample.CONST_VAL_EXAMPLE"

    val myProperty = MyDataClass(
        param1 = "someVal.param1",
        param2 = 200,
        param3 = false
    )

    fun functionExample(): String {
        return "ObjectExample.functionExample()"
    }

    fun paramFunctionExample(funcParam1: String): String {
        return "ObjectExample.paramFunctionExample($funcParam1)"
    }

}

fun objectsExample() {
    MyKotlinObject.CONST_VAL_EXAMPLE
    MyKotlinObject.myProperty
    MyKotlinObject.functionExample()
    MyKotlinObject.paramFunctionExample("123")
}