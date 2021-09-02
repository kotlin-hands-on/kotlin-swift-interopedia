## Usual class constructor

| Статус             | Ожидание                                         | Реальность                                  |
| ------------------ | ------------------------------------------------ | ------------------------------------------- |
| :white_check_mark: | Работа с конструктором не отличается от Kotlin-а | Реальность совпадает с ожиданием :thumbsup: |

### Пояснения

Объявим простой класс на стороне Kotlin-кода:

```kotlin
class MyClass(
    val param: String
)
```

На стороне Swift-а мы получим такой же класс с основным конструктором, 
в котором [примитивные типы будут сконвертированы](/docs/types/Primitive%20types.md):

```swift
func example() {
    let _ = MyClass(param: "123")
}
```

Небольшое отличие от Kotlin-классов: в Swift-версии все поля конструктора должны быть именованными.

---
[Оглавление](/README.md)