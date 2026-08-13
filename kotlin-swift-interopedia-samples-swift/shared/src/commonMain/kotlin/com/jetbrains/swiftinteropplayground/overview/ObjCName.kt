package com.jetbrains.swiftinteropplayground.overview

import kotlin.native.ObjCName

@ObjCName(swiftName = "MySwiftArray")
class MyKotlinArray {
    @ObjCName("index")
    fun indexOf(@ObjCName("of") element: String): Int = 1
}