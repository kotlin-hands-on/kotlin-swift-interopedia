import Foundation
import shared

struct InteropSection: Identifiable {
    let id = UUID()
    let title: String
    let samples: [InteropSample]
}

struct InteropSample: Identifiable {
    let id = UUID()
    let title: String
    var description: String = ""
    let action: @MainActor () -> ()
}

let outputMarker = "Sample output: "
let printedToConsoleNote = "Sample output is printed to the console."

func sections() -> [InteropSection] {
    [overviewSection(),
     functionsAndPropertiesSection(),
     moreAboutFunctionsSection(),
     typesSection(),
     classesAndInterfacesSection(),
     coroutinesSection(),
     extensionsSection(),
     genericsSection()]
}

func overviewSection() -> InteropSection {
    InteropSection(title: "Overview", samples: [
        InteropSample(
            title: "Classes and functions",
            description: "You can instantiate Kotlin classes and call Kotlin functions from Swift: SimpleClass().simpleFunction()."
        ) {
            classesAndFunctionsExample()
        },
        InteropSample(
            title: "Top-level functions",
            description: "You can access a top-level function via the wrapper class: TopLevelFunctionKt.topLevelFunction()."
        ) {
            topLevelFunctionsExample()
        },
        InteropSample(
            title: "Types",
            description: "TODO"
        ) {

        },
        InteropSample(
            title: "Collections",
            description: "TODO"
        ) {
        },
        InteropSample(
            title: "Exceptions",
            description:
            """
            If you invoke a Kotlin function that throws an exception and doesn't declare it with `@Throws`, that crashes the app. Declared exceptions are converted to NSError and must be handled.
            """
        ) {
            checkedExceptionExample()
            // This crashes the app:
            //uncheckedExceptionExample()
        },
        InteropSample(
            title: "Public API",
            description:
            """
            Public classes, functions, and properties are visible from Swift. Marking classes, functions, and properties internal will exclude them from the public API of the shared code, and they will not be visible in Swift.
            """) {
            publicPropertyExample()
            publicFunctionExample()
            protectedPropertyExample()
            protectedFunctionExample()
        },
        InteropSample(
            title: "@ObjCName",
            description: """
                         Gives better Objective-C/Swift names to Kotlin constructs like classes, functions and so on, without actually renaming the Kotlin constructs.
                         """
        ) {
            objCNameExample()
        },
        InteropSample(title: "@HiddenFromObjC",
            description: "Hides a Kotlin declaration from Objective-C/Swift.",
            action: {
                hiddenFromObjCExample()
            }),
        InteropSample(title: "@ShouldRefineInSwift",
            description: "Helps to replace a Kotlin declaration with a wrapper written in Swift.") {
            shouldRefineInSwiftExample()
        },
        InteropSample(
            title: "KDoc Comments",
            description:
            """
            You can see certain KDoc comments at development time. In Xcode, use Option+Double left click to see the docs. Note that many KDocs features don't work in Xcode, like properties on constructors (@property) aren't visible. In Fleet, use the 'Show Documentation' action.
            """
        ) {
            let comments = KDocComments(commentProperty: "property")
            comments.commentFunction(arg1: 3)
        }
    ])
}

func classesAndInterfacesSection() -> InteropSection {
    InteropSection(title: "Classes and interfaces", samples: [
        InteropSample(
            title: "Abstract classes",
            description: """
                         Xcode has no hints to override abstract methods, rather we get a crash when trying to use the method during runtime.
                         """
        ) {
            print("""
                  Try uncomment and call `ConcreteClass().forOverride().
                  The application will crash with NSGenericException.
                  Such exceptions cannot be caught in Swift.
                  """)
            //ConcreteClass(param1: "Param1").forOverride(),
        },
        InteropSample(
            title: "Data classes",
            description: "Some autogenerated functions are converted to Swift: `copy` to `doCopy`, `equals` to `isEquals`, `toString` to `description`. Additional features, like destructuring, are not supported."
        ) {
            dataClassExample()
        },
        InteropSample(
            title: "Enum classes",
            description: "No equivalent enum is generated on the Swift side, and default case must be specified in a switch expression. Instead an object with static elements is generated. Improved interop available with SKIE."
        ) {
            enumClassExample()
        },
        InteropSample(
            title: "Inner classes",
            description: "Minor differences in creation syntax."
        ) {
            innerClassExample()
        },
        InteropSample(
            title: "Open classes",
            description:
            """
            Can inherit from open class, use its protected properties, override open, but not override final methods.
            Overriding final methods will give an NSException, which will crash the app.
            """
        ) {
            openClassExample()
        },
        InteropSample(
            title: "Sealed classes",
            description: "A class with heirs is generated. Passing to a switch statement requires a default case. Improved interop available with SKIE."
        ) {
            sealedClassExample()
        },
        InteropSample(
            title: "Objects",
            description: "You can access Kotlin object via the `shared` auxiliary object: `MyKotlinObject.shared.myProperty`."
        ) {
            objectsExample()
        },
        InteropSample(
            title: "Companion objects",
            description:
            """
            You can access members of Kotlin companion objects from Swift explicitly through the `companion` auxiliary object:
            ClassWithCompanionObject.companion.CONST_VAL_EXAMPLE
            """) {
            companionObjectExample()
        },

        InteropSample(
            title: "Interfaces",
            description: "The interface has become `@protocol`. Xcode turns `val` property into `var` when generating the stubs."
        ) {
            interfacesExample()
        },
        InteropSample(
            title: "Fun interfaces",
            description: "You can't create an anonymous class in Swift."
        ) {
            funInterfacesExample()
        },

        InteropSample(
            title: "Sealed Interfaces",
            description: "Separate protocols were generated that were not related to each other."
        ) {
            sealedInterfacesExample()
        },
    ])
}

func functionsAndPropertiesSection() -> InteropSection {
    InteropSection(title: "Functions and Properties", samples: [
        InteropSample(
            title: "Member functions",
            description:
            """
            You can call public member functions from Swift. Internal or private declarations aren't visible.
            """
        ) {
            memberFunctionsExample()
        },
        InteropSample(
            title: "Constructors",
            description: "You call constructors to create Kotlin classes from Swift.") {
            constructorsExample()
        },

        InteropSample(
            title: "Read-only member properties",
            description: "Member val property is accessible from Swift and is a read-only property in Swift."
        ) {
            readOnlyMemberPropertiesExample()
        },

        InteropSample(
            title: "Mutable member properties",
            description: "Member var property is accessible from Swift and is a mutable property in Swift."
        ) {
            mutableMemberPropertiesExample()
        },
        InteropSample(
            title: "Top-level val properties",
            description: "You access a top-level property via the wrapper class: TopLevelPropertyKt.topLevelProperty.") {
            topLevelValPropertiesExample()

        },
        InteropSample(
            title: "Top-level mutable var properties",
            description: "You access a top-level property via the wrapper class: TopLevelMutablePropertyKt.topLevelProperty."
        ) {
            topLevelMutableVarPropertiesExample()
        },

        InteropSample(
            title: "Functions expecting lambda arguments",
            description: "You can use a function expecting one or more lambdas as arguments without issues from Swift.") {
            functionsExpectingLambdaArgumentsExample()
        },
        InteropSample(
            title: "Functions returning function type",
            description:
            """
            You can call a Kotlin function returning a lambda. The result has Swift function type, like `() -> String`, so you can easily call it.
            """) {
            functionReturningFunctionTypeExample()
        }
    ])
}

func moreAboutFunctionsSection() -> InteropSection {
    InteropSection(title: "More about Functions", samples: [
        InteropSample(title: "Functions with overloads",
            description: """
                         There are some peculiarities when using the same parameter names. Functions with the same name and parameter names have their parameters renamed.
                         """) {
            functionsWithOverloadsExample1()
            functionsWithOverloadsExample2()
        },
        InteropSample(title: "Functions with default arguments",
            description: "You always have to specify all the function arguments. Improved interop available with SKIE.") {
            functionsWithDefaultArgumentsExample()
        },
        InteropSample(title: "Constructors with default arguments",
            description: "You always have to specify all the arguments for a constructor.") {
            constructorsWithDefaultArgumentsExample()
        },
        InteropSample(title: "Functions expecting lambda with receiver",
            description: """
                         Extension function turns into a lambda with a parameter.
                         """) {
            functionsExpectingLambdaArgumentsExample()
        },
        InteropSample(
            title: "Functions with receivers",
            description: "Functions with receivers turn into functions with parameters, which is not as convenient."
        ) {
            functionsWithReceivers()
        },
        InteropSample(title: "Functions with value class parameter",
            description: """
                         The function appears in the .h file, but the inline class argument is turned into a basic type.
                         """) {
            functionsWithValueClassParametersExample()
        },
        InteropSample(title: "Functions with vararg parameter",
            description: """
                         varargs are mapped to `KotlinArray`, not Swift's variardic parameters.
                         """) {
            functionsWithVarargParameterExample()
        },
        InteropSample(title: "Inline functions",
            description: """
                         Inline functions are in the .h file, they can be called. However, they are regular functions and not inlined.
                         """) {
            inlineFunctionsExample()
        },
    ])
}

func genericsSection() -> InteropSection {
    InteropSection(title: "Generics", samples: [
        InteropSample(title: "Generic classes", description: "Some features are supported.") {
            genericsClassesExample()
        },
        InteropSample(title: "Generic functions", description: "Automatic type inference and nullability are not supported.") {
            genericFunctionsExample()
        },
        InteropSample(title: "Bounded generics",
            description: "The generic type restriction is not supported.") {
            boundedGenericsExample()
        },
        InteropSample(title: "Contravariant generics",
            description: "Requires a type cast.") {
            contravariantGenericsExample()
        },
        InteropSample(title: "Covariant generics", description: "Requires a type cast.") {
            covariantGenericsExample()
        },
        InteropSample(title: "Reified generics",
            description: """
                         The reified function crashes at runtime.

                         NB: some lines in the examples are commented out as they (correctly) crash the app. Uncomment to see the behaviour.
                         """) {
            //reifiedFunctionsExample()
        },
        InteropSample(title: "Star projections", description: "Requires a type cast.") {
            starProjectionExample()
        },
    ])
}

func extensionsSection() -> InteropSection {
    InteropSection(title: "Extensions", samples: [
        InteropSample(
            title: "Extension function over platform class",
            description: "A wrapper class appears with a function that accepts an object of the desired class."
        ) {
            extensionFunctionOverPlatformClassExample()
        },
        InteropSample(
            title: "Extension function over usual class",
            description: "The function can be used on a class object."
        ) {
            extensionFunctionOverUsualClassExample()
        },
        InteropSample(
            title: "Extension property on platform class",
            description: "A wrapper class appears with a function that accepts an object of the desired class."
        ) {
            extensionPropertyOnPlatformClassExample()
        },
        InteropSample(
            title: "Extension property on usual class",
            description: "The property can be accessed through the class object."
        ) {
            extensionPropertyOnUsualClassExample()
        },
        InteropSample(
            title: "Extension property over companion object of platform class",
            description: "There is a property in the .h file, but in Swift it’s impossible to use"
        ) {
            extensionPropertyOverCompanionObjectOnPlatformClassExample()
        },
        InteropSample(
            title: "Extension property over companion object of usual class",
            description: "The property can be accessed through the companion object.") {
                extensionPropertyOverCompanionObjectOfUsualClassExample()
        }
    ])
}

func typesSection() -> InteropSection {
    InteropSection(title: "Types", samples: [
        InteropSample(
            title: "Basic types",
            description: "May require mapping for integer data types and mapping for Char."
        ) {
            boolTypeExample(boolType: false)
            charTypeExample(unicharType: 64, stringType: "123")
            integerTypesExample(byteType: Int8(1), shortType: Int16(2), intType: 3, longType: 10_211_420_262_370_680)
            realTypesExample(floatType: 31.5, doubleType: 12121.9)
            stringTypeExample(stringType: "def")
            swiftIntTypeExample(swiftIntType: 42)
        },
        InteropSample(
            title: "Optional basic types",
            description: "Some basic types require mapping into special optional types."
        ) {
            optionalTypesExample(optionalByte: nil, optionalShort: nil, optionalInt: nil, optionalLong: nil, optionalFloat: nil, optionalDouble: nil, optionalString: nil, optionalBoolean: nil)
            optionalTypesExample2(byteType: Int8(1), shortType: Int16(2), intType: 3, longType: 10_211_420_262_370_680, floatType: 5.002, doubleType: 12121.9, stringType: "asdf", booleanType: false)
            optionalTypesExample3()
        },
        InteropSample(
            title: "Collections with custom types",
            description: "Collections with elements of custom types do not require additional mappings."
        ) {
            collectionsWithCustomTypesExample()
        },
        InteropSample(
            title: "Collections with basic types",
            description: "Collections with elements of basic types (except String) require a wrapper."
        ) {
            collectionsWithBasicTypesExample()
        },
        InteropSample(
            title: "Mutable, immutable collections",
            description:
            """
            To adjust mutability, the let, var keywords are used. Additional mappings are required for mutable collections.
            """
        ) {
            collectionsMutabilityExample()
            listTypeNoCrashes()
            listMutableListExample()
            setMutableSetExample()
            //Below causes a crash due to an error in Swift
            //mutableSetExample()
            mapMutableMapExample()
        },
        InteropSample(
            title: "Unit and Nothing",
            description:
            """
            The Unit and Nothing types can be used in the same way as in Kotlin: Unit as an object or void, Nothing cannot be created.

            NB: some lines in the examples are commented out as they (correctly) do not compile / crash the app. Uncomment to see the behaviour.
            """
        ) {
            unitNothingExample()
        },
    ])
}

func coroutinesSection() -> InteropSection {
    InteropSection(title: "Coroutines", samples: [
        InteropSample(
            title: "Suspend functions",
            description:
            """
            Translated into callback, experimentally - into async / await. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop and provide cancellation support.
            """) {
            suspendFunctionsExample()
        },
        InteropSample(
            title: "Suspend functions with KMP-NativeCoroutines",
            description: "Improved interop with KMP-NativeCoroutines using async/await."
        ) {
            suspendFunctionsWithKMPNativeCoroutinesExample()
        },
        InteropSample(
            title: "\"Cancellation\" of suspend functions",
            description: "Task cancellation is stubbed. Suspend function returns value, no CancellationError."
        ) {
            cancellationOfSuspendFunctionExample()
        },
        InteropSample(
            title: "Cancellation of suspend functions with KMP-NativeCoroutines",
            description: "Improved interop with KMP-NativeCoroutines using async/await. Suspend function fails with CancellationError."
        ) {
            cancellationOfSuspendFunctionWithKMPNativeCoroutinesExample()
        },
        InteropSample(
            title: "Flows",
            description:
            """
            Translated into callback, experimentally - into async / await. Generic type arguments are lost. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop and provide cancellation support.
            """
        ) {
            flowsExample()
        },
        InteropSample(
            title: "Flows with KMP-NativeCoroutines",
            description: "Improved interop with KMP-NativeCoroutines using async/await."
        ) {
            flowsWithKMPNativeCoroutinesExample()
        },

        InteropSample(
            title: "\"Cancellations\" of Flows",
            description: "Task cancellation is stubbed. Flow continues emitting values."
        ) {
            flowsWithCancellationExample()
        },
        InteropSample(
            title: "Cancellations of Flows with KMP-NativeCoroutines",
            description: "Improved interop with KMP-NativeCoroutines using async/await. Flow stops emitting values, but does not give an error."
        ) {
            cancellationOfFlowsWithKMPNativeCoroutinesExample()
        }
    ])
}
