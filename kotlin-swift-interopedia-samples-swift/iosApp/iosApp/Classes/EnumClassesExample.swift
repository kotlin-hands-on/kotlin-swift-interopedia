import Foundation
import shared

func enumClassExample() {
    let e1 = EnumClass.entryOne
    let _ = EnumClass.entryTwo

    let _ = EnumClass.entryOne.name
    let _ = EnumClass.entryOne.type

    let _ = EnumClass.companion.findByType(type: "entry_two")
    let optionalResult = EnumClass.companion.findByType(type: "entry_two_trheee")

    print("Enum example: \(e1)")
    print("Switching: \(switchEnumClass(enumClassExample: e1))")
    print("Non-existing entry: \(String(describing: optionalResult))")
}

private func switchEnumClass(enumClassExample: EnumClass) -> String {
    switch enumClassExample {
    case .entryOne: return "entryOne"
    case .entryTwo: return "entryTwo"
    default: return "default"
    }
}
