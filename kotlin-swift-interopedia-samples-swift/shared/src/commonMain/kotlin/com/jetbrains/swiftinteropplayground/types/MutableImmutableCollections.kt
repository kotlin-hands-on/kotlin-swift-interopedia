package com.jetbrains.swiftinteropplayground.types

fun mutableListType(list: MutableList<Int>): MutableList<Int> {
    return mutableListOf(4, 5, 6).also { it.addAll(list) }
}

fun setType(set: Set<Int>): Set<Int> {
    return mutableSetOf(1, 2, 3).also { it.addAll(set) }
}

fun mutableSetType(set: MutableSet<Int>): MutableSet<Int> {
    return mutableSetOf(4, 5, 6).also { it.addAll(set) }
}

fun mapType(map: Map<String, Int>): Map<String, Int> {
    return mutableMapOf(
        "1" to 1,
        "2" to 2,
        "3" to 3
    ).also { it.putAll(map) }
}

fun mutableMapType(map: MutableMap<String, Int>): MutableMap<String, Int> {
    return mutableMapOf(
        "1" to 1,
        "2" to 2,
        "3" to 3
    ).also { it.putAll(map) }
}