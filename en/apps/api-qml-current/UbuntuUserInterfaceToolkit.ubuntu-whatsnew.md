---
Title: UbuntuUserInterfaceToolkit.ubuntu-whatsnew
---
        
What's new in the version 1.2?
==============================

<span class="subtitle"></span>
<span id="details"></span>
Beside the pile of bug fixes we have two major changes in the UI Toolkit version 1.2, as follows:

<span id="mainview-usedeprecatedtoolbar"></span>
#### MainView.useDeprecatedToolbar

[MainView](../Ubuntu.Components.MainView.md).useDeprecatedToolbar property **got removed** and the new header is always enabled. If you need to use the old toolbar you can still do that by importing **Ubuntu.Components** 1.1.

<span id="a-new-performant-listitem-component"></span>
#### A new performant ListItem component

As of 1.2, a new [ListItem](../Ubuntu.Components.ListItem.md) component and its attached components were added to the toolkit, which gives more flexibility and performance when used with scrollable views like [ListView](../../sdk-14.10/QtQuick.ListView.md) or Flickable. Its layout is free, meaning developers can, and have to implement their layout themselves. The only helper the toolkit provides is the Captions component, which fulfills the two typical use cases, for the two label column title captioning and for the summary captions.

<span id="ubuntu-components-listitems-module-deprecated"></span>
#### Ubuntu.Components.ListItems module deprecated

The new [ListItem](../Ubuntu.Components.ListItem.md) also made the old list items module to be redundant, therefore we marked them for deprecation. Which means that your application should migrate to the new [ListItem](../Ubuntu.Components.ListItem.md) as soon as possible. There are few components which were not marked as deprecated, like [ThinDivider](../Ubuntu.Components.ListItems.ThinDivider.md), Header, Expandable and ExpandableColumn were not deprecated.

<span id="ubuntushape-facelift"></span>
#### UbuntuShape facelift

There were few properties added and marked to be deprecated as well in [UbuntuShape](../Ubuntu.Components.UbuntuShape.md). Some most wanted features were added, and optimized.

