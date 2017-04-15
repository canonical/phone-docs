---
Title: QtLocation.location-cpp-qml
---
        
Interfaces between C++ and QML Code in Qt Positioning
=====================================================

<span class="subtitle"></span>
details
### Category - QPlaceCategory

<span id="category"></span>
The Category.category property is used to provide an interface between C++ and QML code. First a pointer to a Category object must be obtained from C++, then use the property() and setProperty() functions to get and set the `category` property. The following gets the QPlaceCategory representing this object from C++:

``` cpp
QPlaceCategory category = qmlObject->property("category").value<QPlaceCategory>();
```

The following sets the properties of this object based on a QPlaceCategory object from C++:

``` cpp
qmlObject->setProperty("category", QVariant::fromValue(category));
```

<span id="contactdetail-qdeclarativecontactdetail"></span>
### ContactDetail - QDeclarativeContactDetail

<span id="contact-detail"></span>
The ContactDetail.contactDetail property is used to provide an interface between C++ and QML code. First a pointer to a ContactDetail object must be obtained from C++, then use the property() and setProperty() functions to get and set the `contactDetail` property. The following gets the QPlaceContactDetail representing this object from C++:

``` cpp
QPlaceContactDetail contactDetail = qmlObject->property("contactDetail").value<QPlaceContactDetail>();
```

The following sets the properties of this object based on a QPlaceContactDetail object from C++:

``` cpp
qmlObject->setProperty("contactDetail", QVariant::fromValue(contactDetail));
```

<span id="place-qplace"></span>
### Place - QPlace

<span id="place"></span>
The Place.place property is used to provide an interface between C++ and QML code. First a pointer to a Place object must be obtained from C++, then use the property() and setProperty() functions to get and set the `place` property. The following gets the QPlace representing this object from C++:

``` cpp
QPlace place = qmlObject->property("place").value<QPlace>();
```

The following sets the properties of this object based on a QPlace object from C++:

``` cpp
qmlObject->setProperty("place", QVariant::fromValue(place));
```

<span id="placeattribute-qplaceattribute"></span>
### PlaceAttribute - QPlaceAttribute

<span id="placeattribute"></span>
The PlaceAttribute.attribute property is used to provide an interface between C++ and QML code. First a pointer to a PlaceAttribute object must be obtained from C++, then use the property() and setProperty() functions to get and set the `attribute` property. The following gets the QPlaceAttribute representing this object from C++:

``` cpp
QPlaceAttribute placeAttribute = qmlObject->property("attribute").value<QPlaceAttribute>();
```

The following sets the properties of this object based on a QPlaceAttribute object from C++:

``` cpp
qmlObject->setProperty("attribute", QVariant::fromValue(placeAttribute));
```

<span id="icon-qplaceicon"></span>
### Icon - QPlaceIcon

<span id="placeicon"></span>
The Icon.icon property is used to provide an interface between C++ and QML code. First a pointer to a Icon object must be obtained from C++, then use the property() and setProperty() functions to get and set the `icon` property. The following gets the QPlaceIcon representing this object from C++:

``` cpp
QPlaceIcon placeIcon = qmlObject->property("icon").value<QPlaceIcon>();
```

The following sets the properties of this object based on a QPlaceIcon object from C++:

``` cpp
qmlObject->setProperty("icon", QVariant::fromValue(placeIcon));
```

<span id="user-qplaceuser"></span>
### User - QPlaceUser

<span id="placeuser"></span>
The User.user property is used to provide an interface between C++ and QML code. First a pointer to a User object must be obtained from C++, then use the property() and setProperty() functions to get and set the `user` property. The following gets the QPlaceUser representing this object from C++:

``` cpp
QPlaceUser placeUser = qmlObject->property("user").value<QPlaceUser>();
```

The following sets the properties of this object based on a QPlaceUser object from C++:

``` cpp
qmlObject->setProperty("user", QVariant::fromValue(placeUser));
```

<span id="ratings-qplaceratings"></span>
### Ratings - QPlaceRatings

<span id="placeratings"></span>
The Ratings.ratings property is used to provide an interface between C++ and QML code. First a pointer to a Ratings object must be obtained from C++, then use the property() and setProperty() functions to get and set the `ratings` property. The following gets the QPlaceRating representing this object from C++:

``` cpp
QPlaceRatings placeRatings = qmlObject->property("ratings").value<QPlaceRatings>();
```

The following sets the properties of this object based on a QPlaceRatings object from C++:

``` cpp
qmlObject->setProperty("ratings", QVariant::fromValue(placeRatings));
```

<span id="supplier-qplacesupplier"></span>
### Supplier - QPlaceSupplier

<span id="placesupplier"></span>
The Supplier.supplier property is used to provide an interface between C++ and QML code. First a pointer to a Supplier object must be obtained from C++, then use the property() and setProperty() functions to get and set the `supplier` property. The following gets the QPlaceSupplier representing this object from C++:

``` cpp
QPlaceSupplier placeSupplier = qmlObject->property("supplier").value<QPlaceSupplier>();
```

The following sets the properties of this object based on a QPlaceSupplier object from C++:

``` cpp
qmlObject->setProperty("supplier", QVariant::fromValue(placeSupplier));
```

