import Foundation
import shared

func optionalTypesExample3() {
    print(
        types.OptionalBasicTypes(
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
        types.OptionalBasicTypes(
            optionalByte: byteType,
            optionalShort: shortType,
            optionalInt: intType,
            optionalLong: longType,
            optionalFloat: floatType,
            optionalDouble: doubleType,
            optionalString: stringType,
            optionalBoolean: booleanType
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
        types.OptionalBasicTypes(
            optionalByte: optionalByte,
            optionalShort: optionalShort,
            optionalInt: optionalInt,
            optionalLong: optionalLong,
            optionalFloat: optionalFloat,
            optionalDouble: optionalDouble,
            optionalString: optionalString,
            optionalBoolean: optionalBoolean
        )
    )
}

