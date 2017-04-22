---
Title: QtMultimedia.qtmultimedia-windows
---

# QtMultimedia.qtmultimedia-windows

<span class="subtitle"></span>
<!-- $$$qtmultimedia-windows.html-description -->
<p>This page covers the availability of Qt Multimedia features on Windows.</p>
<h2 id="implementation">Implementation</h2>
<p>Qt Multimedia features for Windows are implemented in two plugins; one using the Microsoft DirectShow API, and another using WMF (Windows Media Foundation) framework. DirectShow API was introduced in Windows 98, and gradually deprecated from Windows XP onwards. Media Foundation framework was introduced in Windows Vista as a replacement for DirectShow and other multimedia APIs. Consequently, WMF plugin in Qt is supported only for Windows Vista and later versions of the operating system.</p>
<h2 id="limitations">Limitations</h2>
<p>The WMF plugin in Qt does not currently provide a camera backend. Instead, limited support for camera features is provided by the DirectShow plugin. Basic features such as displaying a viewfinder and capturing a still image are supported, however, majority of camera controls are not implemented.</p>
<p>Video recording is currently not supported. Additionally, the DirectShow plugin does not support any low-level video functionality such as monitoring video frames being played or recorded using QVideoProbe or related classes.</p>
<!-- @@@qtmultimedia-windows.html -->
