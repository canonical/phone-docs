---
Title: UbuntuUserInterfaceToolkit.statesaving3
---

# UbuntuUserInterfaceToolkit.statesaving3

<span class="subtitle"></span>
<!-- $$$statesaving3.html-description -->
<p>The following issues must be considered when deciding on state saving:</p>
<ul>
<li>- don't try to save <a href="Ubuntu.Components.MainView.md">MainView</a>.applicationName, as its change will take effect next time the application is launched</li>
<li>- specify IDs for all components as well as for parents even if their presence is not justified in the document</li>
<li>types other than the ones listed in <a href="QtQml.qtqml-typesystem-basictypes.md">QML base types</a> will not be serialized</li>
<li>- grouped properties can be saved by specifying the complete path to the property i.e&#x2e; <i>border.width</i>, <i>border.color</i>, etc.</li>
</ul>
<br>
<p>When chosing the IDs, try to use as unique identifiers as possible. In most of the cases applications load content (document) dynamically using Loaders. Usually elements in these documents use different IDs for their elements, but there can be cases when the same IDs will be used with the same hierarchy (i.e&#x2e; root-&gt;item can occur in several documents). UID computation takes into account the file name and line number the property's owner (attachee) is declared, therefore the property saving will be successful in these cases too.</p>
<p>See documentation on <a href="Ubuntu.Components.StateSaver.md">StateSaver</a> properties under <a href="UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md#services">Services</a> section.</p>
<!-- @@@statesaving3.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md">Ubuntu User Interface Toolkit</a></li>
</p>
