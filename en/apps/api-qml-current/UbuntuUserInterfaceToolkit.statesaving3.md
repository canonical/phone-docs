---
Title: UbuntuUserInterfaceToolkit.statesaving3
---
        
Recap on state saving
=====================

<span class="subtitle"></span>
<span id="details"></span>
The following issues must be considered when deciding on state saving:

-   - don't try to save [MainView](../Ubuntu.Components.MainView.md).applicationName, as its change will take effect next time the application is launched
-   - specify IDs for all components as well as for parents even if their presence is not justified in the document
-   types other than the ones listed in [QML base types](../../sdk-15.04/QtQml.qtqml-typesystem-basictypes.md) will not be serialized
-   - grouped properties can be saved by specifying the complete path to the property i.e. *border.width*, *border.color*, etc.

When chosing the IDs, try to use as unique identifiers as possible. In most of the cases applications load content (document) dynamically using Loaders. Usually elements in these documents use different IDs for their elements, but there can be cases when the same IDs will be used with the same hierarchy (i.e. root-&gt;item can occur in several documents). UID computation takes into account the file name and line number the property's owner (attachee) is declared, therefore the property saving will be successful in these cases too.

See documentation on [StateSaver](../Ubuntu.Components.StateSaver.md) properties under [Services](../UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md#services) section.

<a href="UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md" class="nextPage">Ubuntu User Interface Toolkit</a>

