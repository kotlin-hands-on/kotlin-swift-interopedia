package com.jetbrains.swiftinteropplayground.overview

fun getList(): List<Int> {
    return listOf(1,2,3)
}

fun getArray(): Array<Int> {
    return arrayOf(1,2,3)
}

fun getMap(): Map<String, Int> {
    return mapOf("a" to 1, "b" to 2)
}

fun getSet(): Set<Int> {
    return setOf(1,1,2)
}

fun set(collection: List<Int>){
    println(collection)
}