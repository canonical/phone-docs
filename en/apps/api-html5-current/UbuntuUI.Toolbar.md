---
Title: UbuntuUI.Toolbar
---
        
Toolbar
=======

A Toolbar is the JavaScript representation of an Ubuntu HTML5 app &lt;em&gt;footer&lt;/em&gt;.

\#\#\#\#\#\#Contained List provides buttons The Toolbar contains a List, where each list item is treated as a Button (see below). List items (Buttons) are pushed to the right. The default Back button always exists to the left and does not need to be declared.

\#\#\#\#\#Default and custom footers See the Pagestack class documentation for information about the default application-wide Footer, customizing it, and adding Page-specific Footers.

<span id="UbuntuUI.Toolbar"></span>
**`UbuntuUI.Toolbar`**( `  ` )
##### Example

``` code
 <footer data-role="footer" class="revealed" id="footerID">
       <nav>
         <ul>
           <li>
             <a href="#" id="home">Home</a>
           </li>
         </ul>
       </nav>
     </footer>
    
     JavaScript access:
     var toolbar = UI.toolbar("toolbarID");
     UI.button('home').click(function () {
       UI.pagestack.push("main");
     });
    
```

-   Methods

<span id="element"></span>
**`element`**( `  ` )
Returns the DOM element associated with the id this widget is bind to.

##### Example

``` code
       var mytoolbar = UI.toolbar("toolbarid").element();
```

<span id="hide"></span>
**`hide`**( `  ` )
Hide a Toolbar

<span id="show"></span>
**`show`**( `  ` )
Display a Toolbar

<span id="toggle"></span>
**`toggle`**( `  ` )
Toggle show/hide status of a Toolbar

