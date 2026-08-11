import Foundation
import shared

func integerTypesExample(
    byteType: Int8,
    shortType: Int16,
    intType: Int32,
    longType: Int64
) {
    let types = BasicTypes()

    print(types.byteType(b: 1))
    print(types.byteType(b: byteType))

    print(types.shortType(s: 1))
    print(types.shortType(s: shortType))

    print(types.intType(i: 1))
    print(types.intType(i: intType))

    print(types.longType(l: 1))
    print(types.longType(l: longType))
}

func swiftIntTypeExample(swiftIntType: Int) {
    let types = BasicTypes()

    print(Int( types.byteType(b: Int8(swiftIntType)) ))
    print(Int( types.shortType(s: Int16(swiftIntType)) ))
    print(Int( types.intType(i: Int32(swiftIntType)) ))
    print(Int( types.longType(l: Int64(swiftIntType)) ))
}

func realTypesExample(
    floatType: Float,
    doubleType: Double
) {
    let types = BasicTypes()

    print(types.floatType(f: 1.0))
    print(types.floatType(f: floatType))

    print(types.doubleType(d: 1.0))
    print(types.doubleType(d: doubleType))
}

func charTypeExample(
    unicharType: unichar,
    stringType: String
) {
    let types = BasicTypes()

    print(types.charType(c:  ("a" as NSString).character(at: 0)))
    print(types.charType(c: unicharType))
    print(types.charType(c: (stringType as NSString).character(at: 0)))
}

func stringTypeExample(stringType: String) {
    let types = BasicTypes()

    print(types.stringType(s: "123"))

    print(types.stringType(s: stringType))
}

func boolTypeExample(boolType: Bool) {
    let types = BasicTypes()

    print(types.booleanType(b: true))
    print(types.booleanType(b: false))

    print(types.booleanType(b: boolType))
}
