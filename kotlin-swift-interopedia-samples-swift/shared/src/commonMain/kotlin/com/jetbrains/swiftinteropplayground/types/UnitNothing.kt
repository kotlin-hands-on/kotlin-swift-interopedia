package com.jetbrains.swiftinteropplayground.types

class UnitNothing {

    fun unitType(p: Unit) {
    }

    fun nothingType(n: Nothing) {
    }

    fun returnUnit() {
    }

    fun returnNothing(): Nothing {
        throw IllegalStateException()
    }
}