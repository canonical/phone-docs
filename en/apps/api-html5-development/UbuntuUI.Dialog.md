---
Title: UbuntuUI.Dialog
---
        
Dialog
======

Dialogs are modal full-screen popups that prevent other GUI interactions with the application until dismissed.

Dialogs wrap arbitrary markup.

Dialogs are declared at the top level inside the &lt;em&gt;content&lt;/em&gt; div.

<span id="UbuntuUI.Dialog"></span>
**`UbuntuUI.Dialog`**( `  ` )
##### Example

``` code
 <div data-role="content">
       <div data-role="pagestack">
         [...]
       </div>
       <div data-role="dialog" id="dialogID">
         [...]
       </div>
     </div>
    
     JavaScript access:
     var dialog = UI.dialog("dialogID");
    
```

-   Methods

<span id="element"></span>
DOMElement **`element`**( `  ` )
Returns the DOM element associated with the id this widget is bind to.

**Returns:** &lt;DOMElement&gt;

##### Example

``` code
   var mydialog = UI.dialog("dialogid").element();
```

<span id="hide"></span>
**`hide`**( `  ` )
Hide a dialog by removing 'active' class

<span id="show"></span>
**`show`**( `  ` )
Display a dialog by adding 'active' CSS class

<span id="toggle"></span>
**`toggle`**( `  ` )
Toggle a dialog, which means removing its 'active' class if it has one, or adding the 'active' class if it does not have one

