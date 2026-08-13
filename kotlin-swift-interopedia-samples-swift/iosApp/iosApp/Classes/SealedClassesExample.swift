import Foundation
import shared

func sealedClassExample() {
    usingKotlinSealedClass(s: classesandinterfaces.SealedClass.Object.shared)
    usingKotlinSealedClass(s: classesandinterfaces.SealedClass.Simple(param1: "param1"))
    usingKotlinSealedClass(s: classesandinterfaces.SealedClass.Data(param1: "param1", param2: true))
    usingSwiftCounterpart(sealedClass: classesandinterfaces.SealedClass.Object.shared)
    usingSwiftCounterpart(sealedClass: classesandinterfaces.SealedClass.Simple(param1: "param1"))
    usingSwiftCounterpart(sealedClass: classesandinterfaces.SealedClass.Data(param1: "param1", param2: true))
}

func usingKotlinSealedClass(s: classesandinterfaces.SealedClass) {
    switch s {
    case is classesandinterfaces.SealedClass.Object:
        print("object")
    case is classesandinterfaces.SealedClass.Simple:
        print("simple")
    case is classesandinterfaces.SealedClass.Data:
        print("data")
    default:
        print("other")
    }
}

enum SwiftCounterpart {

    case object
    case simple(String)
    case data(String, Bool)

    public init(_ obj: classesandinterfaces.SealedClass) {
        if obj is classesandinterfaces.SealedClass.Object {
            self = .object
        } else if let obj = obj as? classesandinterfaces.SealedClass.Simple {
            self = .simple(obj.param1)
        } else if let obj = obj as? classesandinterfaces.SealedClass.Data {
            self = .data(obj.param1, obj.param2)
        } else {
            fatalError("SealedSwift not syncronized with SealedClass class")
        }
    }

}

func usingSwiftCounterpart(sealedClass: classesandinterfaces.SealedClass) {
    switch SwiftCounterpart(sealedClass) {
    case .object:
        print("object")
    case let .simple(param1):
        print("simple \(param1)")
    case let .data(param1, param2):
        print("data \(param1) \(param2)")
    }
}
