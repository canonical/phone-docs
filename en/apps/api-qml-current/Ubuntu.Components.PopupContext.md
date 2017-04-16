---
Title: Ubuntu.Components.PopupContext
---

# Ubuntu.Components.PopupContext

<span class="subtitle"></span>
<!-- $$$PopupContext-brief -->
<p>A special ActionContext used in Dialogs and Popups. More...</p>
<!-- @@@PopupContext -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></p>
</td></tr></table><ul>
</ul>
<!-- $$$PopupContext-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">PopupContext</a> is similar to the <a href="Ubuntu.Components.ActionContext.md">ActionContext</a>, with the only difference being that there can be only one <a href="index.html">PopupContext</a> active at a time in an application. A <a href="index.html">PopupContext</a> can have several active <a href="Ubuntu.Components.ActionContext.md">ActionContext</a> children declared, however when deactivated all child contexts will be deactivated as well, and no Action declared in these contexts will be available through shortcuts.</p>
<p>The toolkit provides this kind of contexts in <a href="Ubuntu.Components.MainView.md">MainView</a>, Popup and Dialog. It is highly recommended for applications to have a <a href="index.html">PopupContext</a> defined in their rootItem.</p>
<!-- @@@PopupContext -->
