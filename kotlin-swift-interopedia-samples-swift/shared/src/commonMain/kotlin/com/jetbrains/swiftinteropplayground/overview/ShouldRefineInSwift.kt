package com.jetbrains.swiftinteropplayground.overview

import kotlin.native.ShouldRefineInSwift

interface Person {
    @ShouldRefineInSwift
    val namePair: Pair<String, String>
}

class RealPerson: Person {
    override val namePair = "Pamela" to "Hill"
}