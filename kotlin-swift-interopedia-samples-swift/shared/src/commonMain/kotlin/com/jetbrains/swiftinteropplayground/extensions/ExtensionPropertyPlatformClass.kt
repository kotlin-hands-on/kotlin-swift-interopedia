package com.jetbrains.swiftinteropplayground.extensions

val String.myExtensionProperty: String get() = "789"

fun extensionPropertyPlatformClassExample() {
    println("123".myExtensionProperty)
}