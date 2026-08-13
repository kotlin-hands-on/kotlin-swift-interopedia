package com.jetbrains.swiftinteropplayground.types

class OptionalBasicTypes(
    val optionalByte: Byte?,
    val optionalShort: Short?,
    val optionalInt: Int?,
    val optionalLong: Long?,
    val optionalFloat: Float?,
    val optionalDouble: Double?,
    val optionalString: String?,
    val optionalBoolean: Boolean?
) {

    fun optionalByteType(b: Byte?): Byte? {
        return b
    }

    fun optionalShortType(s: Short?): Short? {
        return s
    }

    fun optionalIntType(i: Int?): Int? {
        return i
    }

    fun optionalLongType(l: Long?): Long? {
        return l
    }

    fun optionalCharType(c: Char?): Char? {
        return c
    }

    fun optionalStringType(s: String?): String? {
        return s
    }

    fun optionalBooleanType(b: Boolean?): Boolean? {
        return b
    }

}