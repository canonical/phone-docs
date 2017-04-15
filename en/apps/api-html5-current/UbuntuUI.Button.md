---
Title: UbuntuUI.Button
---
        
Button
======

A Button.

Note the Ubuntu CSS style classes: &lt;em&gt;positive&lt;/em&gt;, &lt;em&gt;information&lt;/em&gt;, &lt;em&gt;secondary&lt;/em&gt;, and &lt;em&gt;negative&lt;/em&gt;

<span id="UbuntuUI.Button"></span>
**`UbuntuUI.Button`**( `  ` )
##### Example

``` code
 <button data-role="button" id="buttonID">text</button>
    
     Javascript access:
     var button = UI.button("buttonID");
```

-   Methods

<span id="click"></span>
**`click`**( `callback ` )
Associate a function with the button's Click event

**Parameters:**
-   `callback` **&lt;Function&gt;**
    -   The function to execute on click

##### Example

``` code
   UI.button("buttonid").click(function(){
                    console.log("clicked");
                   });
```

<span id="element"></span>
DOMElement **`element`**( `  ` )
Returns the DOM element associated with the id this widget is bind to.

**Returns:** &lt;DOMElement&gt;

##### Example

``` code
   var mybutton = UI.button("buttonid").element();
```

