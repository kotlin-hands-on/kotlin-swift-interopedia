import Foundation
import shared

func publicPropertyExample(){
    print(PublicClass().publicProperty)
}

func protectedPropertyExample(){
    print(PublicClass().protectedProperty)
}

func internalPropertyExample(){
    //Does not compile
    //print(PublicClass().internalProperty)
}

func privatePropertyExample(){
    //Does not compile
    //print(PublicClass().privateProperty)
}

func publicFunctionExample(){
    PublicClass().publicFun()
}

func protectedFunctionExample(){
    PublicClass().protectedFun()
}

func internalFunctionExample(){
    //Does not compile
    //PublicClass().internalFun()
}

func privateFunctionExample(){
    //Does not compile
    //PublicClass().privateFun()
}

func internalClassExample(){
    //Does not compile
    //InternalClass()
}

