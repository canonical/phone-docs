---
Title: UbuntuUserInterfaceToolkit.ubuntu-whatsnew
---

# UbuntuUserInterfaceToolkit.ubuntu-whatsnew

<span class="subtitle"></span>
<!-- $$$ubuntu-whatsnew.html-description -->
<p>Beside the pile of bug fixes we have two major changes in the UI Toolkit version 1.2, as follows:</p>
<h4 >MainView.useDeprecatedToolbar</h4>
<p><a href="Ubuntu.Components.MainView.md">MainView</a>.useDeprecatedToolbar property <b>got removed</b> and the new header is always enabled. If you need to use the old toolbar you can still do that by importing <b>Ubuntu.Components</b> 1.1&#x2e;</p>
<h4 >A new performant ListItem component</h4>
<p>As of 1.2, a new <a href="Ubuntu.Components.ListItem.md">ListItem</a> component and its attached components were added to the toolkit, which gives more flexibility and performance when used with scrollable views like <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a> or Flickable. Its layout is free, meaning developers can, and have to implement their layout themselves. The only helper the toolkit provides is the Captions component, which fulfills the two typical use cases, for the two label column title captioning and for the summary captions.</p>
<h4 >Ubuntu.Components.ListItems module deprecated</h4>
<p>The new <a href="Ubuntu.Components.ListItem.md">ListItem</a> also made the old list items module to be redundant, therefore we marked them for deprecation. Which means that your application should migrate to the new <a href="Ubuntu.Components.ListItem.md">ListItem</a> as soon as possible. There are few components which were not marked as deprecated, like <a href="Ubuntu.Components.ListItems.ThinDivider.md">ThinDivider</a>, Header, Expandable and ExpandableColumn were not deprecated.</p>
<h4 >UbuntuShape facelift</h4>
<p>There were few properties added and marked to be deprecated as well in <a href="Ubuntu.Components.UbuntuShape.md">UbuntuShape</a>. Some most wanted features were added, and optimized.</p>
<!-- @@@ubuntu-whatsnew.html -->
