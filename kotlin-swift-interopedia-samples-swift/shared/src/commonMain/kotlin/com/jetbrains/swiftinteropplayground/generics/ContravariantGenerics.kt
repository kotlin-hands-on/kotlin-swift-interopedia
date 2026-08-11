package com.jetbrains.swiftinteropplayground.generics

open class SuperClass
class Child : SuperClass()

class InGenericItem<in T>

fun example(example: InGenericItem<SuperClass>) {
    val y: InGenericItem<Child> = example // Won't compile without in
}