---
Title: Ubuntu.Components.AdaptivePageLayout
---
        
AdaptivePageLayout
==================

<span class="subtitle"></span>
View with multiple columns of Pages. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.3        |

<span id="properties"></span>
Properties
----------

-   ****[asynchronous](#asynchronous-prop)**** : bool
-   ****[columns](#columns-prop)**** : int
-   ****[layouts](#layouts-prop)**** : PageColumnsLayout
-   ****[primaryPage](#primaryPage-prop)**** : Page
-   ****[primaryPageSource](#primaryPageSource-prop)**** : var

<span id="methods"></span>
Methods
-------

-   ****[addPageToCurrentColumn](#addPageToCurrentColumn-method)****(*sourcePage*, *page*, *properties*)
-   ****[addPageToNextColumn](#addPageToNextColumn-method)****(*sourcePage*, *page*, *properties*)
-   ****[removePages](#removePages-method)****(*page*)

<span id="details"></span>
Detailed Description
--------------------

The component provides a flexible way of viewing a stack of pages in one or more columns. Unlike in [PageStack](../Ubuntu.Components.PageStack.md), there can be more than one Page active at a time, depending on the number of the columns in the view.

[AdaptivePageLayout](index.html) stores pages added in a tree. Pages are added relative to a given page, either as sibling ([addPageToCurrentColumn](#addPageToCurrentColumn-method)) or as child ([addPageToNextColumn](#addPageToNextColumn-method)). This means that removing a non-leaf page from the Page tree will remove all its children from the page tree.

The columns are populated from left to right. The column a page is added to is detected based on the source page that is given to the functions adding the page. The pages can be added either to the same column the source page resides or to the column next to the source page. Giving a null value to the source page will add the page to the leftmost column of the view.

The primary page, the very first page must be specified either through the [primaryPage](#primaryPage-prop) or [primaryPageSource](#primaryPageSource-prop) properties. [primaryPage](#primaryPage-prop) can only hold a Page instance, [primaryPageSource](#primaryPageSource-prop) can either be a Component or a url to a document defining a Page. [primaryPageSource](#primaryPageSource-prop) has precedence over [primaryPage](#primaryPage-prop), and when set it will report the loaded Page through [primaryPage](#primaryPage-prop) property, and will replace any value set into that property.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(100)
    height: units.gu(60)
    AdaptivePageLayout {
        anchors.fill: parent
        primaryPage: page1
        Page {
            id: page1
            header: PageHeader {
                id: header
                title: "Main Page"
            }
            Column {
                anchors.top: header.bottom
                Button {
                    text: "Add Page2 above " + page1.title
                    onClicked: page1.pageStack.addPageToCurrentColumn(page1, page2)
                }
                Button {
                    text: "Add Page3 next to " + page1.title
                    onClicked: page1.pageStack.addPageToNextColumn(page1, page3)
                }
            }
        }
        Page {
            id: page2
            header: PageHeader {
                title: "Page #2"
            }
        }
        Page {
            id: page3
            header: PageHeader {
                title: "Page #3"
            }
        }
    }
}
```

**Note:** Observe the use of the `Page::pageStack` property in the example above. The same property is used to share the [AdaptivePageLayout](index.html) instance the Page is used in, therefore the same page can be used in a [PageStack](../Ubuntu.Components.PageStack.md) or in an [AdaptivePageLayout](index.html). However implementations must make sure the desired [PageStack](../Ubuntu.Components.PageStack.md) or [AdaptivePageLayout](index.html) function exists in the instance before using it.

[AdaptivePageLayout](index.html) supports adaptive column handling. When the number of columns changes at runtime the pages are automatically rearranged.

By default the component splits the layout in two columns when the width of the layout exceeds 80 grid units. The first column is sized to 40 grid unit width and the second one to fill the rest of the remaining space. When the 80 grid unit breakpoint is reached, the component will switch from one column to two, and vice versa. These defaults can be overridden through the [layouts](#layouts-prop) property by defining the possible layouts, their column sizing and the breakpoints when the layouts should be activated. [PageColumn](../Ubuntu.Components.PageColumn.md) configurations must appear in the same order (from left to right) as the columns appear in the layout. If none of the layouts condition is met, a one column layout will be used.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(100)
    height: units.gu(60)
    AdaptivePageLayout {
        anchors.fill: parent
        primaryPageSource: page1Component
        layouts: PageColumnsLayout {
            when: width > units.gu(80)
            // column #0
            PageColumn {
                minimumWidth: units.gu(30)
                maximumWidth: units.gu(60)
                preferredWidth: units.gu(40)
            }
            // column #1
            PageColumn {
                fillWidth: true
            }
        }
        Component {
            id: page1Component
            Page {
                id: page1
                header: PageHeader {
                    id: header
                    title: "Main page"
                }
                Column {
                    anchors.top: header.bottom
                    Button {
                        text: "Add Page2 above " + page1.title
                        onClicked: page1.pageStack.addPageToCurrentColumn(page1, page2)
                    }
                    Button {
                        text: "Add Page3 next to " + page1.title
                        onClicked: page1.pageStack.addPageToNextColumn(page1, page3)
                    }
                }
            }
        }
        Page {
            id: page2
            header: PageHeader {
                title: "Page #2"
            }
        }
        Page {
            id: page3
            header: PageHeader {
                title: "Page #3"
            }
        }
    }
}
```

A column is considered to be resizable if the [PageColumn::minimumWidth](../Ubuntu.Components.PageColumn.md#minimumWidth-prop) and [PageColumn::maximumWidth](../Ubuntu.Components.PageColumn.md#maximumWidth-prop) configuration differs. This implies that if a column is not meant to be resized, it should have [PageColumn::minimumWidth](../Ubuntu.Components.PageColumn.md#minimumWidth-prop) and [PageColumn::maximumWidth](../Ubuntu.Components.PageColumn.md#maximumWidth-prop) set to the same value. In the example above, the first column can be resized to a minimum of 30, and a maximum of 60 grid units, and the preferred width is set to 40 grid units. This width is set every time the layout is activated.

When a [Page](../Ubuntu.Components.Page.md) with the [Page::header](../Ubuntu.Components.Page.md#header-prop) property set is added to an [AdaptivePageLayout](index.html), the [AdaptivePageLayout](index.html) will synchronize the height of that header with the height of the headers in other columns, i.e., the height of each of the headers will be set to the maximum implicitHeight of all the headers.

**See also** [PageStack](../Ubuntu.Components.PageStack.md), [PageColumnsLayout](../Ubuntu.Components.PageColumnsLayout.md), and [PageColumn](../Ubuntu.Components.PageColumn.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="asynchronous-prop"></span><span class="name">asynchronous</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property drives the way the pages should be loaded, synchronously or asynchronously. Defaults to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="columns-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">columns</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property holds the number of columns shown in the layout.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layouts-prop"></span><span class="name">layouts</span> : <span class="type"><a href="Ubuntu.Components.PageColumnsLayout.md">PageColumnsLayout</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the different layout configurations overriding the default configurations. Defaults to an empty list.

**See also** [PageColumnsLayout](../Ubuntu.Components.PageColumnsLayout.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="primaryPage-prop"></span><span class="name">primaryPage</span> : <span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the first Page which will be added to the view. If the view has more than one column, the page will be added to the leftmost column. The property can only hold a Page instance. When changed runtime (not by the [AdaptivePageLayout](index.html) component itself), the [primaryPageSource](#primaryPageSource-prop) property will be reset.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="primaryPageSource-prop"></span><span class="name">primaryPageSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The property specifies the source of the [primaryPage](#primaryPage-prop) in case the primary page is created from a Component or loaded from an external document. It has precedence over [primaryPage](#primaryPage-prop).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addPageToCurrentColumn-method"></span><span class="name">addPageToCurrentColumn</span>( <em>sourcePage</em>, <em>page</em>, <em>properties</em>)</p></td>
</tr>
</tbody>
</table>

Adds a `page` to the column the `sourcePage` resides in and removes all pages from the higher columns. `page` can be a Component or a file. `properties` is a JSON object containing properties to be set when page is created. `sourcePage` must be active.

The function creates the new page asynchronously if the new `page` to be added is a Component or a QML document and the [asynchronous](#asynchronous-prop) property is set to true. In this case the function returns an incubator which can be used to track the page creation. For more about incubation in QML and creating components asynchronously, see [Component.incubateObject()](../../sdk-14.10/QtQml.Component.md#incubateObject-method). The following example removes an element from the list model whenever the page opened in the second column is closed. Note, the example must be run on desktop or on a device with at least 90 grid units screen width.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(90)
    height: units.gu(70)
    Component {
        id: page2Component
        Page {
            header: PageHeader {
                id: header
                title: "Second Page"
            }
            Button {
                anchors.top: header.bottom
                text: "Close me"
                onClicked: pageStack.removePages(pageStack.primaryPage);
            }
        }
    }
    AdaptivePageLayout {
        id: pageLayout
        anchors.fill: parent
        primaryPage: Page {
            header: PageHeader {
                title: "Primary Page"
                flickable: listView
            }
            ListView {
                id: listView
                anchors.fill: parent
                model: 10
                delegate: ListItem {
                    Label { text: modelData }
                    onClicked: {
                        var incubator = pageLayout.addPageToNextColumn(pageLayout.primaryPage, page2Component);
                        if (incubator && incubator.status == Component.Loading) {
                            incubator.onStatusChanged = function(status) {
                                if (status == Component.Ready) {
                                    // connect page's destruction to decrement model
                                    incubator.object.Component.destruction.connect(function() {
                                        listView.model--;
                                    });
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
```

**See also** [Component.incubateObject](../../sdk-14.10/QtQml.Component.md#incubateObject-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addPageToNextColumn-method"></span><span class="name">addPageToNextColumn</span>( <em>sourcePage</em>, <em>page</em>, <em>properties</em>)</p></td>
</tr>
</tbody>
</table>

Remove all previous pages from the next column (relative to the column that holds `sourcePage`) and all following columns, and then add `page` to the next column. If `sourcePage` is located in the rightmost column, the new page will be pushed to the same column as `sourcePage`. The return value is the same as in [addPageToCurrentColumn](#addPageToCurrentColumn-method) case.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removePages-method"></span><span class="name">removePages</span>( <em>page</em>)</p></td>
</tr>
</tbody>
</table>

The function removes and deletes all pages up to and including `page` is reached. If the *page* is the same as the [primaryPage](#primaryPage-prop), only its child pages will be removed.

