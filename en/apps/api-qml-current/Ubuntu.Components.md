---
Title: Ubuntu.Components
---
        [AbstractButton](../Ubuntu.Components.AbstractButton.md)  
The AbstractButton class defines the behavior of the button.

[Action](../Ubuntu.Components.Action.md)  
Describe an action that can be re-used and shared between different components.

[ActionBar](../Ubuntu.Components.ActionBar.md)  
Show a row of buttons that trigger actions. When the number of visible actions specified is larger than numberOfSlots, an overflow button will be shown which triggers an overflow panel that shows the remaining actions.

[ActionContext](../Ubuntu.Components.ActionContext.md)  
ActionContext groups actions together and by providing multiple contexts the developer is able to control the visibility of the actions. The ActionManager then exposes the actions from these different contexts.

[ActionItem](../Ubuntu.Components.ActionItem.md)  
A visual representation of an Action. The API of ActionItem is a copy of the API of Action, with additional properties to define visual aspects of the ActionItem.

[ActionList](../Ubuntu.Components.ActionList.md)  
List of Action items

[ActionManager](../Ubuntu.Components.ActionManager.md)  
ActionManager manages actions and action contexts withion an application.

[ActivityIndicator](../Ubuntu.Components.ActivityIndicator.md)  
The ActivityIndicator component visually indicates that a task of unknown duration is in progress, e.g. busy indication, connection in progress indication, etc.

[AdaptivePageLayout](../Ubuntu.Components.AdaptivePageLayout.md)  
View with multiple columns of Pages.

[Alarm](../Ubuntu.Components.Alarm.md)  
Alarm component is a representation of an alarm event.

[AlarmModel](../Ubuntu.Components.AlarmModel.md)  
AlarmModel holds the list of alarms defined.

[Argument](../Ubuntu.Components.Argument.md)  
The Argument class specifies what type a given command line parameter should be.

[Arguments](../Ubuntu.Components.Arguments.md)  
The Arguments class provides a way to declare what command line parameters are expected by the application.

[BottomEdge](../Ubuntu.Components.BottomEdge.md)  
A component to handle bottom edge gesture and content.

[BottomEdgeHint](../Ubuntu.Components.BottomEdgeHint.md)  
The BottomEdgeHint shows the availability of extra features available from the bottom edge of the application.

[BottomEdgeRegion](../Ubuntu.Components.BottomEdgeRegion.md)  
Defines an active region within the BottomEdge component.

[Button](../Ubuntu.Components.Button.md)  
Standard Ubuntu button.

[Captions](../Ubuntu.Components.Captions.md)  
Container providing captionStyles for a twin-label column that can be used in RowLayout or GridLayout.

[CheckBox](../Ubuntu.Components.CheckBox.md)  
CheckBox is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as Switch, the only difference is the graphical style.

[Clipboard](../Ubuntu.Components.Clipboard.md)  
This is a singleton type providing access to the system clipboard.

[ComboButton](../Ubuntu.Components.ComboButton.md)  
Ubuntu button providing a drop-down panel visualizing custom options.

[CrossFadeImage](../Ubuntu.Components.CrossFadeImage.md)  
An Image like component which smoothly fades when its source is updated.

[FontUtils](../Ubuntu.Components.FontUtils.md)  
FontUtils is a context property, which provides utility functions for font manipulations.

[Haptics](../Ubuntu.Components.Haptics.md)  
Singleton defining the haptics feedback used in components, where execution of the feedback is controlled by the system settings.

[Header](../Ubuntu.Components.Header.md)  
Header bar that can contain the title and controls for the current view.

[Icon](../Ubuntu.Components.Icon.md)  
The Icon component displays an icon from the icon theme.

[InverseMouse](../Ubuntu.Components.InverseMouse.md)  
Attached object filtering mouse events occured outside the owner.

[InverseMouseArea](../Ubuntu.Components.InverseMouseArea.md)  
The InverseMouseArea captures mouse events happening outside of a given area.

[Label](../Ubuntu.Components.Label.md)  
Extended Text item with Ubuntu styling.

[ListItem](../Ubuntu.Components.ListItem.md)  
The ListItem element provides Ubuntu design standards for list or grid views. The ListItem component was designed to be used in a list view. It does not define any specific layout, but while its contents can be freely chosen by the developer, care must...

[ListItemActions](../Ubuntu.Components.ListItemActions.md)  
Provides configuration for actions to be added to a ListItem.

[ListItemDrag](../Ubuntu.Components.ListItemDrag.md)  
Provides information about a ListItem drag event.

[ListItemLayout](../Ubuntu.Components.ListItemLayout.md)  
ListItemLayout provides an easy way to create list items which follow Ubuntu design standards, thus making them visually appealing and consistent with the rest of the platform without effort.

[LiveTimer](../Ubuntu.Components.LiveTimer.md)  
A live timing source providing peridioc updates.

[MainView](../Ubuntu.Components.MainView.md)  
MainView is the root Item that should be used for all applications.

[MimeData](../Ubuntu.Components.MimeData.md)  
MimeData type provides interface to access and store data to the Clipboard.

[Mouse](../Ubuntu.Components.Mouse.md)  
Attached property filtering mouse events occured inside the owner.

[OptionSelector](../Ubuntu.Components.OptionSelector.md)  
Component displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being e...

[OrientationHelper](../Ubuntu.Components.OrientationHelper.md)  
The OrientationHelper automatically rotates its children following the orientation of the device.

[Page](../Ubuntu.Components.Page.md)  
A page is the basic Item that represents a single view in an Ubuntu application. It is recommended to use the Page inside the MainView or AdaptivePageLayout.

[PageColumn](../Ubuntu.Components.PageColumn.md)  
Component configuring the metrics of a column in AdaptivePageLayout.

[PageColumnsLayout](../Ubuntu.Components.PageColumnsLayout.md)  
Component configuring a layout in an AdaptivePageLayout component.

[PageHeadConfiguration](../Ubuntu.Components.PageHeadConfiguration.md)  
Page.head is used to configure the header for a Page.

[PageHeadSections](../Ubuntu.Components.PageHeadSections.md)  
PageHeadSections is used to configure the sections for a Page.

[PageHeadState](../Ubuntu.Components.PageHeadState.md)  
PageHeadState is a helper component to make it easier to configure the page header when changing states.

[PageHeader](../Ubuntu.Components.PageHeader.md)  
The PageHeader shows a title with a leading and a trailing ActionBar that add action buttons to the header.

[PageStack](../Ubuntu.Components.PageStack.md)  
A stack of Page items that is used for inter-Page navigation. Pages on the stack can be popped, and new Pages can be pushed. The page on top of the stack is the visible one.

[Panel](../Ubuntu.Components.Panel.md)  
A panel that can be swiped in and out from an edge of the window by the user. For most applications, it is highly recommended to use the MainView instead which includes a toolbar at its bottom that can be swiped in or out.

[PickerPanel](../Ubuntu.Components.PickerPanel.md)  
Provides a panel for opening a DatePicker in place of the input panel or as Popover, depending on the form factor.

[PopupContext](../Ubuntu.Components.PopupContext.md)  
A special ActionContext used in Dialogs and Popups.

[ProgressBar](../Ubuntu.Components.ProgressBar.md)  
The ProgressBar component visually indicates the progress of a process of determinate or indeterminate duration.

[ProgressionSlot](../Ubuntu.Components.ProgressionSlot.md)  
ProgressionSlot holds an icon representing the progression symbol.

[ProportionalShape](../Ubuntu.Components.ProportionalShape.md)  
Extended UbuntuShape mostly used for icons and vignettes.

[PullToRefresh](../Ubuntu.Components.PullToRefresh.md)  
Pull-to-refresh component for Flickables to reload a model upon pull.

[ScrollView](../Ubuntu.Components.ScrollView.md)  
ScrollView is a scrollable view that features scrollbars and scrolling via keyboard keys.

[Scrollbar](../Ubuntu.Components.Scrollbar.md)  
The Scrollbar component provides scrolling functionality for scrollable views (i.e. Flickable, ListView).

[Sections](../Ubuntu.Components.Sections.md)  
Display a list of sections that the user can select. By tapping on a section name the selectedIndex will be updated, and the associated Action is triggered.

[ServiceProperties](../Ubuntu.Components.ServiceProperties.md)  
The component enables accessing service properties from QML.

[Slider](../Ubuntu.Components.Slider.md)  
Slider is a component to select a value from a continuous range of values.

[SlotsLayout](../Ubuntu.Components.SlotsLayout.md)  
The SlotsLayout component provides an easy way to layout a list of user-interface elements horizontally following Ubuntu design standards. We call the elements which we want to layout "slots". **Slots** is just another name for SlotsLayout...

[SortFilterModel](../Ubuntu.Components.SortFilterModel.md)  
SortFilterModel sorts and filters rows from an existing model.

[StateSaver](../Ubuntu.Components.StateSaver.md)  
Attached properties to save component property states.

[StyleHints](../Ubuntu.Components.StyleHints.md)  
Component holding style specific properties to configure a particular StyledItem's style runtime.

[StyledItem](../Ubuntu.Components.StyledItem.md)  
The StyledItem class allows items to be styled by the theme.

[SwipeArea](../Ubuntu.Components.SwipeArea.md)  
An area which detects axis-aligned single-finger drag gestures.

[Switch](../Ubuntu.Components.Switch.md)  
Switch is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as CheckBox, the only difference is the graphical style.

[Tab](../Ubuntu.Components.Tab.md)  
Component to represent a single tab in a Tabs environment.

[TabBar](../Ubuntu.Components.TabBar.md)  
Tab bar that will be shown in the header when Tabs is active. This component does not need to be instantiated by the developer, it is automatically created by the Tabs.

[Tabs](../Ubuntu.Components.Tabs.md)  
The Tabs class provides an environment where multible Tab children can be added, and the user is presented with a tab bar with tab buttons to select different tab pages.

[TextArea](../Ubuntu.Components.TextArea.md)  
The TextArea item displays a block of editable, scrollable, formatted text.

[TextField](../Ubuntu.Components.TextField.md)  
The TextField element displays a single line of editable plain text. Input constraints can be set through validator or inputMask. Setting echoMode to an appropriate value enables TextField to be used as password input field.

[Theme](../Ubuntu.Components.Theme.md)  
The Theme class provides facilities to interact with the current theme.

[ThemeSettings](../Ubuntu.Components.ThemeSettings.md)  
The ThemeSettings class provides facilities to define the theme of a StyledItem.

[Toolbar](../Ubuntu.Components.Toolbar.md)  
Toolbar that can be used as an extension for the edit mode header. Example:

[ToolbarButton](../Ubuntu.Components.ToolbarButton.md)  
An ActionItem that represents a button in the toolbar. ToolbarButtons should be included in ToolbarItems to define the tools of a Page. The behavior and look of the toolbar button can be specified by setting an Action for the button, or by setting the ...

[Ubuntu](../Ubuntu.Components.Ubuntu.md)  
Provides global object with different enums.

[UbuntuAnimation](../Ubuntu.Components.UbuntuAnimation.md)  
Singleton defining standard Ubuntu durations and easing for animations that should be used to ensure that Ubuntu applications are consistent in their animations.

[UbuntuApplication](../Ubuntu.Components.UbuntuApplication.md)  
UbuntuApplication is a QML binding for a subset of QCoreApplication.

[UbuntuColors](../Ubuntu.Components.UbuntuColors.md)  
Singleton defining the Ubuntu color palette.

[UbuntuListView](../Ubuntu.Components.UbuntuListView.md)  
A ListView with special features tailored for a look and feel fitting the Ubuntu Touch platform. The UbuntuListView works just like a regular ListView, but it adds special features such as expanding/collapsing items (when used together with the Expanda...

[UbuntuNumberAnimation](../Ubuntu.Components.UbuntuNumberAnimation.md)  
UbuntuNumberAnimation is a NumberAnimation that has predefined settings to ensure that Ubuntu applications are consistent in their animations.

[UbuntuShape](../Ubuntu.Components.UbuntuShape.md)  
Rounded rectangle containing a source image blended over a background color.

[UbuntuShapeOverlay](../Ubuntu.Components.UbuntuShapeOverlay.md)  
Extended UbuntuShape adding a colored overlay layer.

[Units](../Ubuntu.Components.Units.md)  
Units of measurement for sizes, spacing, margin, etc.

[UriHandler](../Ubuntu.Components.UriHandler.md)  
Singleton signalling for opened URIs.

[ViewItems](../Ubuntu.Components.ViewItems.md)  
A set of properties attached to the ListItem's parent item or ListView.

[dateUtils](../Ubuntu.Components.dateUtils.md)  
Various date utility functions.

[i18n](../Ubuntu.Components.i18n.md)  
i18n is a context property that provides internationalization support.

[mathUtils](../Ubuntu.Components.mathUtils.md)  
Various mathematical utility functions.

