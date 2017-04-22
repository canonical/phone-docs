---
Title: QtQml.qtqml-cppintegration-data
---

# QtQml.qtqml-cppintegration-data

<span class="subtitle"></span>
<!-- $$$qtqml-cppintegration-data.html-description -->
<p>When data values are exchanged between QML and C++, they are converted by the QML engine to have the correct data types as appropriate for use in QML or C++. This requires the exchanged data to be of a type that is recognizable by the engine.</p>
<p>The QML engine provides built-in support for a large number of Qt C++ data types. Additionally, custom C++ types may be registered with the QML type system to make them available to the engine.</p>
<p>This page discusses the data types supported by the QML engine and how they are converted between QML and C++.</p>
<h2 id="data-ownership">Data Ownership</h2>
<p>When data is transferred from C++ to QML, the ownership of the data always remains with C++. The exception to this rule is when a QObject is returned from an explicit C++ method call: in this case, the QML engine assumes ownership of the object, unless the ownership of the object has explicitly been set to remain with C++ by invoking QQmlEngine::setObjectOwnership() with QQmlEngine::CppOwnership specified.</p>
<p>Additionally, the QML engine respects the normal QObject parent ownership semantics of Qt C++ objects, and will not ever take ownership of a QObject instance which already has a parent.</p>
<h2 id="basic-qt-data-types">Basic Qt Data Types</h2>
<p>By default, QML recognizes the following Qt data types, which are automatically converted to a corresponding <a href="QtQml.qtqml-typesystem-basictypes.md">QML basic type</a> when passed from C++ to QML and vice-versa:</p>
<table class="generic">
<tr valign="top"><td >Qt Type</td><td >QML Basic Type</td></tr>
<tr valign="top"><td >bool</td><td >bool</td></tr>
<tr valign="top"><td >unsigned int, int</td><td >int</td></tr>
<tr valign="top"><td >double</td><td >double</td></tr>
<tr valign="top"><td >float, qreal</td><td >real</td></tr>
<tr valign="top"><td >QString</td><td >string</td></tr>
<tr valign="top"><td >QUrl</td><td >url</td></tr>
<tr valign="top"><td >QColor</td><td >color</td></tr>
<tr valign="top"><td >QFont</td><td >font</td></tr>
<tr valign="top"><td >QDate</td><td >date</td></tr>
<tr valign="top"><td >QPoint, QPointF</td><td >point</td></tr>
<tr valign="top"><td >QSize, QSizeF</td><td >size</td></tr>
<tr valign="top"><td >QRect, QRectF</td><td >rect</td></tr>
<tr valign="top"><td >QMatrix4x4</td><td >matrix4x4</td></tr>
<tr valign="top"><td >QQuaternion</td><td >quaternion</td></tr>
<tr valign="top"><td >QVector2D, QVector3D, QVector4D</td><td >vector2d, vector3d, vector4d</td></tr>
<tr valign="top"><td >Enums declared with Q_ENUMS()</td><td >enumeration</td></tr>
</table>
<p><b>Note: </b>Classes provided by the Qt GUI module, such as QColor, QFont, QQuaternion and QMatrix4x4, are only available from QML when the Qt Quick module is included.</p><p>As a convenience, many of these types can be specified in QML by string values, or by a related method provided by the QtQml::Qt object. For example, the Image::sourceSize property is of type size (which automatically translates to the QSize type) and can be specified by a string value formatted as &quot;width<code>x</code>height&quot;, or by the Qt.size() function:</p>
<pre class="qml"><span class="type">Item</span> {
<span class="type">Image</span> { <span class="name">sourceSize</span>: <span class="string">&quot;100x200&quot;</span> }
<span class="type">Image</span> { <span class="name">sourceSize</span>: <span class="name">Qt</span>.<span class="name">size</span>(<span class="number">100</span>, <span class="number">200</span>) }
}</pre>
<p>See documentation for each individual type under <a href="QtQml.qtqml-typesystem-basictypes.md">QML Basic Types</a> for more information.</p>
<h2 id="qobject-derived-types">QObject-derived Types</h2>
<p>Any QObject-derived class may be used as a type for the exchange of data between QML and C++, providing the class has been registered with the QML type system.</p>
<p>The engine allows the registration of both instantiable and non-instantiable types. Once a class is registered as a QML type, it can be used as a data type for exchanging data between QML and C++. See <a href="QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system">Registering C++ types with the QML type system</a> for further details on type registration.</p>
<h2 id="conversion-between-qt-and-javascript-types">Conversion Between Qt and JavaScript Types</h2>
<p>The QML engine has built-in support for converting a number of Qt types to related JavaScript types, and vice-versa, when transferring data between QML and C++. This makes it possible to use these types and receive them in C++ or JavaScript without needing to implement custom types that provide access to the data values and their attributes.</p>
<p>(Note that the JavaScript environment in QML modifies native JavaScript object prototypes, including those of <code>String</code>, <code>Date</code> and <code>Number</code>, to provide additional features. See the <a href="QtQml.qtqml-javascript-hostenvironment.md">JavaScript Host Environment</a> for further details.)</p>
<h3 >QVariantList and QVariantMap to JavaScript Array and Object</h3>
<p>The QML engine provides automatic type conversion between QVariantList and JavaScript arrays, and between QVariantMap and JavaScript objects.</p>
<p>For example, the function defined in QML below left expects two arguments, an array and an object, and prints their contents using the standard JavaScript syntax for array and object item access. The C++ code below right calls this function, passing a QVariantList and a QVariantMap, which are automatically converted to JavaScript array and object values, repectively:</p>
<table class="generic">
<thead><tr class="qt-style"></tr></thead>
<tr valign="top"><td ><pre class="qml"><span class="comment">// MyItem.qml</span>
<span class="type">Item</span> {
<span class="keyword">function</span> <span class="name">readValues</span>(<span class="name">anArray</span>, anObject) {
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span>=<span class="number">0</span>; <span class="name">i</span><span class="operator">&lt;</span><span class="name">anArray</span>.<span class="name">length</span>; i++)
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Array item:&quot;</span>, <span class="name">anArray</span>[<span class="name">i</span>])
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">prop</span> in <span class="name">anObject</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Object item:&quot;</span>, <span class="name">prop</span>, <span class="string">&quot;=&quot;</span>, <span class="name">anObject</span>[<span class="name">prop</span>])
}
}
}</pre>
</td><td ><pre class="cpp"><span class="comment">// C++</span>
<span class="type">QQuickView</span> view(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
<span class="type">QVariantList</span> list;
list <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="number">10</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="type">QColor</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">::</span>green) <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;bottles&quot;</span>;
<span class="type">QVariantMap</span> map;
map<span class="operator">.</span>insert(<span class="string">&quot;language&quot;</span><span class="operator">,</span> <span class="string">&quot;QML&quot;</span>);
map<span class="operator">.</span>insert(<span class="string">&quot;released&quot;</span><span class="operator">,</span> <span class="type">QDate</span>(<span class="number">2010</span><span class="operator">,</span> <span class="number">9</span><span class="operator">,</span> <span class="number">21</span>));
<span class="type">QMetaObject</span><span class="operator">::</span>invokeMethod(view<span class="operator">.</span>rootObject()<span class="operator">,</span> <span class="string">&quot;readValues&quot;</span><span class="operator">,</span>
Q_ARG(<span class="type">QVariant</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(list))<span class="operator">,</span>
Q_ARG(<span class="type">QVariant</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(map)));</pre>
</td></tr>
</table>
<p>This produces output like:</p>
<pre class="cpp">Array item: <span class="number">10</span>
Array item: <span class="preprocessor">#00ff00</span>
Array item: bottles
Object item: language <span class="operator">=</span> QML
Object item: released <span class="operator">=</span> Tue Sep <span class="number">21</span> <span class="number">2010</span> <span class="number">00</span>:<span class="number">00</span>:<span class="number">00</span> GMT<span class="operator">+</span><span class="number">1000</span> (EST)</pre>
<p>Similarly, if a C++ type uses a QVariantList or QVariantMap type for a property type or method parameter, the value can be created as a JavaScript array or object in QML, and is automatically converted to a QVariantList or QVariantMap when it is passed to C++.</p>
<h3 >QDateTime to JavaScript Date</h3>
<p>The QML engine provides automatic type conversion between QDateTime values and JavaScript <code>Date</code> objects.</p>
<p>For example, the function defined in QML below left expects a JavaScript <code>Date</code> object, and also returns a new <code>Date</code> object with the current date and time. The C++ code below right calls this function, passing a QDateTime value that is automatically converted by the engine into a <code>Date</code> object when it is passed to the <code>readDate()</code> function. In turn, the readDate() function returns a <code>Date</code> object that is automatically converted into a QDateTime value when it is received in C++:</p>
<table class="generic">
<thead><tr class="qt-style"></tr></thead>
<tr valign="top"><td ><pre class="qml"><span class="comment">// MyItem.qml</span>
<span class="type">Item</span> {
<span class="keyword">function</span> <span class="name">readDate</span>(<span class="name">dt</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The given date is:&quot;</span>, <span class="name">dt</span>.<span class="name">toUTCString</span>());
<span class="keyword">return</span> new <span class="name">Date</span>();
}
}</pre>
</td><td ><pre class="cpp"><span class="comment">// C++</span>
<span class="type">QQuickView</span> view(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
<span class="type">QDateTime</span> dateTime <span class="operator">=</span> <span class="type">QDateTime</span><span class="operator">::</span>currentDateTime();
<span class="type">QDateTime</span> retValue;
<span class="type">QMetaObject</span><span class="operator">::</span>invokeMethod(view<span class="operator">.</span>rootObject()<span class="operator">,</span> <span class="string">&quot;readDate&quot;</span><span class="operator">,</span>
Q_RETURN_ARG(<span class="type">QVariant</span><span class="operator">,</span> retValue)<span class="operator">,</span>
Q_ARG(<span class="type">QVariant</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(dateTime)));
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Value returned from readDate():&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> retValue;</pre>
</td></tr>
</table>
<p>Similarly, if a C++ type uses a QDateTime for a property type or method parameter, the value can be created as a JavaScript <code>Date</code> object in QML, and is automatically converted to a QDateTime value when it is passed to C++.</p>
<h3 >Sequence Type to JavaScript Array</h3>
<p>Certain C++ sequence types are supported transparently in QML as JavaScript <code>Array</code> types.</p>
<p>In particular, QML currently supports:</p>
<ul>
<li><code>QList&lt;int&gt;</code></li>
<li><code>QList&lt;qreal&gt;</code></li>
<li><code>QList&lt;bool&gt;</code></li>
<li><code>QList&lt;QString&gt;</code> and <code>QStringList</code></li>
<li><code>QList&lt;QUrl&gt;</code></li>
</ul>
<p>These sequence types are implemented directly in terms of the underlying C++ sequence. There are two ways in which such sequences can be exposed to QML: as a Q_PROPERTY of the given sequence type; or as the return type of a Q_INVOKABLE method. There are some differences in the way these are implemented, which are important to note.</p>
<p>If the sequence is exposed as a Q_PROPERTY, accessing any value in the sequence by index will cause the sequence data to be read from the QObject's property, then a read to occur. Similarly, modifying any value in the sequence will cause the sequence data to be read, and then the modification will be performed and the modified sequence will be written back to the QObject's property.</p>
<p>If the sequence is returned from a Q_INVOKABLE function, access and mutation is much cheaper, as no QObject property read or write occurs; instead, the C++ sequence data is accessed and modified directly.</p>
<p>Other sequence types are not supported transparently, and instead an instance of any other sequence type will be passed between QML and C++ as an opaque QVariantList.</p>
<p><b>Important Note:</b> There are some minor differences between the semantics of such sequence Array types and default JavaScript Array types which result from the use of a C++ storage type in the implementation. In particular, deleting an element from an Array will result in a default-constructed value replacing that element, rather than an Undefined value. Similarly, setting the length property of the Array to a value larger than its current value will result in the Array being padded out to the specified length with default-constructed elements rather than Undefined elements. Finally, the Qt container classes support signed (rather than unsigned) integer indexes; thus, attempting to access any index greater than INT_MAX will fail.</p>
<p>The default-constructed values for each sequence type are as follows:</p>
<table class="generic">
<tr valign="top"><td >QList&lt;int&gt;</td><td >integer value 0</td></tr>
<tr valign="top"><td >QList&lt;qreal&gt;</td><td >real value 0.0</td></tr>
<tr valign="top"><td >QList&lt;bool&gt;</td><td >boolean value <code>false</code></td></tr>
<tr valign="top"><td >QList&lt;QString&gt; and QStringList</td><td >empty QString</td></tr>
<tr valign="top"><td >QList&lt;QUrl&gt;</td><td >empty QUrl</td></tr>
</table>
<p>If you wish to remove elements from a sequence rather than simply replace them with default constructed values, do not use the indexed delete operator (&quot;delete sequence[i]&quot;) but instead use the <code>splice</code> function (&quot;sequence.splice(startIndex, deleteCount)&quot;).</p>
<h2 id="enumeration-types">Enumeration Types</h2>
<p>To use a custom enumeration as a data type, its class must be registered and the enumeration must also be declared with Q_ENUMS() to register it with Qt's meta object system. For example, the <code>Message</code> class below has a <code>Status</code> enum:</p>
<pre class="cpp"> <span class="keyword">class</span> Message : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_ENUMS(Status)
Q_PROPERTY(Status status READ status NOTIFY statusChanged)
<span class="keyword">public</span>:
<span class="keyword">enum</span> Status {
Ready<span class="operator">,</span>
Loading<span class="operator">,</span>
Error
};
Status status() <span class="keyword">const</span>;
<span class="keyword">signals</span>:
<span class="type">void</span> statusChanged();
};</pre>
<p>Providing the <code>Message</code> class has been <a href="QtQml.qtqml-cppintegration-definetypes.md#registering-c-types-with-the-qml-type-system">registered</a> with the QML type system, its <code>Status</code> enum can be used from QML:</p>
<pre class="qml"><span class="type">Message</span> {
<span class="name">onStatusChanged</span>: {
<span class="keyword">if</span> (<span class="name">status</span> <span class="operator">==</span> <span class="name">Message</span>.<span class="name">Ready</span>)
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Message is loaded!&quot;</span>)
}
}</pre>
<p><b>Note: </b>The names of enum values must begin with a capital letter in order to be accessible from QML.</p>
<h3 >Enumeration Types as Signal and Method Parameters</h3>
<p>C++ signals and methods with enumeration-type parameters can be used from QML provided that the enumeration and the signal or method are both declared within the same class, or that the enumeration value is one of those declared in the <a href="QtQml.Qt.md">Qt Namespace</a>.</p>
<p>Additionally, if a C++ signal with an enum parameter should be connectable to a QML function using the <a href="QtQml.qtqml-syntax-signals.md#connecting-signals-to-methods-and-signals">connect()</a> function, the enum type must be registered using qRegisterMetaType().</p>
<p>For QML signals, enum values may be passed as signal parameters using the <code>int</code> type:</p>
<pre class="qml"> <span class="type">Message</span> {
signal <span class="type">someOtherSignal</span>(int statusValue)
<span class="name">Component</span>.onCompleted: {
<span class="name">someOtherSignal</span>(<span class="name">Message</span>.<span class="name">Loading</span>)
}
}</pre>
<!-- @@@qtqml-cppintegration-data.html -->
