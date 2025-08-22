[![official JetBrains project](https://jb.gg/badges/official-plastic.svg)](https://confluence.jetbrains.com/display/ALL/JetBrains+on+GitHub)

# Kotlin-Swift interopedia

## Overview
Kotlin/Native provides bidirectional interoperability with Objective-C. Kotlin is not directly interoperable with Swift but rather indirectly via an Objective-C bridge. The reason for this is twofold:
<ul>
<li>It allows all iOS projects (written in Objective-C or Swift) to use shared Kotlin code</li>
<li>When the decision was made, Swift was still on the road to maturity and mainstream adoption.</li>
</ul>
The Kotlin/Native compiler generates Objective-C headers, which Swift code can import. This has the following implications for Swift development:
<ul>
<li>Some features work exactly as expected</li>
<li>Some features work with a small workaround</li>
<li>Some features work better with a community solution</li>
<li>Some features don’t work optimally right now</li>
<li>Some features don’t work</li>
</ul>

<table><tr><td>Swift export, where the Kotlin API is directly exported as Swift declarations instead of Objective-C headers, is something that the Kotlin team is currently working on, and will resolve some of the difficulties experienced by Swift developers when consuming shared Kotlin code. You can find the table with the latest feature state <a href="https://docs.google.com/spreadsheets/d/157wQt05ZyaJAP_P1wigXDs6nW9q7clqbpIDAfMrFhOg">here.</a></td></tr></table>

## How to use
### Interopedia
This interopedia of the different Kotlin language features is categorized into broad categories, namely:
- Overview
- Functions and properties
- More about functions
- Types
- Classes and interfaces
- Coroutines
- Extensions
- Generics

Each language feature has its own article, consisting of an explanation of the feature, some sample code in Kotlin, how to call this code from Swift (if possible), and additional improvements should the Swift code not be as idiomatic as we’d like. 

You could search the interopedia for the particular language feature that you are interested in, or read all the articles in order for a more comprehensive understanding of Kotlin/Swift interoperability.

### Kotlin/Swift Interop Playground app
The iOS app is organized into the same broad categories as the interopedia. Clicking on a specific language feature will:
- Display a summary of the interoperability of the feature.
- Run code samples associated with the feature and print the results in the console.

You can edit the code, rerun the app, and see how the output has changed.

## Overview
<table>
  <tr><td><a href="/docs/overview/Classes%20and%20functions.md">Classes and functions</a></td><td>You can instantiate Kotlin classes and call Kotlin functions from Swift: SimpleClass().simpleFunction().</td></tr>
  <tr><td><a href="/docs/overview/Top-level%20functions.md">Top-level functions</a></td><td>You can access a top-level function via the wrapper class: TopLevelFunctionKt.topLevelFunction().</td></tr>
  <tr><td><a href="/docs/overview/Types.md">Types</a></td><td>Simple types and custom types can be passed as arguments and returned from function calls.</td></tr>
  <tr><td><a href="/docs/overview/Collections.md">Collections</a></td><td>Kotlin and Swift have very similar kinds of collections and can be mapped between each other.</td></tr>
  <tr><td><a href="/docs/overview/Exceptions.md">Exceptions</a></td><td>If you invoke a Kotlin function that throws an exception and doesn't declare it with `@Throws`, that crashes the app. Declared exceptions are converted to NSError and must be handled.</td></tr>
  <tr><td><a href="/docs/overview/PublicAPI.md">Public API</a></td><td>Public classes, functions, and properties are visible from Swift. Marking classes, functions, and properties internal will exclude them from the public API of the shared code, and they will not be visible in Swift.</td></tr>
  <tr><td><a href="/docs/overview/ObjCName.md">Interop annotation - @ObjCName</a></td><td>Gives better Objective-C/Swift names to Kotlin constructs like classes, functions and so on, without actually renaming the Kotlin constructs. Experimental.</td></tr>
  <tr><td><a href="/docs/overview/HiddenFromObjC.md">Interop annotations - @HiddenFromObj</a></td><td>Hides a Kotlin declaration from Objective-C/Swift. Experimental.</td></tr>
  <tr><td><a href="/docs/overview/ShouldRefineInSwift.md">Interop annotations - @ShouldRefineInSwift</a></td><td>Helps to replace a Kotlin declaration with a wrapper written in Swift. Experimental.</td></tr>
  <tr><td><a href="/docs/overview/KDocComments.md">KDoc comments</a></td><td>You can see certain KDoc comments at development time. In Xcode, use Option+Double left click to see the docs. Note that many KDocs features don't work in Xcode, like properties on constructors (@property) aren't visible. In Fleet, use the 'Show Documentation' action.</td></tr>
</table>

## Functions and properties
<table>
  <tr><td><a href="/docs/functionsandproperties/Member%20functions.md">Member functions</a></td><td>You can call public member functions from Swift. Internal or private declarations aren't visible.</td></tr>
  <tr><td><a href="/docs/functionsandproperties/Constructors.md">Constructor</a></td><td>You call constructors to create Kotlin classes from Swift.</td></tr>
  <tr><td><a href="/docs/functionsandproperties/Read-only%20member%20properties.md">Read-only member properties</a></td><td>Member val property is accessible from Swift and is a read-only property in Swift.</td></tr>
  <tr><td><a href="/docs/functionsandproperties/Mutable%20member%20properties.md">Mutable member properties</a></td><td>Member var property is accessible from Swift and is a mutable property in Swift.</td></tr>
  <tr><td><a href="/docs/functionsandproperties/Top-level%20val%20properties.md">Top-level val properties (readonly)</a></td><td>You access a top-level property via the wrapper class: TopLevelPropertyKt.topLevelProperty.</td></tr>
  <tr><td><a href="/docs/functionsandproperties/Top-level%20mutable%20var%20properties.md">Top-level var properties (mutable)</a></td><td>You access a top-level property via the wrapper class: TopLevelMutablePropertyKt.topLevelProperty.</td></tr>
  <tr><td><a href="/docs/functionsandproperties/Functions%20expecting%20lambda%20arguments.md">Functions expecting lambda arguments</a></td><td>You can use a function expecting one or more lambdas as arguments without issues from Swift.</td></tr>
  <tr><td><a href="/docs/functionsandproperties/Functions%20returning%20function%20type.md">Functions returning function type</a></td><td>You can call a Kotlin function returning a lambda. The result has Swift function type, like () -> String, so you can easily call it.</td></tr>
</table>

## More about functions
<table>
  <tr><td><a href="/docs/moreaboutfunctions/Functions%20with%20overloads.md">Functions with overloads</a></td><td>There are some peculiarities when using the same parameter names.</td></tr>
  <tr><td><a href="/docs/moreaboutfunctions/Functions%20with%20default%20arguments.md">Functions with default arguments</a></td><td>You always have to specify all the function arguments. Improved interop available with SKIE.</td>
  <tr><td><a href="/docs/moreaboutfunctions/Constructors%20with%20default%20arguments.md">Constructor with default arguments</a></td><td>You always have to specify all the arguments for a constructor.</td></tr>
  <tr><td><a href="/docs/moreaboutfunctions/Functions%20expecting%20lambda%20with%20receiver.md">Functions expecting lambda with receiver</a></td><td>The extension function turns into a lambda with a parameter.</td></tr>
  <tr><td><a href="/docs/moreaboutfunctions/Functions%20with%20receivers.md">Functions with receivers</a></td><td>Functions with receivers turn into functions with parameters, which is not as convenient.</td></tr>
  <tr><td><a href="/docs/moreaboutfunctions/Functions%20with%20value%20class%20parameter.md">Functions with value class parameter</a></td><td>The function appears in the .h file, but the inline class argument is turned into a basic type.</td></tr>
  <tr><td><a href="/docs/moreaboutfunctions/Functions%20with%20vararg%20parameter.md">Functions with vararg parameter</a></td><td>varargs are mapped to KotlinArray, not Swift's variardic parameters.</td></tr>
  <tr><td><a href="/docs/moreaboutfunctions/Inline%20functions.md">Inline functions</a></td><td>Inline functions are in the .h file, they can be called. However, they are regular functions and not inlined.</td></tr>
</table>

## Types
<table>
  <tr><td><a href="/docs/types/Basic%20types.md">Basic types</a></td><td>May require mapping for integer data types and mapping for Char.</td></tr>
  <tr><td><a href="/docs/types/Optional%20basic%20types.md">Optional basic types</a></td><td>Some basic types require mapping into special optional types.</td></tr>
  <tr><td><a href="/docs/types/Collections%20with%20custom%20types.md">Collections with custom types</a></td><td>Collections with elements of custom types do not require additional mappings.</td></tr>
  <tr><td><a href="/docs/types/Collections%20with%20basic%20types.md">Collections with basic types</a></td><td>Collections with elements of basic types (except String) require a wrapper.</td></tr>
  <tr><td><a href="/docs/types/Mutable,%20immutable%20collections.md">Mutable, immutable collections</a></td><td>To adjust mutability, the let and var keywords are used. Additional mappings are required for mutable collections.</td></tr>
  <tr><td><a href="/docs/types/Unit%20and%20Nothing.md">Unit and Nothing</a></td><td>The Unit and Nothing types can be used in the same way as in Kotlin: Unit as an object or void, Nothing cannot be created.</td></tr>
</table>

## Classes and interfaces
<table>
  <tr><td><a href="/docs/classesandinterfaces/Abstract%20classes.md">Abstract classes</a></td><td>Xcode has no hints to override abstract methods, rather we get a crash when trying to use the method during runtime.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Annotation%20classes.md">Annotation classes</a></td><td>Annotations are not supported and are not included in the .h file.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Data%20classes.md">Data classes</a></td><td>Some autogenerated functions are converted to Swift: copy to doCopy, equals to isEquals, toString to description. Additional features, like destructuring, are not supported.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Enum%20classes.md">Enum classes</a></td><td>No equivalent enum is generated on the Swift side, and default case must be specified in a switch expression. Instead an object with static elements is generated. Improved interop available with SKIE.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Inner%20classes.md">Inner classes</a></td><td>Minor differences in creation syntax.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Open%20classes.md">Open classes</a></td><td>Can inherit from open class, use its protected properties, override open, but not override final methods.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Sealed%20classes.md">Sealed classes</a></td><td>A class with heirs is generated. Passing to a switch statement requires a default case. Improved interop available with SKIE.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Inline%20classes.md">Inline classes</a></td><td>This feature is not supported.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Objects.md">Objects</a></td><td>You can access Kotlin object via the shared auxiliary object: MyKotlinObject.shared.myProperty.</td>
  <tr><td><a href="/docs/classesandinterfaces/Companion%20objects.md">Companion objects</a></td><td>You can access members of Kotlin companion objects from Swift explicitly through the `companion` auxiliary object: ClassWithCompanionObject.companion.CONST_VAL_EXAMPLE.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Fun%20interfaces.md">Fun interfaces</a></td><td>You can't create an anonymous class in Swift.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Interfaces.md">Interfaces</a></td><td>The interface has become @protocol. Xcode turns val property into var when generating the stubs.</td></tr>
  <tr><td><a href="/docs/classesandinterfaces/Sealed%20interfaces.md">Sealed interfaces</a></td><td>Separate protocols are generated that are not related to each other.</td></tr>
</table>

## Coroutines
<table>
  <tr><td><a href="/docs/coroutines/Suspend%20functions.md">Suspend functions</a></td><td>Translated into callback, experimentally - into async / await. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop and provide cancellation support.</td></tr>
  <tr><td><a href="/docs/coroutines/Flows.md">Flows</a></td><td>Translated into callback, experimentally - into async / await. Generic type arguments are lost. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop and provide cancellation support.</td></tr>
</table>

## Extensions
<table>
  <tr><td><a href="/docs/extensions/Extension%20functions%20over%20platform%20class.md">Extension function over platform class</a></td><td>A wrapper class appears with a function that accepts an object of the desired class.</td></tr>
  <tr><td><a href="/docs/extensions/Extension%20functions%20over%20usual%20class.md">Extension function over usual class</a></td><td>The function can be used on a class object.</td></tr>
  <tr><td><a href="/docs/extensions/Extension%20properties%20over%20platform%20class.md">Extension properties over platform class</a></td><td>A wrapper class appears with a function that accepts an object of the desired class.</td>
  <tr><td><a href="/docs/extensions/Extension%20properties%20over%20usual%20class.md">Extension properties over usual class</a></td><td>The property can be accessed through the class object.</td>
  <tr><td><a href="/docs/extensions/Extension%20properties%20for%20companion%20object%20of%20platform%20class.md">Extension properties for companion object of platform class</a></td><td>There is a property in the .h file, but in Swift it’s impossible to use.</td></tr>
  <tr><td><a href="/docs/extensions/Extension%20properties%20for%20companion%20object%20of%20usual%20class.md">Extension properties for companion object of usual class</a></td><td>The property can be accessed through the companion object.</td>
</table>

## Generics
<table>
  <tr><td><a href="/docs/generics/Generic%20classes.md">Generic classes</a></td><td>Some features are supported.</td></tr>
  <tr><td><a href="/docs/generics/Generic%20functions.md">Generic functions</a></td><td>Automatic type inference and nullability are not supported.</td></tr>
  <tr><td><a href="/docs/generics/Bounded%20generics.md">Bounded generics</a></td><td>The generic type restriction is not supported.</td></tr>
  <tr><td><a href="/docs/generics/Contravariant%20generics.md">Contravariant generics</a></td><td>Requires a type cast.</td></tr>
  <tr><td><a href="/docs/generics/Covariant%20generics.md">Covariant generics</a></td><td>Requires a type cast.</td></tr>
  <tr><td><a href="/docs/generics/Reified%20functions.md">Reified functions</a></td><td>The reified function crashes at runtime.</td></tr>
  <tr><td><a href="/docs/generics/Star%20projection.md">Star projection</a></td><td>Requires a type cast.</td></tr>
  <tr><td><a href="/docs/generics/Generic%20interfaces.md">Generic interfaces</a></td><td>Generic interfaces are not supported.</td></tr>  
</table>

## Feature Support Refresher

### Some features work exactly as expected

<ul>
<li>Classes and functions</li>
<li>Member properties (Readonly or Mutable)</li>
<li>Higher-order functions (lambda as Parameter or Return)</li>
<li>Collections with custom types</li>
<li>Unit and Nothing</li>
<li>Abstract classes</li>
<li>Open classes</li>
<li>Interfaces</li>
<li>Extension function over usual class</li>
<li>Extension properties over usual class</li>
</ul>

### Some features work with a small workaround

<ul>
<li>Top-level functions</li>
<li>Top-level properties (Read-only or Mutable)</li>
<li>Exceptions</li>
<li>Function overloads</li>
<li>Functions with default arguments</li>
<li>Functions expecting lambda with receiver</li>
<li>Functions with receivers</li>
<li>Basic types</li>
<li>Optional basic types</li>
<li>Collections with basic types</li>
<li>Mutable / immutable collections</li>
<li>Enum classes</li>
<li>Inner classes</li>
<li>Sealed classes</li>
<li>Objects</li>
<li>Companion objects</li>
<li>Sealed interfaces</li>
<li>Extension function over platform class</li>
<li>Extension properties over platform class</li>
<li>Extension properties for companion object of usual class</li>
</ul>

### Some features work better with a community solution

<ul>
<li>Suspend functions</li>                   
<li>Flows</li>
</ul>

### Some features don’t work optimally right now (use with care)

<ul>
<li>Data classes</li>
<li>Generic classes</li>
<li>Generic functions</li>
<li>Contravariant generics</li>
<li>Covariant generics</li>
<li>Star projections</li>
</ul>

### Some features don’t work (don’t use)

<ul>
<li>Functions with value class parameter</li>
<li>Functions with a vararg parameter</li>
<li>Inline functions</li>
<li>Annotations</li>
<li>Inline classes</li>
<li>Fun interfaces</li>
<li>Extension properties for companion object of platform class</li>
<li>Bounded generics</li>
<li>Reified functions</li>
<li>Generic interfaces</li>
</ul>