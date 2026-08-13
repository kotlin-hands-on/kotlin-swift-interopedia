package com.jetbrains.swiftinteropplayground.classesandinterfaces

enum class EnumClass(val type: String) {

    ENTRY_ONE("entry_one"),
    ENTRY_TWO("entry_two");

    companion object {
        fun findByType(type: String) = values().find { it.type == type }
    }

}