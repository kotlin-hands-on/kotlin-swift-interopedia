import Foundation
import shared

func sealedClassExample() {
    usingKotlinSealedClass(s: SealedClass.Object())
    usingKotlinSealedClass(s: SealedClass.Simple(param1: "param1"))
    usingKotlinSealedClass(s: SealedClass.Data(param1: "param1", param2: true))
    usingSwiftCounterpart(sealedClass: SealedClass.Object())
    usingSwiftCounterpart(sealedClass: SealedClass.Simple(param1: "param1"))
    usingSwiftCounterpart(sealedClass: SealedClass.Data(param1: "param1", param2: true))
}

func usingKotlinSealedClass(s: SealedClass) {
    switch s {
    case is SealedClass.Object:
        print("object")
    case is SealedClass.Simple:
        print("simple")
    case is SealedClass.Data:
        print("data")
    default:
        print("other")
    }
}

enum SwiftCounterpart {

    case object
    case simple(String)
    case data(String, Bool)

    public init(_ obj: SealedClass) {
        if obj is SealedClass.Object {
            self = .object
        } else if let obj = obj as? SealedClass.Simple {
            self = .simple(obj.param1)
        } else if let obj = obj as? SealedClass.Data {
            self = .data(obj.param1, obj.param2)
        } else {
            fatalError("SealedSwift not syncronized with SealedClass class")
        }
    }

}

func usingSwiftCounterpart(sealedClass: SealedClass) {
    switch SwiftCounterpart(sealedClass) {
    case .object:
        print("object")
    case let .simple(param1):
        print("simple \(param1)")
    case let .data(param1, param2):
        print("data \(param1) \(param2)")
    }
}
