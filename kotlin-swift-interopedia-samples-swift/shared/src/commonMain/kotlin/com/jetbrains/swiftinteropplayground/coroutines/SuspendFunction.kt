package com.jetbrains.swiftinteropplayground.coroutines

import kotlinx.coroutines.delay
import kotlin.time.Duration.Companion.milliseconds

data class Thing(val name: String)

class ThingRepository {
    suspend fun getThingSimple(succeed: Boolean): Thing {
        delay(100.milliseconds)
        if (succeed) {
            return Thing("Thing")
        } else {
            error("oh no!")
        }
    }

    suspend fun getThingAnnotated(succeed: Boolean): Thing {
        delay(100.milliseconds)
        if (succeed) {
            return Thing("Thing")
        } else {
            error("oh no!")
        }
    }
}
