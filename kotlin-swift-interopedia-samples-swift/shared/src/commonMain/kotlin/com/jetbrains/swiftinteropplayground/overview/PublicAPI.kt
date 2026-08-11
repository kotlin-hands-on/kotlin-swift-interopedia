package com.jetbrains.swiftinteropplayground.overview

class PublicClass {
    val publicProperty = "Swift can access public property"
    protected val protectedProperty = "Swift can access protected property"
    private val privateProperty = "Swift can't access private property"
    internal val internalProperty = "Swift can't access internal property"

    fun publicFun(){
        println("Swift can access public function")
    }

    protected fun protectedFun(){
        println("Swift can access protected function")
    }

    private fun privateFun(){
        println("Swift can't access private function")
    }

    internal fun internalFun(){
        println("Swift can't access internal function")
    }
}

internal class InternalClass {
    internal fun internalFunction() {
    }

    internal val internalProperty = 1
}