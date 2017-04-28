---
Title: QtQuick.qtquick-demos-photoviewer-example
---

# QtQuick.qtquick-demos-photoviewer-example

<span class="subtitle"></span>
<!-- $$$demos/photoviewer-description -->
<p class="centerAlign"><img src="../../../media/qtquick-demo-photoviewer-small.png" alt="" /></p><p><i>Photo Viewer</i> demonstrates the following <a href="QtQuick.qtquick-index.md">Qt Quick</a> features:</p>
<ul>
<li>Using custom types to create screens and screen controls.</li>
<li>Using Qt Quick Controls to create an application window.</li>
<li>Using the Package type with a DelegateModel to provide delegates with a shared context to multiple views.</li>
<li>Using XML list models to download Flickr feeds.</li>
<li>Using the <a href="QtQuick.Flipable.md">Flipable</a> type to create labels with different text on the front and back.</li>
<li>Using the <a href="QtQuick.PathView.md">PathView</a>, <a href="QtQuick.Path.md">Path</a>, <a href="QtQuick.PathAttribute.md">PathAttribute</a>, and <a href="QtQuick.PathLine.md">PathLine</a> types to lay out photos on a path.</li>
<li>Providing feedback to users while data is loading.</li>
<li>Localizing applications.</li>
</ul>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="using-custom-types">Using Custom Types</h2>
<p>In the Photo Viewer app, we use the following custom types that are each defined in a separate .qml file:</p>
<ul>
<li><code>AlbumDelegate.qml</code></li>
<li><code>BusyIndicator.qml</code></li>
<li><code>Button.qml</code></li>
<li><code>EditableButton.qml</code></li>
<li><code>PhotoDelegate.qml</code></li>
<li><code>ProgressBar.qml</code></li>
<li><code>RssModel.qml</code></li>
<li><code>Tag.qml</code></li>
</ul>
<p>To use the custom types, we add an import statement to the main QML file, main.qml, that imports the folder called <code>PhotoViewerCore</code> where the types are located:</p>
<pre class="qml">import &quot;PhotoViewerCore&quot;</pre>
<h2 id="creating-the-main-window">Creating the Main Window</h2>
<p>In main.qml, we use the ApplicationWindow Qt Quick Control to create the app main window:</p>
<pre class="qml"><span class="type">ApplicationWindow</span> {
<span class="name">id</span>: <span class="name">mainWindow</span>
<span class="name">visible</span>: <span class="number">true</span></pre>
<p>We use a <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a> type with ListElement types to display photo albums:</p>
<pre class="qml">    <span class="type">ListModel</span> {
<span class="name">id</span>: <span class="name">photosModel</span>
<span class="type">ListElement</span> { <span class="name">tag</span>: <span class="string">&quot;Flowers&quot;</span> }
<span class="type">ListElement</span> { <span class="name">tag</span>: <span class="string">&quot;Wildlife&quot;</span> }
<span class="type">ListElement</span> { <span class="name">tag</span>: <span class="string">&quot;Prague&quot;</span> }
}</pre>
<p>List elements are defined like other QML types except that they contain a collection of <i>role</i> definitions instead of properties. Roles both define how the data is accessed and include the data itself. For each list element, we use the <code>tag</code> role to specify the photos to download.</p>
<p>A DelegateModel type is used together with the Package type to provide delegates to multiple views. The <code>model</code> property holds the model providing data for the delegate model and the <code>delegate</code> property specifies the template defining each item instantiated by a view:</p>
<pre class="qml">    <span class="type">DelegateModel</span> { <span class="name">id</span>: <span class="name">albumVisualModel</span>; <span class="name">model</span>: <span class="name">photosModel</span>; <span class="name">delegate</span>: <span class="name">AlbumDelegate</span> {} }</pre>
<p>We use a <a href="QtQuick.draganddrop/#gridview">GridView</a> type to lay out the albums as a grid:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.GridView.md">GridView</a></span> {
<span class="name">id</span>: <span class="name">albumView</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>; <span class="name">cellWidth</span>: <span class="number">210</span>; <span class="name">cellHeight</span>: <span class="number">220</span>
<span class="name">model</span>: <span class="name">albumVisualModel</span>.<span class="name">parts</span>.<span class="name">album</span>; <span class="name">visible</span>: <span class="name">albumsShade</span>.<span class="name">opacity</span> <span class="operator">!=</span> <span class="number">1.0</span>
}</pre>
<p>The <code>model</code> property references the package name <code>album</code> that we specify in AlbumDelegate.qml. We use the Package type to allow the photos to move between different views. The Package contains the named items <code>browser</code>, <code>fullscreen</code>, and <code>album</code>:</p>
<pre class="qml">    <span class="type">Package</span> {
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">Package</span>.name: <span class="string">'browser'</span>
<span class="type"><a href="QtQuick.GridView.md">GridView</a></span> {
<span class="name">id</span>: <span class="name">photosGridView</span>; <span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">grid</span>; <span class="name">width</span>: <span class="name">mainWindow</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">mainWindow</span>.<span class="name">height</span> <span class="operator">-</span> <span class="number">21</span>
<span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">21</span>; <span class="name">cellWidth</span>: <span class="number">160</span>; <span class="name">cellHeight</span>: <span class="number">153</span>; <span class="name">interactive</span>: <span class="number">false</span>
<span class="name">onCurrentIndexChanged</span>: <span class="name">photosListView</span>.<span class="name">positionViewAtIndex</span>(<span class="name">currentIndex</span>, <span class="name">ListView</span>.<span class="name">Contain</span>)
}
}
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">Package</span>.name: <span class="string">'fullscreen'</span>
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">photosListView</span>; <span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">list</span>; <span class="name">orientation</span>: <span class="name">Qt</span>.<span class="name">Horizontal</span>
<span class="name">width</span>: <span class="name">mainWindow</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">mainWindow</span>.<span class="name">height</span>; <span class="name">interactive</span>: <span class="number">false</span>
<span class="name">onCurrentIndexChanged</span>: <span class="name">photosGridView</span>.<span class="name">positionViewAtIndex</span>(<span class="name">currentIndex</span>, <span class="name">GridView</span>.<span class="name">Contain</span>)
<span class="name">highlightRangeMode</span>: <span class="name">ListView</span>.<span class="name">StrictlyEnforceRange</span>; <span class="name">snapMode</span>: <span class="name">ListView</span>.<span class="name">SnapOneItem</span>
}
}
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">Package</span>.name: <span class="string">'album'</span>
<span class="name">id</span>: <span class="name">albumWrapper</span>; <span class="name">width</span>: <span class="number">210</span>; <span class="name">height</span>: <span class="number">220</span></pre>
<p>The named items are used as the delegates by the views that reference the special DelegateModel::parts property to select the model that provides the chosen delegate.</p>
<p>We use a <a href="QtQuick.ListView.md">ListView</a> type to lay out albums in other views:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">model</span>: <span class="name">albumVisualModel</span>.<span class="name">parts</span>.<span class="name">browser</span>; <span class="name">interactive</span>: <span class="number">false</span> }
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">model</span>: <span class="name">albumVisualModel</span>.<span class="name">parts</span>.<span class="name">fullscreen</span>; <span class="name">interactive</span>: <span class="number">false</span> }</pre>
<h2 id="displaying-photos">Displaying Photos</h2>
<p>We use the PhotoDelegate custom type that is specified in PhotoDelegate.qml to display photos. We use a Package type to lay out the photos either in a stack, list, or a grid:</p>
<pre class="qml"><span class="type">Package</span> {
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">stackItem</span>; <span class="name">Package</span>.name: <span class="string">'stack'</span>; <span class="name">width</span>: <span class="number">160</span>; <span class="name">height</span>: <span class="number">153</span>; <span class="name">z</span>: <span class="name">stackItem</span>.<span class="name">PathView</span>.<span class="name">z</span> }
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">listItem</span>; <span class="name">Package</span>.name: <span class="string">'list'</span>; <span class="name">width</span>: <span class="name">mainWindow</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">40</span>; <span class="name">height</span>: <span class="number">153</span> }
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">gridItem</span>; <span class="name">Package</span>.name: <span class="string">'grid'</span>; <span class="name">width</span>: <span class="number">160</span>; <span class="name">height</span>: <span class="number">153</span> }</pre>
<p>The photos are rotated at random angles by using the <code>Math.random()</code> JavaScript method:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="number">160</span>; <span class="name">height</span>: <span class="number">153</span>
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">photoWrapper</span>
property <span class="type">double</span> <span class="name">randomAngle</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> (<span class="number">2</span> <span class="operator">*</span> <span class="number">6</span> <span class="operator">+</span> <span class="number">1</span>) <span class="operator">-</span> <span class="number">6</span>
property <span class="type">double</span> <span class="name">randomAngle2</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> (<span class="number">2</span> <span class="operator">*</span> <span class="number">6</span> <span class="operator">+</span> <span class="number">1</span>) <span class="operator">-</span> <span class="number">6</span>
<span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">width</span>: <span class="number">140</span>; <span class="name">height</span>: <span class="number">133</span>
<span class="name">z</span>: <span class="name">stackItem</span>.<span class="name">PathView</span>.<span class="name">z</span>; <span class="name">rotation</span>: <span class="name">photoWrapper</span>.<span class="name">randomAngle</span></pre>
<p>We use a <a href="QtQuick.imageelements/#borderimage">BorderImage</a> type to create borders for the images:</p>
<pre class="qml">            <span class="type"><a href="QtQuick.BorderImage.md">BorderImage</a></span> {
<span class="type">anchors</span> {
<span class="name">fill</span>: <span class="name">originalImage</span>.<span class="name">status</span> <span class="operator">==</span> <span class="name">Image</span>.<span class="name">Ready</span> ? <span class="name">border</span> : <span class="name">placeHolder</span>
<span class="name">leftMargin</span>: -<span class="number">6</span>; <span class="name">topMargin</span>: -<span class="number">6</span>; <span class="name">rightMargin</span>: -<span class="number">8</span>; <span class="name">bottomMargin</span>: -<span class="number">8</span>
}
<span class="name">source</span>: <span class="string">'images/box-shadow.png'</span>
<span class="name">border</span>.left: <span class="number">10</span>; <span class="name">border</span>.top: <span class="number">10</span>; <span class="name">border</span>.right: <span class="number">10</span>; <span class="name">border</span>.bottom: <span class="number">10</span>
}</pre>
<h2 id="downloading-flickr-feeds">Downloading Flickr Feeds</h2>
<p>In AlbumDelegate.qml, we use the DelegateModel to provide the PhotoDelegate delegate to the RssModel model:</p>
<pre class="qml">            <span class="type">DelegateModel</span> {
<span class="name">id</span>: <span class="name">visualModel</span>; <span class="name">delegate</span>: <span class="name">PhotoDelegate</span> { }
<span class="name">model</span>: <span class="name">RssModel</span> { <span class="name">id</span>: <span class="name">rssModel</span>; <span class="name">tags</span>: <span class="name">tag</span> }
}</pre>
<p>In RssModel.qml, we use an <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> type as a data source for Package objects to download photos from the selected feeds:</p>
<pre class="qml">import QtQuick.XmlListModel 2.0
<span class="type"><a href="QtQuick.XmlListModel.XmlListModel.md">XmlListModel</a></span> {
property <span class="type">string</span> <span class="name">tags</span> : <span class="string">&quot;&quot;</span>
<span class="keyword">function</span> <span class="name">encodeTags</span>(<span class="name">x</span>) { <span class="keyword">return</span> <span class="name">encodeURIComponent</span>(<span class="name">x</span>.<span class="name">replace</span>(<span class="string">' '</span>,<span class="string">','</span>)); }</pre>
<p>We use the <code>tags</code> custom property to specify which photos to download. The <code>encodeTags</code> custom function uses the <code>encodeURIComponent</code> JavaScript method to ensure that the requests to the server are correctly formatted.</p>
<p>We use the <code>source</code> property to fetch photos that have the specified tags attached from public Flickr feeds:</p>
<pre class="qml">    <span class="name">source</span>: <span class="string">&quot;http://api.flickr.com/services/feeds/photos_public.gne?&quot;</span><span class="operator">+</span>(<span class="name">tags</span> ? <span class="string">&quot;tags=&quot;</span><span class="operator">+</span><span class="name">encodeTags</span>(<span class="name">tags</span>)<span class="operator">+</span><span class="string">&quot;&amp;&quot;</span> : <span class="string">&quot;&quot;</span>)
<span class="name">query</span>: <span class="string">&quot;/feed/entry&quot;</span>
<span class="name">namespaceDeclarations</span>: <span class="string">&quot;declare default element namespace 'http://www.w3.org/2005/Atom';&quot;</span></pre>
<p>The <code>query</code> property specifies that the <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> generates a model item for each feed entry.</p>
<p>The <code>namespaceDeclarations</code> property specifies that the requested document uses the namespace <code>http://www.w3.org/2005/Atom</code>, which is declared as the default namespace.</p>
<p>We use the <a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a> type to specify the model item attributes. Each model item has the <code>title</code>, <code>content</code>, and <code>hq</code> attributes that match the values of the corresponding feed entry:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;title&quot;</span>; <span class="name">query</span>: <span class="string">&quot;title/string()&quot;</span> }
<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;content&quot;</span>; <span class="name">query</span>: <span class="string">&quot;content/string()&quot;</span> }
<span class="type"><a href="QtQuick.XmlListModel.XmlRole.md">XmlRole</a></span> { <span class="name">name</span>: <span class="string">&quot;hq&quot;</span>; <span class="name">query</span>: <span class="string">&quot;link[@rel='enclosure']/@href/string()&quot;</span> }</pre>
<h2 id="creating-flipable-labels">Creating Flipable Labels</h2>
<p>When users select the <b>Edit</b> button, the album labels are flipped from their front side to their back side and the text on them changes from album name to <b>Remove</b>.</p>
<p>In AlbumDelegate.qml, we use the Tag custom type to specify the text to display on the front and back sides of album labels:</p>
<pre class="qml">            <span class="type">Tag</span> {
<span class="type">anchors</span> { <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>; <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">bottomMargin</span>: <span class="number">10</span> }
<span class="name">frontLabel</span>: <span class="name">tag</span>; <span class="name">backLabel</span>: <span class="name">qsTr</span>(<span class="string">&quot;Remove&quot;</span>); <span class="name">flipped</span>: <span class="name">mainWindow</span>.<span class="name">editMode</span>
<span class="name">onTagChanged</span>: <span class="name">rssModel</span>.<span class="name">tags</span> <span class="operator">=</span> <span class="name">tag</span>
<span class="name">onBackClicked</span>: <span class="keyword">if</span> (<span class="name">mainWindow</span>.<span class="name">editMode</span>) <span class="name">photosModel</span>.<span class="name">remove</span>(<span class="name">index</span>);
}</pre>
<p>The <code>onTagChanged</code> signal handler is used to change the tag based on which the model is populated. The <code>onBackClicked</code> signal handler is used to remove the album.</p>
<p>In Tag.qml, we use a <a href="QtQuick.Flipable.md">Flipable</a> type with custom properties and signals to create the labels:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Flipable.md">Flipable</a></span> {
<span class="name">id</span>: <span class="name">flipable</span>
property <span class="type">alias</span> <span class="name">frontLabel</span>: <span class="name">frontButton</span>.<span class="name">label</span>
property <span class="type">alias</span> <span class="name">backLabel</span>: <span class="name">backButton</span>.<span class="name">label</span>
property <span class="type">int</span> <span class="name">angle</span>: <span class="number">0</span>
property <span class="type">int</span> <span class="name">randomAngle</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> (<span class="number">2</span> <span class="operator">*</span> <span class="number">6</span> <span class="operator">+</span> <span class="number">1</span>) <span class="operator">-</span> <span class="number">6</span>
property <span class="type">bool</span> <span class="name">flipped</span>: <span class="number">false</span>
signal <span class="type">frontClicked</span>
signal <span class="type">backClicked</span>
signal <span class="type">tagChanged</span>(string tag)</pre>
<p>The <code>front</code> property holds the EditableButton custom type that enables users to edit the label text:</p>
<pre class="qml">    <span class="name">front</span>: <span class="name">EditableButton</span> {
<span class="name">id</span>: <span class="name">frontButton</span>; <span class="name">rotation</span>: <span class="name">flipable</span>.<span class="name">randomAngle</span>
<span class="type">anchors</span> { <span class="name">centerIn</span>: <span class="name">parent</span>; <span class="name">verticalCenterOffset</span>: -<span class="number">20</span> }
<span class="name">onClicked</span>: <span class="name">flipable</span>.<span class="name">frontClicked</span>()
<span class="name">onLabelChanged</span>: <span class="name">flipable</span>.<span class="name">tagChanged</span>(<span class="name">label</span>)
}</pre>
<p>The <code>back</code> property holds the <code>Button</code> custom type that is used to remove the album:</p>
<pre class="qml">    <span class="name">back</span>: <span class="name">Button</span> {
<span class="name">id</span>: <span class="name">backButton</span>; <span class="name">tint</span>: <span class="string">&quot;red&quot;</span>; <span class="name">rotation</span>: <span class="name">flipable</span>.<span class="name">randomAngle</span>
<span class="type">anchors</span> { <span class="name">centerIn</span>: <span class="name">parent</span>; <span class="name">verticalCenterOffset</span>: -<span class="number">20</span> }
<span class="name">onClicked</span>: <span class="name">flipable</span>.<span class="name">backClicked</span>()
}</pre>
<h2 id="laying-out-photos-on-a-path">Laying out Photos on a Path</h2>
<p>In AlbumDelegate.qml, we use a <a href="QtQuick.PathView.md">PathView</a> type to lay out the photos provided by the <code>visualModel.parts.stack</code> model on a path that has the form of a stack:</p>
<pre class="qml">            <span class="type"><a href="QtQuick.PathView.md">PathView</a></span> {
<span class="name">id</span>: <span class="name">photosPathView</span>; <span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">stack</span>; <span class="name">pathItemCount</span>: <span class="number">5</span>
<span class="name">visible</span>: !<span class="name">busyIndicator</span>.<span class="name">visible</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>; <span class="name">anchors</span>.verticalCenterOffset: -<span class="number">30</span>
<span class="name">path</span>: <span class="name">Path</span> {
<span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">'z'</span>; <span class="name">value</span>: <span class="number">9999.0</span> }
<span class="type"><a href="QtQuick.PathLine.md">PathLine</a></span> { <span class="name">x</span>: <span class="number">1</span>; <span class="name">y</span>: <span class="number">1</span> }
<span class="type"><a href="QtQuick.PathAttribute.md">PathAttribute</a></span> { <span class="name">name</span>: <span class="string">'z'</span>; <span class="name">value</span>: <span class="number">0.0</span> }
}
}</pre>
<p>The <code>path</code> property holds the <a href="QtQuick.Path.md">Path</a> type that defines the path used by the <a href="QtQuick.PathView.md">PathView</a>. The <a href="QtQuick.PathAttribute.md">PathAttribute</a> types are used to set a range of <code>0</code> to <code>9999</code> for the <code>z</code> attribute. This way, the path creates a stack of album photos. Because each PhotoDelegate is slightly rotated at a random angle, this results in a realistic-looking stack of photos.</p>
<h2 id="providing-feedback-to-users">Providing Feedback to Users</h2>
<p>We use a busy indicator and a progress bar to indicate activity while Flickr feeds and photos are being loaded.</p>
<p>In AlbumDelegate.qml, we use the <code>BusyIndicator</code> custom type and the <code>on</code> custom property to display a rotating image while the Flickr feed is being loaded:</p>
<pre class="qml">            <span class="type">BusyIndicator</span> {
<span class="name">id</span>: <span class="name">busyIndicator</span>
<span class="type">anchors</span> { <span class="name">centerIn</span>: <span class="name">parent</span>; <span class="name">verticalCenterOffset</span>: -<span class="number">20</span> }
<span class="name">on</span>: <span class="name">rssModel</span>.<span class="name">status</span> <span class="operator">!=</span> <span class="name">XmlListModel</span>.<span class="name">Ready</span>
}</pre>
<p>In PhotoDelegate.qml, we use them to indicate activity while a photo is being loaded:</p>
<pre class="qml">            <span class="type">BusyIndicator</span> { <span class="name">anchors</span>.centerIn: <span class="name">parent</span>; <span class="name">on</span>: <span class="name">originalImage</span>.<span class="name">status</span> <span class="operator">!=</span> <span class="name">Image</span>.<span class="name">Ready</span> }</pre>
<p>We define the <code>BusyIndicator</code> type in <code>BusyIndicator.qml</code>. We use an <a href="QtQuick.imageelements/#image">Image</a> type to display an image and apply a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> to its <code>rotation</code> property to rotate the image in an infinite loop:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">container</span>
property <span class="type">bool</span> <span class="name">on</span>: <span class="number">false</span>
<span class="name">source</span>: <span class="string">&quot;images/busy.png&quot;</span>; <span class="name">visible</span>: <span class="name">container</span>.<span class="name">on</span>
NumberAnimation on <span class="name">rotation</span> { <span class="name">running</span>: <span class="name">container</span>.<span class="name">on</span>; <span class="name">from</span>: <span class="number">0</span>; <span class="name">to</span>: <span class="number">360</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>; <span class="name">duration</span>: <span class="number">1200</span> }
}</pre>
<p>In your apps, you can also use the BusyIndicator type from the Qt Quick Controls module.</p>
<p>In main.qml, we use the <code>ProgressBar</code> custom type to indicate progress while a high quality version of a photo is being opened on full screen:</p>
<pre class="qml">    <span class="type">ProgressBar</span> {
<span class="name">progress</span>: <span class="name">mainWindow</span>.<span class="name">downloadProgress</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">4</span>
<span class="name">anchors</span>.bottom: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">opacity</span>: <span class="name">mainWindow</span>.<span class="name">imageLoading</span>; <span class="name">visible</span>: <span class="name">opacity</span> <span class="operator">!=</span> <span class="number">0.0</span>
}</pre>
<p>We define the <code>ProgressBar</code> type in <code>ProgressBar.qml</code>. We use a <a href="QtQuick.Rectangle.md">Rectangle</a> type to create the progress bar and apply a <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> to its <code>opacity</code> property to change the color of the bar from black to white as data loading proceeds:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">container</span>
property <span class="type">real</span> <span class="name">progress</span>: <span class="number">0</span>
Behavior on <span class="name">opacity</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">duration</span>: <span class="number">600</span> } }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">color</span>: <span class="string">&quot;black&quot;</span>; <span class="name">opacity</span>: <span class="number">0.5</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">fill</span>; <span class="name">color</span>: <span class="string">&quot;white&quot;</span>; <span class="name">height</span>: <span class="name">container</span>.<span class="name">height</span>
<span class="name">width</span>: <span class="name">container</span>.<span class="name">width</span> <span class="operator">*</span> <span class="name">container</span>.<span class="name">progress</span>
}
}</pre>
<p>In your apps, you can also use the ProgressBar type from the Qt Quick Controls module.</p>
<h2 id="localizing-applications">Localizing Applications</h2>
<p>The example application is translated into German and French. The translated strings are loaded at runtime according to the current locale.</p>
<p>We use a <a href="QtQuick.qtquick-positioning-layouts.md#column">Column</a> type in main.qml to position buttons for adding and editing albums and exiting the application:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">spacing</span>: <span class="number">20</span>; <span class="type">anchors</span> { <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>; <span class="name">rightMargin</span>: <span class="number">20</span>; <span class="name">bottomMargin</span>: <span class="number">20</span> }
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">newButton</span>; <span class="name">label</span>: <span class="name">qsTr</span>(<span class="string">&quot;Add&quot;</span>); <span class="name">rotation</span>: <span class="number">3</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
<span class="name">onClicked</span>: {
<span class="name">mainWindow</span>.<span class="name">editMode</span> <span class="operator">=</span> <span class="number">false</span>
<span class="name">photosModel</span>.<span class="name">append</span>( { tag: <span class="string">&quot;&quot;</span> } )
<span class="name">albumView</span>.<span class="name">positionViewAtIndex</span>(<span class="name">albumView</span>.<span class="name">count</span> <span class="operator">-</span> <span class="number">1</span>, <span class="name">GridView</span>.<span class="name">Contain</span>)
}
}
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">deleteButton</span>; <span class="name">label</span>: <span class="name">qsTr</span>(<span class="string">&quot;Edit&quot;</span>); <span class="name">rotation</span>: -<span class="number">2</span>;
<span class="name">onClicked</span>: <span class="name">mainWindow</span>.<span class="name">editMode</span> <span class="operator">=</span> !<span class="name">mainWindow</span>.<span class="name">editMode</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
}
<span class="type">Button</span> {
<span class="name">id</span>: <span class="name">quitButton</span>; <span class="name">label</span>: <span class="name">qsTr</span>(<span class="string">&quot;Quit&quot;</span>); <span class="name">rotation</span>: -<span class="number">2</span>;
<span class="name">onClicked</span>: <span class="name">Qt</span>.<span class="name">quit</span>()
<span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
}
}</pre>
<p>We use the qsTr() command to mark the button labels translatable.</p>
<p>We use the lupdate tool to generate the translation source files and the lrelease tool to convert the translated strings to the QM files used by the application at runtime. These files are stored in the <code>i18n</code> directory.</p>
<p>To make the application aware of the translations, we add code to the <code>main()</code> function in the main.cpp file. The code creates a QTranslator object, loads a translation according to the current locale at runtime, and installs the translator object into the application:</p>
<pre class="qml"><span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
{
<span class="type">QApplication</span> app(argc<span class="operator">,</span> argv);
<span class="type">QTranslator</span> qtTranslator;
qtTranslator<span class="operator">.</span>load(<span class="string">&quot;qml_&quot;</span> <span class="operator">+</span> <span class="type">QLocale</span><span class="operator">::</span>system()<span class="operator">.</span>name()<span class="operator">,</span> <span class="string">&quot;:/i18n/&quot;</span>);
app<span class="operator">.</span>installTranslator(<span class="operator">&amp;</span>qtTranslator);</pre>
<p>Files:</p>
<ul>
<li>demos/photoviewer/main.qml</li>
<li>demos/photoviewer/PhotoViewerCore/AlbumDelegate.qml</li>
<li>demos/photoviewer/PhotoViewerCore/BusyIndicator.qml</li>
<li>demos/photoviewer/PhotoViewerCore/Button.qml</li>
<li>demos/photoviewer/PhotoViewerCore/EditableButton.qml</li>
<li>demos/photoviewer/PhotoViewerCore/PhotoDelegate.qml</li>
<li>demos/photoviewer/PhotoViewerCore/ProgressBar.qml</li>
<li>demos/photoviewer/PhotoViewerCore/RssModel.qml</li>
<li>demos/photoviewer/PhotoViewerCore/Tag.qml</li>
<li>demos/photoviewer/PhotoViewerCore/script/script.js</li>
<li>demos/photoviewer/i18n/qml_de.qm</li>
<li>demos/photoviewer/i18n/qml_fr.qm</li>
<li>demos/photoviewer/main.cpp</li>
<li>demos/photoviewer/photoviewer.pro</li>
<li>demos/photoviewer/qml.qrc</li>
</ul>
<p><b>See also </b>QML Applications.</p>
<!-- @@@demos/photoviewer -->
