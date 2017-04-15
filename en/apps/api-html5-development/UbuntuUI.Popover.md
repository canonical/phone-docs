---
Title: UbuntuUI.Popover
---
        
Popover
=======

A Popover is a div containng markup that can pop up and disappear. (Unlike a Dialog, Popovers are not full screen.)

A Popoves often contain a List whose items are connected to useful JavaScript functions.

\#\#\#\#\#\#Popover Position The Popover's position is set relative to a specified base element with the &lt;em&gt;data-gravity="LETTER"&lt;/em&gt; attribute. LETTER values:

-   'n': the base element is above the Popover
-   's': the base element is below the Popover
-   'e': the base element is to the east of (to the right of) the Popover (in right-to-left locales)
-   'w': the base element is to the west of (to the left of) the Popover (in right-to-left locale)

<span id="UbuntuUI.Popover"></span>
**`UbuntuUI.Popover`**( `elem, id ` )
**Parameters:**
-   `elem` **&lt;String&gt;**
    -   The element to which the Popover's position is relative
-   `id` **&lt;ID&gt;**
    -   The id attribute of the Popover in HTML

##### Example

``` code
 <p id="popoverBase">Text</p>
     <div class="popover active" data-gravity="n" id="popover">
       <ul class="list">
         <li class="active"><a href="#">Item1</a></li>
         <li><a href="#">Item2</a></li>
       </ul>
     </div>
    
     Javascript:
     var popBase = document.getElementById("popoverBase");
     var popover = UI.popover(popBase, "popover");
```

-   Methods

<span id="element"></span>
**`element`**( `  ` )
Returns the DOM element associated with the id this widget is bind to.

##### Example

``` code
   var mypopover = UI.popover("popoverid").element();
```

<span id="hide"></span>
**`hide`**( `  ` )
Hide a Popover

<span id="show"></span>
**`show`**( `  ` )
Display a Popover

<span id="toggle"></span>
**`toggle`**( `  ` )
Toggle show/hide status of a Popover

