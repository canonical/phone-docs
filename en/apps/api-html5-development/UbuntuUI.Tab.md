---
Title: UbuntuUI.Tab
---
        
Tab
===

One of the navigation pattern that can be used within an Ubuntu App is the flat navigation. Tabs are the standard way to provide such a navigation pattern from within your application.

A Tab represents the UI element that hosts your tab content. This UI element is being activated by the user selecting it as part of the Header element.

<span id="UbuntuUI.Tab"></span>
**`UbuntuUI.Tab`**( `  ` )
##### Example

``` code
 </body>
    
       <div data-role="mainview">
         <header data-role="header" id="headerID">
           <ul data-role="tabs">
             <li data-role="tabitem" data-page="tabID">
               Main
             </li>
             <li data-role="tabitem" data-page="page2">
               Two
             </li>
           </ul>
         </header>
    
         <div data-role="content">
             <div data-role="tab" id="tabID">
               [...]
             </div>
             <div data-role="tab" id="page2">
               [...]
             </div>
         </div>
    
       </div>
     </body>
    
     JavaScript access:
     var tab = UI.tab("tabID");
```

-   Methods

<span id="activate"></span>
**`activate`**( `  ` )
Activates the current tab.

<span id="deactivate"></span>
**`deactivate`**( `  ` )
Deactivates the current tab.

<span id="element"></span>
DOMElement **`element`**( `  ` )
Returns the DOM element associated with the selector this widget is bind to.

**Returns:** &lt;DOMElement&gt;

##### Example

``` code
  var mytab = UI.tab("tabid").element();
```

<span id="isTab"></span>
Boolean **`isTab`**( `  ` )
Validates that a given DOM node element is a Ubuntu UI Tab.

**Returns:** &lt;Boolean&gt;
if the DOM element is a tab

