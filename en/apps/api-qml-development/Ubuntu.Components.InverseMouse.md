---
Title: Ubuntu.Components.InverseMouse
---

# Ubuntu.Components.InverseMouse

<span class="subtitle"></span>
<!-- $$$InverseMouse-brief -->
<p>Attached object filtering mouse events occured outside the owner. More...</p>
<!-- @@@InverseMouse -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<!-- $$$InverseMouse-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Similar to Mouse filter attached property, provides mouse event filtering capabilities but for events occurring outside of the owner's area, excluding the input method area.</p>
<p>Being derived from Mouse filter element, provides the same behavior as the Mouse filter, except that all the signals are emitted when the mouse event occurs outside the owner's area. Note that accepting composed mouse events does not have any effect on event propagation.</p>
<p>Altering <i>priority</i> property has no effect on inverse mouse filter as mouse events captured by the filter are not forwarded to the owner, hence forwarding those events first to the owner will not have any effect.</p>
<!-- @@@InverseMouse -->
