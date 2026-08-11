package com.jetbrains.swiftinteropplayground.types

class BasicTypes {

    fun byteType(b: Byte): Byte {
        return b
    }

    fun shortType(s: Short): Short {
        return s
    }

    fun intType(i: Int): Int {
        return i
    }

    fun longType(l: Long): Long {
        return l
    }

    fun floatType(f: Float): Float {
        return f
    }

    fun doubleType(d: Double): Double {
        return d
    }

    fun stringType(s: String): String {
        return s
    }

    fun booleanType(b: Boolean): Boolean {
        return b
    }

    fun charType(c: Char): Char {
        return c
    }

}

data class NotPrimitiveType(
    val item: String
)

fun listType(list: List<Int>): List<Int> {
    return mutableListOf(1, 2, 3).also { it.addAll(list) }
}