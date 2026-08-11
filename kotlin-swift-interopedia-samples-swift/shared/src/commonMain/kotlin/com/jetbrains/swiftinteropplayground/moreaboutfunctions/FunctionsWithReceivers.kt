package com.jetbrains.swiftinteropplayground.moreaboutfunctions

@DslMarker
annotation class DslMarkerExample

data class Experiment(val key: String, val description: String)

@DslMarkerExample
class ExperimentsDsl() {
    val experimentList: MutableList<Experiment> = mutableListOf<Experiment>()

    fun enable(experiment: Experiment) {
        experimentList += experiment
    }

}

@DslMarkerExample
class Dsl() {
    val experimentsDsl: ExperimentsDsl = ExperimentsDsl()

    fun experiments(block: ExperimentsDsl.() -> Unit = {}) {
        experimentsDsl.block()
    }
}

fun example() {
    val dsl = Dsl().apply {
        experiments {
            enable(Experiment(key = "key1", description = "desc1"))
        }
    }
}