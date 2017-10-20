---
Title: QtLocation.location-cpp-qml
---

# QtLocation.location-cpp-qml

<span class="subtitle"></span>
<!-- $$$location-cpp-qml.html-description -->
<h3 >Category - QPlaceCategory</h3>
<p>The Category.category property is used to provide an interface between C++ and QML code. First a pointer to a Category object must be obtained from C++, then use the property() and setProperty() functions to get and set the <code>category</code> property. The following gets the QPlaceCategory representing this object from C++:</p>
<pre class="cpp"><span class="type">QPlaceCategory</span> category <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;category&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceCategory</span><span class="operator">&gt;</span>();</pre>
<p>The following sets the properties of this object based on a QPlaceCategory object from C++:</p>
<pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;category&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(category));</pre>
<h3 >ContactDetail - QDeclarativeContactDetail</h3>
<p>The ContactDetail.contactDetail property is used to provide an interface between C++ and QML code. First a pointer to a ContactDetail object must be obtained from C++, then use the property() and setProperty() functions to get and set the <code>contactDetail</code> property. The following gets the QPlaceContactDetail representing this object from C++:</p>
<pre class="cpp"><span class="type">QPlaceContactDetail</span> contactDetail <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;contactDetail&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceContactDetail</span><span class="operator">&gt;</span>();</pre>
<p>The following sets the properties of this object based on a QPlaceContactDetail object from C++:</p>
<pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;contactDetail&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(contactDetail));</pre>
<h3 >Place - QPlace</h3>
<p>The Place.place property is used to provide an interface between C++ and QML code. First a pointer to a Place object must be obtained from C++, then use the property() and setProperty() functions to get and set the <code>place</code> property. The following gets the QPlace representing this object from C++:</p>
<pre class="cpp"><span class="type">QPlace</span> place <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;place&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlace</span><span class="operator">&gt;</span>();</pre>
<p>The following sets the properties of this object based on a QPlace object from C++:</p>
<pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;place&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(place));</pre>
<h3 >PlaceAttribute - QPlaceAttribute</h3>
<p>The PlaceAttribute.attribute property is used to provide an interface between C++ and QML code. First a pointer to a PlaceAttribute object must be obtained from C++, then use the property() and setProperty() functions to get and set the <code>attribute</code> property. The following gets the QPlaceAttribute representing this object from C++:</p>
<pre class="cpp"><span class="type">QPlaceAttribute</span> placeAttribute <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;attribute&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceAttribute</span><span class="operator">&gt;</span>();</pre>
<p>The following sets the properties of this object based on a QPlaceAttribute object from C++:</p>
<pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;attribute&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeAttribute));</pre>
<h3 >Icon - QPlaceIcon</h3>
<p>The Icon.icon property is used to provide an interface between C++ and QML code. First a pointer to a Icon object must be obtained from C++, then use the property() and setProperty() functions to get and set the <code>icon</code> property. The following gets the QPlaceIcon representing this object from C++:</p>
<pre class="cpp"><span class="type">QPlaceIcon</span> placeIcon <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;icon&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceIcon</span><span class="operator">&gt;</span>();</pre>
<p>The following sets the properties of this object based on a QPlaceIcon object from C++:</p>
<pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;icon&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeIcon));</pre>
<h3 >User - QPlaceUser</h3>
<p>The User.user property is used to provide an interface between C++ and QML code. First a pointer to a User object must be obtained from C++, then use the property() and setProperty() functions to get and set the <code>user</code> property. The following gets the QPlaceUser representing this object from C++:</p>
<pre class="cpp"><span class="type">QPlaceUser</span> placeUser <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;user&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceUser</span><span class="operator">&gt;</span>();</pre>
<p>The following sets the properties of this object based on a QPlaceUser object from C++:</p>
<pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;user&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeUser));</pre>
<h3 >Ratings - QPlaceRatings</h3>
<p>The Ratings.ratings property is used to provide an interface between C++ and QML code. First a pointer to a Ratings object must be obtained from C++, then use the property() and setProperty() functions to get and set the <code>ratings</code> property. The following gets the QPlaceRating representing this object from C++:</p>
<pre class="cpp"><span class="type">QPlaceRatings</span> placeRatings <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;ratings&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceRatings</span><span class="operator">&gt;</span>();</pre>
<p>The following sets the properties of this object based on a QPlaceRatings object from C++:</p>
<pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;ratings&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeRatings));</pre>
<h3 >Supplier - QPlaceSupplier</h3>
<p>The Supplier.supplier property is used to provide an interface between C++ and QML code. First a pointer to a Supplier object must be obtained from C++, then use the property() and setProperty() functions to get and set the <code>supplier</code> property. The following gets the QPlaceSupplier representing this object from C++:</p>
<pre class="cpp"><span class="type">QPlaceSupplier</span> placeSupplier <span class="operator">=</span> qmlObject<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;supplier&quot;</span>)<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QPlaceSupplier</span><span class="operator">&gt;</span>();</pre>
<p>The following sets the properties of this object based on a QPlaceSupplier object from C++:</p>
<pre class="cpp">qmlObject<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;supplier&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(placeSupplier));</pre>
<!-- @@@location-cpp-qml.html -->
