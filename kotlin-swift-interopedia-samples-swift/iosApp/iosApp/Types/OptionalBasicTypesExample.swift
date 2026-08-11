import Foundation
import shared

func optionalTypesExample3() {
    print(
        OptionalBasicTypes(
            optionalByte: 1,
            optionalShort: 1,
            optionalInt: 1,
            optionalLong: 1,
            optionalFloat: 1.0,
            optionalDouble: 1.0,
            optionalString: "123",
            optionalBoolean: true
        )
    )
}

func optionalTypesExample2(
    byteType: Int8,
    shortType: Int16,
    intType: Int32,
    longType: Int64,
    floatType: Float,
    doubleType: Double,
    stringType: String,
    booleanType: Bool
) {
    print(
        OptionalBasicTypes(
            optionalByte: KotlinByte(value: byteType),
            optionalShort: KotlinShort(value: shortType),
            optionalInt: KotlinInt(value: intType),
            optionalLong: KotlinLong(value: longType),
            optionalFloat: KotlinFloat(value: floatType),
            optionalDouble: KotlinDouble(value: doubleType),
            optionalString: stringType,
            optionalBoolean: KotlinBoolean(value: booleanType)
        )
    )
}

func optionalTypesExample(
    optionalByte: Int8?,
    optionalShort: Int16?,
    optionalInt: Int32?,
    optionalLong: Int64?,
    optionalFloat: Float?,
    optionalDouble: Double?,
    optionalString: String?,
    optionalBoolean: Bool?
) {
    print(
        OptionalBasicTypes(
            optionalByte: (optionalByte != nil) ? KotlinByte(value: optionalByte!) : nil,
            optionalShort: (optionalShort != nil) ? KotlinShort(value: optionalShort!) : nil,
            optionalInt: (optionalInt != nil) ? KotlinInt(value: optionalInt!) : nil,
            optionalLong: (optionalLong != nil) ? KotlinLong(value: optionalLong!) : nil,
            optionalFloat: (optionalFloat != nil) ? KotlinFloat(value: optionalFloat!) : nil,
            optionalDouble: (optionalDouble != nil) ? KotlinDouble(value: optionalDouble!) : nil,
            optionalString: optionalString,
            optionalBoolean: (optionalBoolean != nil) ? KotlinBoolean(value: optionalBoolean!) : nil
        )
    )
}

