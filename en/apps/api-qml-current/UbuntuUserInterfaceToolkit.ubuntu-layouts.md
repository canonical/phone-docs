---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts
---

# UbuntuUserInterfaceToolkit.ubuntu-layouts

<span class="subtitle"></span>
<!-- $$$ubuntu-layouts.html-description -->
<p>QML has the following basic layout primitives:</p>
<ul>
<li><a href="http://doc.qt.io/qt-5/qml-qtquick-column.html">Column</a> - arrange children in a column</li>
<li><a href="http://doc.qt.io/qt-5/qml-qtquick-row.html">Row</a> - arrange children in a row</li>
<li><a href="http://doc.qt.io/qt-5/qml-qtquick-grid.html">Grid</a> - arrange children in a grid of x columns and y rows</li>
<li><a href="http://doc.qt.io/qt-5/qml-qtquick-flow.html">Flow</a> - arrange children side-by-side with wrapping</li>
</ul>
<br>
<p>Unfortunately in a design that needs to work in many different form factors these aren't very flexible on their own as:</p>
<ol class="1">
<li>not designed to alter size of children - so no form of stretching supported by default.</li>
<li>as a result no way to have contents fill the container (without calculating the width/height of the children manually).</li>
</ol>
<br>
<p>As a result, most applications need to do calculations to size the children correctly in these primitives to fill the whole container.</p>
<p>Qt offers advice to developers on multi-layouts in QML. In summary they recommend: <i>Application top level page definitions, and reusable component definitions, should use one QML layout definition for the layout structure. This single definition should include the layout design for separate Device Orientations and container Aspect Ratios.</i></p>
<p>UIs layouts should be constructed to share as many components as possible. Then on display mode change these shared components can be reparented, reducing number of components to unload/reload and also helping to save state.</p>
<p>Using a Loader to switch the QML for different display modes is slower, and will involve loss of state. Instead the above advice is to use <a href="QtQuick.AnchorChanges.md">AnchorChanges</a> &amp; <a href="QtQuick.PropertyChanges.md">PropertyChanges</a> to specify all layouts in one QML document, so switching display mode is dynamic - but admittedly is a painful for all display modes and states that an application may want to support.</p>
<p><a href="http://doc.qt.io/qt-5/qtquicklayouts-index.html">QtQuick Controls</a> introduces the <a href="http://doc.qt.io/qt-5/qml-qtquick-layouts-columnlayout.html">ColumnLayout</a>, <a href="http://doc.qt.io/qt-5/qml-qtquick-layouts-rowlayout.html">RowLayout</a> and <a href="http://doc.qt.io/qt-5/qml-qtquick-layouts-gridlayout.html">GridLayout</a> components as well as the <a href="http://doc.qt.io/qt-5/qml-qtquick-layouts-layout.html">Layout</a> attached properties, which brings additional layouting possibilities to Qt Quick.</p>
<p>In addition to these, UI toolkit had introduced the Ubuntu.Layouts module to help developers define different layouts for different orientations and form factors, all being possible to be done within the same code base.</p>
<p>This tutorial gives an introduction to layout factoring abilities offered by Ubuntu UI toolkit. It tries to cover few possible layout scenarios, however will not cover advanced scenarios application developers may need.</p>
<p>Tutorial chapters:</p>
<ol class="1">
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-layouts1.md">Terminology</a></li>
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-layouts2.md">The first conditional layout</a></li>
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-layouts3.md">Changing the order</a></li>
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-layouts4.md">Lay out a single item differently from others</a></li>
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-layouts5.md">Hiding elements, showing more</a></li>
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-layouts6.md">Overlay items in an item host</a></li>
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-layouts7.md">Defining more layouts for different form factors</a></li>
</ol>
<p>So, let's take them step-by-step..&#x2e;</p>
<!-- @@@ubuntu-layouts.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.ubuntu-layouts1.md">Layouts - Terminology</a></li>
</p>
