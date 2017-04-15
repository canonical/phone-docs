---
Title: UbuntuUI.Page
---
        
Page
====

One of the navigation pattern that can be used within an Ubuntu App is the deep navigation. This pattern is implemented by the Pagestack. A Pagestack contains one or more Pages. Each page displays full-screen. See the Pagestack class.

Each Page must have &lt;em&gt;id&lt;/em&gt; and &lt;em&gt;data-title&lt;/em&gt; attributes. The &lt;em&gt;id&lt;/em&gt; attribute is used a unique reference to push the Page to the top of the Pagestack (see the Pagestack class). The &lt;em&gt;data-title&lt;/em&gt; attribute is used to update the Header title as pages are pushed and poped.

<span id="UbuntuUI.Page"></span>
**`UbuntuUI.Page`**( `  ` )
##### Example

``` code
 </body>
       <div data-role="mainview">
    
         <header data-role="header">
         </header>
    
         <div data-role="content">
           <div data-role="pagestack">
             <div data-role="page" data-title="Main" id="main">
               [...]
             </div>
             <div data-role="page" data-title="My Data" id="data">
               [...]
             </div>
           </div>
         </div>
    
       </div>
     </body>
    
     JavaScript access:
     var page = UI.page("pageID");
```

-   Methods
-   Properties

<span id="activate"></span>
**`activate`**( `properties ` )
Activates the current page.

**Parameters:**
-   `properties` **&lt;Object&gt;**
    -   Data to be passed down to any activation callback listening for the page activation (see Page.onactivated)

<span id="deactivate"></span>
**`deactivate`**( `  ` )
Deactivates the current page.

<span id="element"></span>
**`element`**( `  ` )
Returns the DOM element associated with the selector this widget is bind to.

##### Example

``` code
  var mypage = UI.page("pageid").element();
```

<span id="isPage"></span>
Boolean **`isPage`**( `  ` )
Validates that a given DOM node element is a Ubuntu UI Page.

**Returns:** &lt;Boolean&gt;
if the DOM element is a page

<span id="onactivated"></span>
**`onactivated`**( `callback ` )
Activates the current page.

**Parameters:**
-   `callback` **&lt;Function&gt;**
    -   Callback function called with activation properties (from Pagestack.push) when the page is activated

<span id="actions"></span>
`actions` &lt;**List**&gt;
actions property.

<span id="title"></span>
`title` &lt;**String**&gt;
title property.

