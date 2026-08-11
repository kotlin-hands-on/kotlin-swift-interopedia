import Foundation
import shared
import KotlinRuntime

func sealedInterfacesExample(){
    switchOnSealedInterfaces(sealedInterfaces: (nil as SealedInterfacesFirstImpl?)!) // SealedInterfacesFirstImpl()
    switchOnSealedInterfaces(sealedInterfaces: (nil as SealedInterfacesSecondImpl?)!) // SealedInterfacesSecondImpl()
}
    
private func switchOnSealedInterfaces(sealedInterfaces: classesandinterfaces.SealedInterfaces){
    switch(sealedInterfaces.sealedType()) {
    case let .first(type): print(type.value.firstFunctionExample())
    case let .second(type): print(type.value.secondFunctionExample())
    }
}


class SealedInterfacesFirstImpl : KotlinBase, classesandinterfaces.SealedInterfaces.First {
    func firstFunctionExample() -> String {
        return "first"
    }
}

class SealedInterfacesSecondImpl : KotlinBase, classesandinterfaces.SealedInterfaces.Second {
    func secondFunctionExample() -> String {
        return "second"
    }
}
