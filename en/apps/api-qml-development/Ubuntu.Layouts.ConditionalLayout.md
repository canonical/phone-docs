---
Title: Ubuntu.Layouts.ConditionalLayout
---
        
ConditionalLayout
=================

<span class="subtitle"></span>
ConditionalLayout defines the layout of a given form factor. More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import Ubuntu.Layouts 1.0 |

<span id="properties"></span>
Properties
----------

-   ****[layout](#layout-prop)**** : Component
-   ****[name](#name-prop)**** : string
-   ****[when](#when-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

[ConditionalLayout](index.html) is a non-visual element defining the actual layout to be applied when a given condition evaluates to true. The condition can be any valid boolean JavaScript expression.

As Layouts can be nested, it is recommended to choose properties of the Layouts item, often width and height, when defining the condition. Other elements like Screen orientation can also be used to define the layout activation condition.

There must be only a single component defined in the [ConditionalLayout](index.html) which will be instantiated upon activation.

Each conditional layout must be named with a string, which identifies the layout when activated.

``` qml
Layouts {
    id: layouts
    width: units.gu(40)
    height: units.gu(40)
    layouts: [
        ConditionalLayout {
            name: "flow"
            when: layouts.width > units.gu(60)
            Flow {
                anchors.fill: parent
                spacing: units.dp(3)
                flow: Flow.LeftToRight
                ItemLayout {
                    item: "item1"
                    width: units.gu(30)
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "item2"
                    width: units.gu(30)
                    height: units.gu(20)
                }
                ItemLayout {
                    item: "item3"
                    width: units.gu(30)
                    height: units.gu(20)
                }
            }
        }
    ]
    Column {
        spacing: units.dp(2)
        Button {
            text: "Button #1"
            Layouts.item: "item1"
        }
        Button {
            text: "Button #2"
            Layouts.item: "item2"
        }
        Button {
            text: "Button #3"
            Layouts.item: "item3"
        }
    }
}
```

All Items to be managed by the Layouts engine must identify themselves by setting the Layouts.item attached property to a unique name (string). These unique names are then used by the [ItemLayout](../Ubuntu.Layouts.ItemLayout.md) component, so can apply the new layout to the correct Item.

**See also** [ItemLayout](../Ubuntu.Layouts.ItemLayout.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layout-prop"></span><span class="qmldefault">[default] </span><span class="name">layout</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

Default property holding the definition component of the layout. The component will be instantiated once the condition evaluates to true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property defines the name of the layout. Within the definition of Layouts, these names should be unique for each layout.

**See also** [Layouts](../Ubuntu.Layouts.Layouts.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="when-prop"></span><span class="name">when</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property defines the condition that when evaluating to true, chooses this [ConditionalLayout](index.html) to become the active layout. When two ConditionalLayouts **when** condition is evaluated to true, the first one declared in the layouts list is chosen.

