---
Title: UbuntuUserInterfaceToolkit.overview-ubuntu-sdk
---
        
Ubuntu User Interface Toolkit
=============================

<span class="subtitle"></span>
details
-   [What's new in version 1.2?](../UbuntuUserInterfaceToolkit.ubuntu-whatsnew.md)
-   [Styling](../UbuntuUserInterfaceToolkit.ubuntu-theming.md) components
-   [Layouts](../UbuntuUserInterfaceToolkit.ubuntu-layouts.md) describes a flexible layouting engine to ease the development of responsive user interfaces.
-   [Resolution Independence](../UbuntuUserInterfaceToolkit.resolution-independence.md) describes the facilities that should be used when setting the size of UI elements (widgets, fonts, etc.) in order for them to behave well on a variety of devices.
-   [Automatic State Saving](../UbuntuUserInterfaceToolkit.statesaving.md) provides automatic property saving for components.

basic-qml-types
Available through:

``` cpp
import Ubuntu.Components 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p></td>
<td><p>Defines the behavior of the button</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Action.md">Action</a></p></td>
<td><p>Describe an action that can be re-used and shared between different components</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ActionBar.md">ActionBar</a></p></td>
<td><p>Show a row of buttons that trigger actions. When the number of visible actions specified is larger than numberOfSlots, an overflow button will be shown which triggers an overflow panel that shows the remaining actions</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></p></td>
<td><p>Groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a></p></td>
<td><p>A visual representation of an Action. The API of ActionItem is a copy of the API of Action, with additional properties to define visual aspects of the ActionItem</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ActionList.md">ActionList</a></p></td>
<td><p>List of Action items An ActionList provies a way of grouping actions together</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ActionManager.md">ActionManager</a></p></td>
<td><p>Manages actions and action contexts withion an application</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ActivityIndicator.md">ActivityIndicator</a></p></td>
<td><p>Component visually indicates that a task of unknown duration is in progress, e.g. busy indication, connection in progress indication, etc</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a></p></td>
<td><p>View with multiple columns of Pages</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.BottomEdge.md">BottomEdge</a></p></td>
<td><p>A component to handle bottom edge gesture and content</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.BottomEdgeHint.md">BottomEdgeHint</a></p></td>
<td><p>Shows the availability of extra features available from the bottom edge of the application</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></p></td>
<td><p>Defines an active region within the BottomEdge component</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Button.md">Button</a></p></td>
<td><p>Standard Ubuntu button</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></p></td>
<td><p>Component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as Switch, the only difference is the graphical style</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Clipboard.md">Clipboard</a></p></td>
<td><p>This is a singleton type providing access to the system clipboard</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ComboButton.md">ComboButton</a></p></td>
<td><p>Ubuntu button providing a drop-down panel visualizing custom options</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.CrossFadeImage.md">CrossFadeImage</a></p></td>
<td><p>An Image like component which smoothly fades when its source is updated</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ExclusiveGroup.md">ExclusiveGroup</a></p></td>
<td><p>Way to declare several checkable controls as mutually exclusive</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.FontUtils.md">FontUtils</a></p></td>
<td><p>Context property, which provides utility functions for font manipulations</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Header.md">Header</a></p></td>
<td><p>Bar that can contain the title and controls for the current view</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Icon.md">Icon</a></p></td>
<td><p>Component displays an icon from the icon theme</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.InverseMouse.md">InverseMouse</a></p></td>
<td><p>Attached object filtering mouse events occured outside the owner</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.InverseMouseArea.md">InverseMouseArea</a></p></td>
<td><p>Captures mouse events happening outside of a given area</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Label.md">Label</a></p></td>
<td><p>Extended Text item with Ubuntu styling</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></p></td>
<td><p>Easy way to create list items which follow Ubuntu design standards, thus making them visually appealing and consistent with the rest of the platform without effort</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.LiveTimer.md">LiveTimer</a></p></td>
<td><p>A live timing source providing peridioc updates</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.MainView.md">MainView</a></p></td>
<td><p>The root Item that should be used for all applications</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Menu.md">Menu</a></p></td>
<td><p>Defines a context menu or submenu structure of a MenuBar</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.MenuBar.md">MenuBar</a></p></td>
<td><p>Defines an application menu bar structure</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.MenuGroup.md">MenuGroup</a></p></td>
<td><p>Logical list of items for a menu</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.MimeData.md">MimeData</a></p></td>
<td><p>Type provides interface to access and store data to the Clipboard</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Mouse.md">Mouse</a></p></td>
<td><p>Attached property filtering mouse events occured inside the owner</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.OrientationHelper.md">OrientationHelper</a></p></td>
<td><p>Automatically rotates its children following the orientation of the device</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Page.md">Page</a></p></td>
<td><p>A page is the basic Item that represents a single view in an Ubuntu application. It is recommended to use the Page inside the MainView or AdaptivePageLayout</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.PageColumn.md">PageColumn</a></p></td>
<td><p>Component configuring the metrics of a column in AdaptivePageLayout</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.PageColumnsLayout.md">PageColumnsLayout</a></p></td>
<td><p>Component configuring a layout in an AdaptivePageLayout component</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.PageHeader.md">PageHeader</a></p></td>
<td><p>Shows a title with a leading and a trailing ActionBar that add action buttons to the header</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.PageStack.md">PageStack</a></p></td>
<td><p>A stack of Page items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Panel.md">Panel</a></p></td>
<td><p>A panel that can be swiped in and out from an edge of the window by the user. For most applications, it is highly recommended to use the MainView instead which includes a toolbar at its bottom that can be swiped in or out</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.PopupContext.md">PopupContext</a></p></td>
<td><p>A special ActionContext used in Dialogs and Popups</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ProgressBar.md">ProgressBar</a></p></td>
<td><p>Component visually indicates the progress of a process of determinate or indeterminate duration</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ProgressionSlot.md">ProgressionSlot</a></p></td>
<td><p>Holds an icon representing the progression symbol</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ProportionalShape.md">ProportionalShape</a></p></td>
<td><p>Extended UbuntuShape mostly used for icons and vignettes</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a></p></td>
<td><p>Pull-to-refresh component for Flickables to reload a model upon pull</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ScrollView.md">ScrollView</a></p></td>
<td><p>Scrollable view that features scrollbars and scrolling via keyboard keys</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Scrollbar.md">Scrollbar</a></p></td>
<td><p>Component provides scrolling functionality for scrollable views (i.e. Flickable, ListView)</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Sections.md">Sections</a></p></td>
<td><p>Display a list of sections that the user can select. By tapping on a section name the selectedIndex will be updated, and the associated Action is triggered</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Slider.md">Slider</a></p></td>
<td><p>Component to select a value from a continuous range of values</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.SortFilterModel.md">SortFilterModel</a></p></td>
<td><p>Sorts and filters rows from an existing model</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.StyleHints.md">StyleHints</a></p></td>
<td><p>Component holding style specific properties to configure a particular StyledItem's style runtime</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
<td><p>Allows items to be styled by the theme</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Switch.md">Switch</a></p></td>
<td><p>Component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as CheckBox, the only difference is the graphical style</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.TextArea.md">TextArea</a></p></td>
<td><p>Item displays a block of editable, scrollable, formatted text</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.TextField.md">TextField</a></p></td>
<td><p>Element displays a single line of editable plain text. Input constraints can be set through validator or inputMask. Setting echoMode to an appropriate value enables TextField to be used as password input field</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Toolbar.md">Toolbar</a></p></td>
<td><p>That can be used as an extension for the edit mode header. Example:</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Ubuntu.md">Ubuntu</a></p></td>
<td><p>Provides global object with different enums</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.UbuntuAnimation.md">UbuntuAnimation</a></p></td>
<td><p>Singleton defining standard Ubuntu durations and easing for animations that should be used to ensure that Ubuntu applications are consistent in their animations</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.UbuntuApplication.md">UbuntuApplication</a></p></td>
<td><p>QML binding for a subset of QCoreApplication</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.UbuntuColors.md">UbuntuColors</a></p></td>
<td><p>Singleton defining the Ubuntu color palette</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></p></td>
<td><p>A ListView with special features tailored for a look and feel fitting the Ubuntu Touch platform. The UbuntuListView works just like a regular ListView, but it adds special features such as expanding/collapsing items (when used together with the Expandable item). It provides features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.UbuntuNumberAnimation.md">UbuntuNumberAnimation</a></p></td>
<td><p>NumberAnimation that has predefined settings to ensure that Ubuntu applications are consistent in their animations</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.UbuntuShape.md">UbuntuShape</a></p></td>
<td><p>Rounded rectangle containing a source image blended over a background color</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.UbuntuShapeOverlay.md">UbuntuShapeOverlay</a></p></td>
<td><p>Extended UbuntuShape adding a colored overlay layer</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.UriHandler.md">UriHandler</a></p></td>
<td><p>Singleton signalling for opened URIs</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.dateUtils.md">dateUtils</a></p></td>
<td><p>Various date utility functions</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.i18n.md">i18n</a></p></td>
<td><p>Context property that provides internationalization support</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.mathUtils.md">mathUtils</a></p></td>
<td><p>Various mathematical utility functions</p></td>
</tr>
</tbody>
</table>

gestures
Available through:

``` cpp
import Ubuntu.Components 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.SwipeArea.md">SwipeArea</a></p></td>
<td><p>An area which detects axis-aligned single-finger drag gestures</p></td>
</tr>
</tbody>
</table>

list-views-list-items
Components with standardized view items, with conditional actions, multiselect and reordering support on scrollable views. Replaces the Ubuntu.Components.ListItems module components.

Available through:

``` cpp
import Ubuntu.Components 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Captions.md">Captions</a></p></td>
<td><p>Container providing captionStyles for a twin-label column that can be used in RowLayout or GridLayout</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItem.md">ListItem</a></p></td>
<td><p>Element provides Ubuntu design standards for list or grid views. The ListItem component was designed to be used in a list view. It does not define any specific layout, but while its contents can be freely chosen by the developer, care must be taken to keep the contents light in order to ensure good performance when used in long list views</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItemActions.md">ListItemActions</a></p></td>
<td><p>Provides configuration for actions to be added to a ListItem</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItemDrag.md">ListItemDrag</a></p></td>
<td><p>Provides information about a ListItem drag event</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ViewItems.md">ViewItems</a></p></td>
<td><p>A set of properties attached to the ListItem's parent item or ListView</p></td>
</tr>
</tbody>
</table>

list-items-module-deprecated
This module contains the old set of list items.

Available through:

``` cpp
import Ubuntu.Components.ListItems 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.Base.md">Base</a></p></td>
<td><p>Parent class of various list item classes that can have an icon and a progression symbol</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.Caption.md">Caption</a></p></td>
<td><p>List item that shows a piece of text</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.Divider.md">Divider</a></p></td>
<td><p>To break up list items into groups</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p></td>
<td><p>A list item with no contents</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.Expandable.md">Expandable</a></p></td>
<td><p>An expandable list item with no contents. The Expandable class can be used for generic list items containing other components such as buttons. It subclasses Empty and thus brings all that functionality, but additionally provides means to expand and collapse the item</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.ExpandablesColumn.md">ExpandablesColumn</a></p></td>
<td><p>A column to be used together with the Expandable item. This lays out its content just like a regular Column inside a Flickable but when used together with items of type Expandable it provides additional features like automatically positioning the expanding item when it expands and collapsing it again when the user taps outside of it</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.ItemSelector.md">ItemSelector</a></p></td>
<td><p>ListItem displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.MultiValue.md">MultiValue</a></p></td>
<td><p>List item displaying multiple values</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.SingleControl.md">SingleControl</a></p></td>
<td><p>A list item containing a single control</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.SingleValue.md">SingleValue</a></p></td>
<td><p>A list item displaying a single value</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.Standard.md">Standard</a></p></td>
<td><p>Standard list item class. It shows a basic list item with a label (text), and optionally an icon, a progression arrow, and it can have an embedded Item (control) that can be used for including Buttons, Switches etc. inside the list item</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.Subtitled.md">Subtitled</a></p></td>
<td><p>List item displaying a second string under the main label</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ListItems.ThinDivider.md">ThinDivider</a></p></td>
<td><p>Narrow line used as a divider between ListItems</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ListItems.ValueSelector.md">ValueSelector</a></p></td>
<td><p>List item displaying single selected value when not expanded, where expanding it opens a listing of all the possible values for selection</p></td>
</tr>
</tbody>
</table>

pickers
Available through:

``` cpp
import Ubuntu.Components.Pickers 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Pickers.DatePicker.md">DatePicker</a></p></td>
<td><p>Component provides date and time value picking functionality</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Pickers.Picker.md">Picker</a></p></td>
<td><p>Slot-machine style value selection component</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Pickers.PickerDelegate.md">PickerDelegate</a></p></td>
<td><p>Component serves as base for Picker delegates</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.PickerPanel.md">PickerPanel</a></p></td>
<td><p>Provides a panel for opening a DatePicker in place of the input panel or as Popover, depending on the form factor</p></td>
</tr>
</tbody>
</table>

popovers-sheets-and-dialogs
Available through:

``` cpp
import Ubuntu.Components.Popups 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Popups.ActionSelectionPopover.md">ActionSelectionPopover</a></p></td>
<td><p>A special popover presenting actions to the user. The popover is closed automatically when the action is chosen</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Popups.Dialog.md">Dialog</a></p></td>
<td><p>Caters for cases in which the application requires the user to determine between optional actions. The Dialog will interrupt the user flow and lock the view for further interaction before the user has selected a desired action. It can only be closed by selecting an optional action confirming or cancelling the operation</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Popups.Popover.md">Popover</a></p></td>
<td><p>A popover allows an application to present additional content without changing the view. A popover has a fixed width and automatic height, depending on is contents. It can be closed by clicking anywhere outside of the popover area</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Popups.PopupBase.md">PopupBase</a></p></td>
<td><p>Base class for all dialogs, sheets and popovers. Do not use directly</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Popups.popupUtils.md">popupUtils</a></p></td>
<td><p>Popover utility functions</p></td>
</tr>
</tbody>
</table>

layouting
Available through:

``` cpp
import Ubuntu.Layouts 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></p></td>
<td><p>Defines the layout of a given form factor</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></p></td>
<td><p>Defines a new size &amp; position of a single Item, for the purposes of specifying layouts. This is to be used within a ConditionalLayout definition</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></p></td>
<td><p>Component allows one to specify multiple different layouts for a fixed set of Items, and applies the desired layout to those Items</p></td>
</tr>
</tbody>
</table>

theming-elements
Available through:

``` cpp
import Ubuntu.Components 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Themes.Palette.md">Palette</a></p></td>
<td><p>Of colors from the theme that widgets use to draw themselves</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></p></td>
<td><p>Color values used for a given widget state</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Theme.md">Theme</a></p></td>
<td><p>Facilities to interact with the current theme</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ThemeSettings.md">ThemeSettings</a></p></td>
<td><p>Facilities to define the theme of a StyledItem</p></td>
</tr>
</tbody>
</table>

theme-module
Available through:

``` cpp
import Ubuntu.Components.Themes 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Themes.Palette.md">Palette</a></p></td>
<td><p>Provides the palette of colors from the theme that widgets use to draw themselves</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></p></td>
<td><p>Color values used for a given widget state</p></td>
</tr>
</tbody>
</table>

style-api
The Style API defines the interface components use to style the visuals. Themes must make sure that these interfaces are all implemented. Available through:

``` cpp
import Ubuntu.Components.Styles 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Styles.ActionBarStyle.md">ActionBarStyle</a></p></td>
<td><p>Style API for action bar</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Styles.ActionItemProperties.md">ActionItemProperties</a></p></td>
<td><p>Color properties for buttons</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Styles.BottomEdgeStyle.md">BottomEdgeStyle</a></p></td>
<td><p>Style API for BottomEdge content holder panel</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Styles.ComboButtonStyle.md">ComboButtonStyle</a></p></td>
<td><p>Style API for ComboButton component</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Styles.ListItemStyle.md">ListItemStyle</a></p></td>
<td><p>Style API for ListItem component</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Styles.PageHeadStyle.md">PageHeadStyle</a></p></td>
<td><p>Style API for page header</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Styles.PageHeaderStyle.md">PageHeaderStyle</a></p></td>
<td><p>Style API for page header</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Styles.PullToRefreshStyle.md">PullToRefreshStyle</a></p></td>
<td><p>Style API for PullToRefresh component</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Styles.SectionsStyle.md">SectionsStyle</a></p></td>
<td><p>Style API for Sections</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Styles.ToolbarStyle.md">ToolbarStyle</a></p></td>
<td><p>Style API for toolbar</p></td>
</tr>
</tbody>
</table>

resolution-independence-items
Available through:

``` cpp
import Ubuntu.Components 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Units.md">Units</a></p></td>
<td><p>Of measurement for sizes, spacing, margin, etc</p></td>
</tr>
</tbody>
</table>

parsing-command-line-arguments
Available through:

``` cpp
import Ubuntu.Components 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Argument.md">Argument</a></p></td>
<td><p>Specifies what type a given command line parameter should be</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.Arguments.md">Arguments</a></p></td>
<td><p>Way to declare what command line parameters are expected by the application</p></td>
</tr>
</tbody>
</table>

services
Available through:

``` cpp
import Ubuntu.Components 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Alarm.md">Alarm</a></p></td>
<td><p>Component is a representation of an alarm event</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.AlarmModel.md">AlarmModel</a></p></td>
<td><p>Holds the list of alarms defined</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Haptics.md">Haptics</a></p></td>
<td><p>Singleton defining the haptics feedback used in components, where execution of the feedback is controlled by the system settings</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.ServiceProperties.md">ServiceProperties</a></p></td>
<td><p>Component enables accessing service properties from QML</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.StateSaver.md">StateSaver</a></p></td>
<td><p>Attached properties to save component property states</p></td>
</tr>
</tbody>
</table>

performance-metrics
Available through:

``` cpp
import Ubuntu.PerformanceMetrics 1.0
```

labs
The Labs module contains a set of components which have unstable API. Those should not be used in applications as their interface may change any time. Available through:

``` cpp
import Ubuntu.Components.Labs 1.0
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Components.Labs.SplitView.md">SplitView</a></p></td>
<td><p>A view component with a flexible layout configuration setup</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Components.SplitViewLayout.md">SplitViewLayout</a></p></td>
<td><p>Layout configuration for SplitView</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Components.ViewColumn.md">ViewColumn</a></p></td>
<td><p>View column metrics configuration for SplitView</p></td>
</tr>
</tbody>
</table>

test-extensions
Available through:

``` cpp
import Ubuntu Test 1.3
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="Ubuntu.Test.MouseTouchAdaptor.md">MouseTouchAdaptor</a></p></td>
<td><p>Singleton type turning mouse events into single finger touch events</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Test.TestExtras.md">TestExtras</a></p></td>
<td><p>Singleton type providing additional test functions</p></td>
</tr>
<tr class="odd">
<td><p><a href="Ubuntu.Test.UbuntuTestCase.md">UbuntuTestCase</a></p></td>
<td><p>Expands the default TestCase class</p></td>
</tr>
<tr class="even">
<td><p><a href="Ubuntu.Test.UbuntuTestCase13.md">UbuntuTestCase13</a></p></td>
<td><p>UbuntuTestCase class expands the default TestCase class</p></td>
</tr>
</tbody>
</table>

