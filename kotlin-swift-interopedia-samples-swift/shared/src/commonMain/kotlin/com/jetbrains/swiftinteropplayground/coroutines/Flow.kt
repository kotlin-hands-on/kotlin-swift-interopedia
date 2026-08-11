package com.jetbrains.swiftinteropplayground.coroutines

import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlin.time.Duration.Companion.seconds

class NumberFlowRepository {
    fun getNumbersSimple(): Flow<Int> = flow {
        for (i in 1..10) {
            emit(i)
            delay(1.seconds)
        }
    }

    fun getNumbersAnnotated(): Flow<Int> = flow {
        for (i in 1..10) {
            emit(i)
            delay(1.seconds)
        }
    }
}
