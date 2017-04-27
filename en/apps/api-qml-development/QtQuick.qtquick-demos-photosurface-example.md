---
Title: QtQuick.qtquick-demos-photosurface-example
---

# QtQuick.qtquick-demos-photosurface-example

<span class="subtitle"></span>
<!-- $$$demos/photosurface-description -->
<p class="centerAlign"><img src="../../../media/qtquick-demo-photosurface-small.png" alt="" /></p><p><i>Photo Surface</i> demonstrates how to use a <a href="QtQuick.Repeater.md">Repeater</a> with a <a href="Qt.labs.folderlistmodel.FolderListModel.md">FolderListModel</a> and a FileDialog to access images from a folder selected by a user and how to handle dragging, rotation and pinch zooming within the same item using a <a href="QtQuick.PinchArea.md">PinchArea</a> that contains a <a href="QtQuick.MouseArea.md">MouseArea</a>.</p>
<p>All the app code is contained in one QML file, photosurface.qml. Inline JavaScript code is used to place, rotate, and scale images on the photo surface.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="creating-the-main-window">Creating the Main Window</h2>
<p>To create the main window for the Photo Surface app, we use the <a href="QtQuick.Window.Window.md">Window</a> QML type as the root item. It automatically sets up the window for use with <a href="QtQuick.qtquick-index.md">Qt Quick</a> graphical types:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Window.Window.md">Window</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">visible</span>: <span class="number">true</span>
<span class="name">width</span>: <span class="number">1024</span>; <span class="name">height</span>: <span class="number">600</span>
<span class="name">color</span>: <span class="string">&quot;black&quot;</span>
property <span class="type">int</span> <span class="name">highestZ</span>: <span class="number">0</span>
property <span class="type">real</span> <span class="name">defaultSize</span>: <span class="number">200</span>
property <span class="type">var</span> <span class="name">currentFrame</span>: <span class="name">undefined</span></pre>
<p>To use the <a href="QtQuick.Window.Window.md">Window</a> type, we must import it:</p>
<pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>Window <span class="number">2.1</span></pre>
<h2 id="accessing-folder-contents">Accessing Folder Contents</h2>
<p>We use a <a href="QtQuick.Repeater.md">Repeater</a> QML type together with the <a href="Qt.labs.folderlistmodel.FolderListModel.md">FolderListModel</a> to display GIF, JPG, and PNG images located in a folder:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="name">FolderListModel</span> {
<span class="name">id</span>: <span class="name">folderModel</span>
<span class="name">objectName</span>: <span class="string">&quot;folderModel&quot;</span>
<span class="name">showDirs</span>: <span class="number">false</span>
<span class="name">nameFilters</span>: [<span class="string">&quot;*.png&quot;</span>, <span class="string">&quot;*.jpg&quot;</span>, <span class="string">&quot;*.gif&quot;</span>]
}</pre>
<p>To use the <a href="Qt.labs.folderlistmodel.FolderListModel.md">FolderListModel</a> type, we must import it:</p>
<pre class="cpp">import <span class="type">Qt</span><span class="operator">.</span>labs<span class="operator">.</span>folderlistmodel <span class="number">1.0</span></pre>
<p>We use a FileDialog to enable users to select the folder that contains the images:</p>
<pre class="qml">    <span class="type">FileDialog</span> {
<span class="name">id</span>: <span class="name">fileDialog</span>
<span class="name">title</span>: <span class="string">&quot;Choose a folder with some images&quot;</span>
<span class="name">selectFolder</span>: <span class="number">true</span>
<span class="name">onAccepted</span>: <span class="name">folderModel</span>.<span class="name">folder</span> <span class="operator">=</span> <span class="name">fileUrl</span> <span class="operator">+</span> <span class="string">&quot;/&quot;</span>
}</pre>
<p>To use the FileDialog type, we must import Qt Quick Dialogs:</p>
<pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>Dialogs <span class="number">1.0</span></pre>
<p>We use the <code>fileDialog.open()</code> function to open the file dialog when the app starts:</p>
<pre class="cpp">Component<span class="operator">.</span>onCompleted: fileDialog<span class="operator">.</span>open()</pre>
<p>Users can also click the file dialog icon to open the file dialog. We use an <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image">Image</a> QML type to display the icon. Inside the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image">Image</a> type, we use a <a href="QtQuick.MouseArea.md">MouseArea</a> with the <code>onClicked</code> signal handler to call the <code>fileDialog.open()</code> function:</p>
<pre class="qml">    <span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">anchors</span>.margins: <span class="number">10</span>
<span class="name">source</span>: <span class="string">&quot;resources/folder.png&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">anchors</span>.margins: -<span class="number">10</span>
<span class="name">onClicked</span>: <span class="name">fileDialog</span>.<span class="name">open</span>()
}
}</pre>
<h2 id="displaying-images-on-the-photo-surface">Displaying Images on the Photo Surface</h2>
<p>We use a <a href="QtQuick.Rectangle.md">Rectangle</a> as a delegate for a <a href="QtQuick.Repeater.md">Repeater</a> to provide a frame for each image that the <a href="Qt.labs.folderlistmodel.FolderListModel.md">FolderListModel</a> finds in the selected folder. We use JavaScript <code>Math()</code> methods to place the frames randomly on the photo surface and to rotate them at random angles, as well as to scale the images:</p>
<pre class="qml">        <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">photoFrame</span>
<span class="name">width</span>: <span class="name">image</span>.<span class="name">width</span> <span class="operator">*</span> <span class="name">image</span>.<span class="name">scale</span> <span class="operator">+</span> <span class="number">20</span>
<span class="name">height</span>: <span class="name">image</span>.<span class="name">height</span> <span class="operator">*</span> <span class="name">image</span>.<span class="name">scale</span> <span class="operator">+</span> <span class="number">20</span>
<span class="name">border</span>.color: <span class="string">&quot;black&quot;</span>
<span class="name">border</span>.width: <span class="number">2</span>
<span class="name">smooth</span>: <span class="number">true</span>
<span class="name">antialiasing</span>: <span class="number">true</span>
<span class="name">x</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="name">root</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">defaultSize</span>
<span class="name">y</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="name">root</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">defaultSize</span>
<span class="name">rotation</span>: <span class="name">Math</span>.<span class="name">random</span>() <span class="operator">*</span> <span class="number">13</span> <span class="operator">-</span> <span class="number">6</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">image</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectFit</span>
<span class="name">source</span>: <span class="name">folderModel</span>.<span class="name">folder</span> <span class="operator">+</span> <span class="name">fileName</span>
<span class="name">scale</span>: <span class="name">defaultSize</span> <span class="operator">/</span> <span class="name">Math</span>.<span class="name">max</span>(<span class="name">sourceSize</span>.<span class="name">width</span>, <span class="name">sourceSize</span>.<span class="name">height</span>)
<span class="name">antialiasing</span>: <span class="number">true</span>
}</pre>
<h2 id="handling-pinch-gestures">Handling Pinch Gestures</h2>
<p>We use a <a href="QtQuick.PinchArea.md">PinchArea</a> that contains a <a href="QtQuick.MouseArea.md">MouseArea</a> in the photo frames to handle dragging, rotation and pinch zooming of the frame:</p>
<pre class="qml">            <span class="type"><a href="QtQuick.PinchArea.md">PinchArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">pinch</span>.target: <span class="name">photoFrame</span>
<span class="name">pinch</span>.minimumRotation: -<span class="number">360</span>
<span class="name">pinch</span>.maximumRotation: <span class="number">360</span>
<span class="name">pinch</span>.minimumScale: <span class="number">0.1</span>
<span class="name">pinch</span>.maximumScale: <span class="number">10</span>
<span class="name">onPinchStarted</span>: <span class="name">setFrameColor</span>();</pre>
<p>We use the <code>pinch</code> group property to control how the photo frames react to pinch gestures. The <code>pinch.target</code> sets <code>photoFrame</code> as the item to manipulate. The rotation properties specify that the frames can be rotated at all angles and the scale properties specify that they can be scaled between <code>0.1</code> and <code>10</code>.</p>
<p>In the <a href="QtQuick.MouseArea.md">MouseArea</a>'s <code>onPressed</code> signal handler, we raise the selected photo frame to the top by increasing the value of its <code>z</code> property. The root item stores the z value of the top-most frame. The border color of the photo frame is controlled in the <code>onEntered</code> signal handler to highlight the selected image:</p>
<pre class="qml">                <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">dragArea</span>
<span class="name">hoverEnabled</span>: <span class="number">true</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">drag</span>.target: <span class="name">photoFrame</span>
<span class="name">onPressed</span>: {
<span class="name">photoFrame</span>.<span class="name">z</span> <span class="operator">=</span> ++<span class="name">root</span>.<span class="name">highestZ</span>;
<span class="name">parent</span>.<span class="name">setFrameColor</span>();
}
<span class="name">onEntered</span>: <span class="name">parent</span>.<span class="name">setFrameColor</span>();</pre>
<p>To enable you to test the example on the desktop, we use the <a href="QtQuick.MouseArea.md">MouseArea</a>'s <code>onWheel</code> signal handler to simulate pinch gestures by using a mouse:</p>
<pre class="qml">                    <span class="name">onWheel</span>: {
<span class="keyword">if</span> (<span class="name">wheel</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ControlModifier</span>) {
<span class="name">photoFrame</span>.<span class="name">rotation</span> <span class="operator">+=</span> <span class="name">wheel</span>.<span class="name">angleDelta</span>.<span class="name">y</span> <span class="operator">/</span> <span class="number">120</span> <span class="operator">*</span> <span class="number">5</span>;
<span class="keyword">if</span> (<span class="name">Math</span>.<span class="name">abs</span>(<span class="name">photoFrame</span>.<span class="name">rotation</span>) <span class="operator">&lt;</span> <span class="number">4</span>)
<span class="name">photoFrame</span>.<span class="name">rotation</span> <span class="operator">=</span> <span class="number">0</span>;
} <span class="keyword">else</span> {
<span class="name">photoFrame</span>.<span class="name">rotation</span> <span class="operator">+=</span> <span class="name">wheel</span>.<span class="name">angleDelta</span>.<span class="name">x</span> <span class="operator">/</span> <span class="number">120</span>;
<span class="keyword">if</span> (<span class="name">Math</span>.<span class="name">abs</span>(<span class="name">photoFrame</span>.<span class="name">rotation</span>) <span class="operator">&lt;</span> <span class="number">0.6</span>)
<span class="name">photoFrame</span>.<span class="name">rotation</span> <span class="operator">=</span> <span class="number">0</span>;
var <span class="name">scaleBefore</span> = <span class="name">image</span>.<span class="name">scale</span>;
<span class="name">image</span>.<span class="name">scale</span> <span class="operator">+=</span> <span class="name">image</span>.<span class="name">scale</span> <span class="operator">*</span> <span class="name">wheel</span>.<span class="name">angleDelta</span>.<span class="name">y</span> <span class="operator">/</span> <span class="number">120</span> <span class="operator">/</span> <span class="number">10</span>;
<span class="name">photoFrame</span>.<span class="name">x</span> <span class="operator">-=</span> <span class="name">image</span>.<span class="name">width</span> <span class="operator">*</span> (<span class="name">image</span>.<span class="name">scale</span> <span class="operator">-</span> <span class="name">scaleBefore</span>) <span class="operator">/</span> <span class="number">2.0</span>;
<span class="name">photoFrame</span>.<span class="name">y</span> <span class="operator">-=</span> <span class="name">image</span>.<span class="name">height</span> <span class="operator">*</span> (<span class="name">image</span>.<span class="name">scale</span> <span class="operator">-</span> <span class="name">scaleBefore</span>) <span class="operator">/</span> <span class="number">2.0</span>;
}
}
}</pre>
<p>The <code>onWheel</code> signal handler is called in response to mouse wheel gestures. Use the vertical wheel to zoom and Ctrl and the vertical wheel to rotate frames. If the mouse has a horizontal wheel, use it to rotate frames.</p>
<p>Files:</p>
<ul>
<li>demos/photosurface/photosurface.qml</li>
<li>demos/photosurface/main.cpp</li>
<li>demos/photosurface/photosurface.pro</li>
<li>demos/photosurface/photosurface.qmlproject</li>
<li>demos/photosurface/photosurface.qrc</li>
</ul>
<p><b>See also </b>QML Applications.</p>
<!-- @@@demos/photosurface -->
