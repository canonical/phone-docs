---
Title: QtQml.qtqml-referenceexamples-coercion-example
---
        
Extending QML - Inheritance and Coercion Example
================================================

<span class="subtitle"></span>
<span id="details"></span>
This example builds on:

-   [Extending QML - Object and List Property Types Example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQml.referenceexamples-properties/)
-   [Extending QML - Adding Types Example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQml.referenceexamples-adding/)

The Inheritance and Coercion Example shows how to use base classes to assign types of more than one type to a property. It specializes the Person type developed in the previous examples into two types - a `Boy` and a `Girl`.

``` qml
BirthdayParty {
    host: Boy {
        name: "Bob Jones"
        shoeSize: 12
    }
    guests: [
        Boy { name: "Leo Hodges" },
        Boy { name: "Jack Smith" },
        Girl { name: "Anne Brown" }
    ]
}
```

<span id="declare-boy-and-girl"></span>
Declare Boy and Girl
--------------------

``` cpp
class Boy : public Person
{
    Q_OBJECT
public:
    Boy(QObject * parent = 0);
};
class Girl : public Person
{
    Q_OBJECT
public:
    Girl(QObject * parent = 0);
};
```

The Person class remains unaltered in this example and the Boy and Girl C++ classes are trivial extensions of it. As an example, the inheritance used here is a little contrived, but in real applications it is likely that the two extensions would add additional properties or modify the Person classes behavior.

<span id="define-people-as-a-base-class"></span>
### Define People as a base class

The implementation of the People class itself has not changed since the previous example. However, as we have repurposed the People class as a common base for Boy and Girl, we want to prevent it from being instantiated from QML directly - an explicit Boy or Girl should be instantiated instead.

``` cpp
qmlRegisterType<Person>();
```

While we want to disallow instantiating Person from within QML, it still needs to be registered with the QML engine, so that it can be used as a property type and other types can be coerced to it.

<span id="define-boy-and-girl"></span>
### Define Boy and Girl

The implementation of Boy and Girl are trivial.

``` cpp
Boy::Boy(QObject * parent)
: Person(parent)
{
}
Girl::Girl(QObject * parent)
: Person(parent)
{
}
```

All that is necessary is to implement the constructor, and to register the types and their QML name with the QML engine.

<span id="running-the-example"></span>
Running the Example
-------------------

The BirthdayParty type has not changed since the previous example. The celebrant and guests property still use the People type.

``` cpp
    Q_PROPERTY(Person *host READ host WRITE setHost)
    Q_PROPERTY(QQmlListProperty<Person> guests READ guests)
```

However, as all three types, Person, Boy and Girl, have been registered with the QML system, on assignment QML automatically (and type-safely) converts the Boy and Girl objects into a Person.

The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.

Files:

-   referenceexamples/coercion/birthdayparty.cpp
-   referenceexamples/coercion/birthdayparty.h
-   referenceexamples/coercion/example.qml
-   referenceexamples/coercion/person.cpp
-   referenceexamples/coercion/person.h
-   referenceexamples/coercion/main.cpp
-   referenceexamples/coercion/coercion.pro
-   referenceexamples/coercion/coercion.qrc

