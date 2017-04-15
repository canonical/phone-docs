---
Title: UbuntuUI.Pagestack
---
        
Pagestack
=========

The Pagestack manages all Pages in a stack data structure. Initially, the Pagestack contains no Pages. The &lt;em&gt;push()&lt;/em&gt; method is normally executed on load to display the app starting page.

``` code
 UI.pagestack.push("pageID")
```

The topmost Page on the Pagestack is always displayed.

The Pagestack is declared as a direct child of the &lt;em&gt;content&lt;/em&gt; div.

\#\#\#\#\#Default application wide footer The Pagestack contains a default &lt;em&gt;footer&lt;/em&gt; (represented in JavaScript as a Toolbar), even if you do not declare one in HTML. The &lt;em&gt;footer&lt;/em&gt; has a single Back button. \#\#\#\#\#Customized application wide footer This application-wide &lt;em&gt;footer&lt;/em&gt; can be customized (for example, you can add Buttons) by declaring a &lt;em&gt;footer&lt;/em&gt; as a direct child of the &lt;em&gt;pagestack&lt;/em&gt; div (see example). \#\#\#\#\#\#Page specific footers A &lt;em&gt;page&lt;/em&gt; may declare a page-specific &lt;em&gt;footer&lt;/em&gt; as a child element.

<span id="UbuntuUI.Pagestack"></span>
**`UbuntuUI.Pagestack`**( `  ` )
##### Example

``` code
<div data-role="mainview">
    
       <header data-role="header">
       </header>
    
       <div data-role="content">
    
         <div data-role="pagestack">
    
           <div data-role="page" id="main" data-title="Page 1">
           </div>
    
           <div data-role="page" id="page2" data-title="Page 2">
             [...]
             <footer data-role="footer" class="revealed" id="footerPage2">
               [...]
             </footer>
           </div>
    
           <footer data-role="footer" class="revealed" id="footerAppWide">
             [...]
           </footer>
    
         </div>  <!-- end of Pagestack div -->
    
       </div>
    
     </div>
    
     JavaScript access:
     UI.pagestack.METHOD();
    
```

-   Methods

<span id="clear"></span>
**`clear`**( `  ` )
Clears the whole page stack

<span id="currentPage"></span>
PageID | Null **`currentPage`**( `  ` )
Gets the id attribute of the page element on top of this pagestack

**Returns:** &lt;PageID | Null&gt;
-   The topmost page's id attribute, else null when there are no pages on this pagestack

<span id="depth"></span>
Number **`depth`**( `  ` )
Gets the number of pages in this pagestack

**Returns:** &lt;Number&gt;
-   The number of pages in this pagestack

<span id="isEmpty"></span>
Boolean **`isEmpty`**( `  ` )
Checks for zero pages in this pagestack

**Returns:** &lt;Boolean&gt;
-   True when this pagestack has no pages, else false

<span id="pop"></span>
**`pop`**( `  ` )
Pops the current page off this pagestack, which causes the next page to become the top page and to display

<span id="push"></span>
**`push`**( `id, properties ` )
Push a page to the top of this pagestack

**Parameters:**
-   `id` **&lt;String&gt;**
    -   The id attribute of the page element to be pushed
-   `properties` **&lt;Object&gt;**
    -   A list of properties passed down to the page that is to be activated

