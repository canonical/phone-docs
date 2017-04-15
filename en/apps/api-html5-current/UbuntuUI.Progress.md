---
Title: UbuntuUI.Progress
---
        
Progress
========

A Progress.

Note the Ubuntu CSS style classes: &lt;em&gt;infinite&lt;/em&gt;

<span id="UbuntuUI.Progress"></span>
**`UbuntuUI.Progress`**( `  ` )
##### Example

``` code
 <progress value="80" max="100"></progress>
    
     Javascript access:
     var pre = UI.progress("progressID");
```

-   Methods

<span id="element"></span>
**`element`**( `  ` )
Returns the DOM element associated with the id this widget is bind to.

##### Example

``` code
       var myprogress = UI.progress("progressid").element();
```

<span id="update"></span>
**`update`**( `  ` )
Updates the value of the progress bar

##### Example

``` code
       myprogress.update(30);
```

