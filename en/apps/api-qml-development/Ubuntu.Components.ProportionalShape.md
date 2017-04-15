---
Title: Ubuntu.Components.ProportionalShape
---
        
ProportionalShape
=================

<span class="subtitle"></span>
Extended UbuntuShape mostly used for icons and vignettes. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="details"></span>
Detailed Description
--------------------

The [ProportionalShape](index.html) is an extended [UbuntuShape](../Ubuntu.Components.UbuntuShape.md) with a fixed aspect ratio (16:15), a relative radius and a PreserveAspectCrop source fill mode. Changing the width implies an update of height and radius, and changing the height implies an update of width and radius. The goal being to keep the same proportion between width, height and radius whatever the size.

