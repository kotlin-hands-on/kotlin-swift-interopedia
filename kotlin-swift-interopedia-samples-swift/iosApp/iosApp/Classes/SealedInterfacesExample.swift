import Foundation
import shared
import KotlinRuntime

func sealedInterfacesExample(){
    switchOnSealedInterfaces(sealedInterfaces: (nil as SealedInterfacesFirstImpl?)!) // SealedInterfacesFirstImpl()
    switchOnSealedInterfaces(sealedInterfaces: (nil as SealedInterfacesSecondImpl?)!) // SealedInterfacesSecondImpl()
}
    
private func switchOnSealedInterfaces(sealedInterfaces: classesandinterfaces.SealedInterfaces){
    switch(sealedInterfaces){
    case is classesandinterfaces.SealedInterfacesFirst: print((sealedInterfaces as! any classesandinterfaces.SealedInterfacesFirst as classesandinterfaces.SealedInterfacesFirst).firstFunctionExample())
    case is classesandinterfaces.SealedInterfacesSecond: print((sealedInterfaces as! any classesandinterfaces.SealedInterfacesSecond as classesandinterfaces.SealedInterfacesSecond).secondFunctionExample())
    default: print("default")
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
