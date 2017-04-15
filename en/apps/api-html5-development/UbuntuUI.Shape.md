---
Title: UbuntuUI.Shape
---
        
Shape
=====

An Ubuntu Shape contains and decorates (with CSS styles) some markup, often an &lt;em&gt;img&lt;/em&gt;.

<span id="UbuntuUI.Shape"></span>
**`UbuntuUI.Shape`**( `  ` )
##### Example

``` code
 <div data-role="shape" id="shapeID">
       <img src="URI"/>
     </div>
    
     JavaScript access:
     var shape = UI.shape("shapeID");
    
```

-   Methods

<span id="click"></span>
**`click`**( `- ` )
Associate a function with the Click event

**Parameters:**
-   `-` **&lt;Function&gt;**

    The function to execute on click

##### Example

``` code
   UI.shape("id").click(function(){
                    console.log("Clicked");
                   });
```

<span id="element"></span>
**`element`**( `  ` )
Returns the DOM element associated with the id this widget is bind to.

##### Example

``` code
   var myshape = UI.shape("shapeid").element();
```

