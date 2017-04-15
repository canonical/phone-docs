---
Title: QtQml.qtqml-referenceexamples-default-example
---
        
Extending QML - Default Property Example
========================================

<span class="subtitle"></span>
<span id="details"></span>
This example builds on:

-   [Extending QML - Inheritance and Coercion Example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQml.referenceexamples-coercion/)
-   [Extending QML - Object and List Property Types Example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQml.referenceexamples-properties/)
-   [Extending QML - Adding Types Example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQml.referenceexamples-adding/)

The Default Property Example is a minor modification of the [Extending QML - Inheritance and Coercion Example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQml.referenceexamples-coercion/) that simplifies the specification of a BirthdayParty through the use of a default property.

``` qml
BirthdayParty {
    host: Boy {
        name: "Bob Jones"
        shoeSize: 12
    }
    Boy { name: "Leo Hodges" }
    Boy { name: "Jack Smith" }
    Girl { name: "Anne Brown" }
}
```

<span id="declaring-the-birthdayparty-class"></span>
Declaring the BirthdayParty Class
---------------------------------

The only difference between this example and the last, is the addition of the `DefaultProperty` class info annotation.

``` cpp
class BirthdayParty : public QObject
{
    Q_OBJECT
    Q_PROPERTY(Person *host READ host WRITE setHost)
    Q_PROPERTY(QQmlListProperty<Person> guests READ guests)
    Q_CLASSINFO("DefaultProperty", "guests")
public:
    BirthdayParty(QObject *parent = 0);
    Person *host() const;
    void setHost(Person *);
    QQmlListProperty<Person> guests();
    int guestCount() const;
    Person *guest(int) const;
private:
    Person *m_host;
    QList<Person *> m_guests;
};
```

The default property specifies the property to assign to whenever an explicit property is not specified, in the case of the BirthdayParty type the guest property. It is purely a syntactic simplification, the behavior is identical to specifying the property by name, but it can add a more natural feel in many situations. The default property must be either an object or list property.

<span id="running-the-example"></span>
Running the Example
-------------------

The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.

Files:

-   referenceexamples/default/birthdayparty.cpp
-   referenceexamples/default/birthdayparty.h
-   referenceexamples/default/example.qml
-   referenceexamples/default/person.cpp
-   referenceexamples/default/person.h
-   referenceexamples/default/main.cpp
-   referenceexamples/default/default.pro
-   referenceexamples/default/default.qrc

