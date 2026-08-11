package com.jetbrains.swiftinteropplayground.coroutines

import com.rickclephas.kmp.nativecoroutines.NativeCoroutines
import kotlinx.coroutines.CancellationException
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

    @NativeCoroutines
    fun getNumbersAnnotated(): Flow<Int> = flow {
        for (i in 1..10) {
            emit(i)
            delay(1.seconds)
        }
    }
}