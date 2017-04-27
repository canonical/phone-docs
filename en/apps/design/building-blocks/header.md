---
Title: Header
---

# Header


Use the header to let the user know where they are, what they can do, and where they can go inside your application.

![750w_Header_Orientation (3)](https://assets.ubuntu.com/v1/8ec7cc1c-750w_Header_Orientation-3.png)


-  [Usage ›](#usage)

-  [Slots ›](#slots)

-  [Toolbar ›](#toolbar)

-  [Edit mode ›](#edit-mode)

-  [Responsive layout ›](#responsive-layout)

-  [Header appearance ›](#header-appearance)

-  [Header section ›](#header-section)

-  [Best practices ›](#best-practices)


![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)


The  [Header API](../../api-qml-current/Ubuntu.Components.Header.md) includes the exposed, flickable and moving properties of the header.


## Usage


The header area can contain the main navigation options and actions inside your app. It is used to enhance the user experience in specific device layouts.


## When should I use a header?


- If your app has multiple sections

- If your app performs an action that requires the full screen, such as a camera, then don’t use a header.


Multiple panels may appear when the surface or window increases in size. When this happens, each panel can contain its own header. For example, on a mobile surface, one panel is present at a time as the pages are stacked on top of each other in a hierarchical order. However, when translated onto a medium to large surface the panels become adjacent to each other and will contain their own header, while still remaining in a hierarchical order.


![l](https://assets.ubuntu.com/v1/8311396f-366w_Header_Usage1panel.png)


![750w_Header_Usage2panels](https://assets.ubuntu.com/v1/0d024d94-750w_Header_Usage2panels.png)


- **Navigational options **on the left


The navigation area can include a Back Button, title, a subtitle or a navigation drawer for when there is no room to fit all buttons for major views.


- **Actions **on the right


The action area can include actions such as settings, search, views, or an action drawer for when there’s no room to place further actions.


![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)


Don’t use a navigation drawer and an action drawer at the same time, because users are unlikely to distinguish between them.


## Slots


The header contains a number of slots that can hold actions or navigational options. Depending on the surface or window size, additional slots can be added to show the actions otherwise hidden in drawers.

![750w_Header_HeaderComponents](https://assets.ubuntu.com/v1/bc59f393-750w_Header_HeaderComponents.png)


![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)


Think about the most important actions and views you want the user to perform and make it easy for them to find by using the header.


For smaller surfaces, such as on mobile, the SDK provides a maximum of four slots per header that can be arranged in two ways.

![750w_Header_Slots (2)](https://assets.ubuntu.com/v1/1340e785-750w_Header_Slots-2.png)


## Slot arrangement


Slots can be arranged in a variety of ways to surface actions and navigational options to best suit the user experience of your application.


## Slot A
![366w_Header_SlotAexample1 (3)](https://assets.ubuntu.com/v1/625656cf-366w_Header_SlotAexample1-3.png)

- First position on the left hand side

- When slot A is not needed, slot B should move to this position

- A navigation drawer can displays all main views in an application


## Slot B
![366w_Header_SlotBexample1 (3)](https://assets.ubuntu.com/v1/132ac0cf-366w_Header_SlotBexample1-3.png)

- Mandatory title of your app or view, only one line

- An optional subtitle can sit below the title, which can be two lines


## Slot C


Slot C can have any action inside it, such as ‘Add new contact’ or a ‘Call’ action.


## Search
![366w_Header_SlotCexample1 (3)](https://assets.ubuntu.com/v1/d9aca9a6-366w_Header_SlotCexample1-3.png)


If you are using Slot C for Settings, then it should always be positioned last.


## Settings
![366w_Header_SlotCexample2 (2)](https://assets.ubuntu.com/v1/f645dd1d-366w_Header_SlotCexample2-2-1.png)


If you are using Slot C to place a Search icon, or any other action, then place it to the right of the title.


## Action drawer


An action drawer can be used for when no other slots are available to show them. However, when your app is on a larger surface, like on a desktop, then actions will appear in the slots.


![366w_Header_ActionDrawerExpanded (1)](https://assets.ubuntu.com/v1/601b7473-366w_Header_ActionDrawerExpanded-1.png)


## Responsive layout


As the header gains width across screen sizes, additional slots become visible and actions in the drawer will appear automatically.


## 3 slot layout
![Header_SlotArrangement1 (2)](https://assets.ubuntu.com/v1/407df52e-Header_SlotArrangement1-2.png)


## 4 slot layout
![Header_SlotArrangement2 (2)](https://assets.ubuntu.com/v1/bf9f7a5f-Header_SlotArrangement2-2.png)


## 5 slot layout
![Header_SlotArrangement3 (2)](https://assets.ubuntu.com/v1/ed3d7a0b-Header_SlotArrangement3-2.png)


## 6 slot layout
![Header_SlotArrangement4 (3)](https://assets.ubuntu.com/v1/a2a5f31e-Header_SlotArrangement4-3.png)
![Header_SlotArrangement5 (2)](https://assets.ubuntu.com/v1/28d29fbc-Header_SlotArrangement5-2.png)


## Medium to large screens


The maximum number of visible action slots in a convergent environment is 6. If this is exceeded then additional actions will migrate to the action drawer.


![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)


If your header has no more slots for actions, then everything after Slot D goes into Slot E inside an action drawer.


## Search inside the header


You can use search within the main header to filter the currently displayed content; or as a global search.

![750w_Header_HeaderSearchV2 (4)](https://assets.ubuntu.com/v1/6ee0744c-750w_Header_HeaderSearchV2-4.png)


## Multi-panel layout


Search can appear in both panels when two or more headers are present. For example, in a mail client you may want a filter for your inbox in the first panel, and a search in the second panel to find a recipient.

![750W_Header_Convergence search (1)](https://assets.ubuntu.com/v1/3a50895d-750W_Header_Convergence-search-1.png)

![750w_Header_Convergence search box (1)](https://assets.ubuntu.com/v1/65192f75-750w_Header_Convergence-search-box-1.png)


Avoid placing search in both panels unless necessary, because it could confuse the user as to what content is being filter. For example, they may type in the wrong field to search for a specific query if it isn’t in a hierarchical order.


![no alt text](https://assets.ubuntu.com/v1/75f60d24-link_external.png)


Find more information on search in the header see Navigation (coming soon).


## Toolbar


The toolbar is an additional component that can be used to hold actions.


![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)


The  [Toolbar API](../../api-qml-current/Ubuntu.Components.Toolbar.md) allows you to determine the action or options you want to display in the toolbar.


## Edit mode


Edit mode allows users to modify a particular item or multiple items at once. To enter edit mode users can initiate it by directly interacting with a list item, title or card, or through an action inside the header.


## When should I use edit mode?


Use a separate edit mode if making the information editable all the time would substantially interfere with viewing, copying, or other tasks. For example, in the Notes app, if a note were editable all the time then the OSK would take up valuable reading space, and hyperlinks in notes would be hard to click or tap.


A toolbar can be used below the header to provide additional actions associated with editing. When editing content the actions that appear inside the main header and toolbar are relevant to an edit state allowing the user to perform tasks on the content, such as: select, rearrange or delete.


## Use cases


## #Actions in the header ‐ picking and editing content


If a primary action of your app is to allow users to select and move content in a list, such as a list of contacts, then surface the editing action inside the main header.


Once the user has initiated the editing action, the toolbar will appear below the header with the associated editing actions for the content.


![366w_Header_EditInHeader1 (5)](https://assets.ubuntu.com/v1/364bc3c2-366w_Header_EditInHeader1-5.png)


![366w_Header_EditInHeader2 (3)](https://assets.ubuntu.com/v1/1b4486ee-366w_Header_EditInHeader2-3.png)


If you only use one text button then place it on the left hand side, because it will be easier for the user to reach with one gesture.


![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)


The toolbar can contain additional actions other than editing ones, such as ‘Share’ or ‘Forward’.


## Edit mode in a multi-panel layout


Edit mode can be triggered through an action in the header or right-clicking or long-pressing the contextual menu.

![750w_Header_MultiPanelLayout1 (4)](https://assets.ubuntu.com/v1/c341714c-750w_Header_MultiPanelLayout1-4.png)


An activated edit mode must always apply to the panel view it is triggered in. It should not affect any other panels.

![750w_Header_MultiPanelLayout2 (2)](https://assets.ubuntu.com/v1/bd08ea1b-750w_Header_MultiPanelLayout2-2.png)


If you need a delete icon place it on the left of the toolbar. If the  content you are editing needs to be saved then use two text buttons instead, such as ‘Cancel’ and ‘Save’.


![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)


Place negative actions on the left and positive actions on the right in the main header for consistency across the platform. See  [Design values](/apps/design/get-started/design-values) for more information.


## Toolbar placement


The toolbar appears below the main header when edit mode is initiated.

![750w_Header_ToolBar (1)](https://assets.ubuntu.com/v1/301fcba0-750w_Header_ToolBar-1.png)


1. Main header

2. Toolbar


## Header appearance


You can decide how you want the header to appear in four ways: Fixed, Fixed and Opaque, Fixed and Transparent and Hidden.


![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)


When a header is displayed in a larger surface or a window, such as in a desktop, it will be fixed, because there will be more room to display content.


## Fixed (default)


A fixed header will appear at all times until the user starts to scroll down within your app’s content. Having a fixed header can be useful if you have a few sections or actions that need to be accessible even when the user scrolls. For instance, in a photo editing app the user may want the editing tools to be fixed in the header for easier access.


If your app displays a header section below the main header, then it will follow the defined behavior of the main header.


![366w_Header_TouchEnvironment1 (1)](https://assets.ubuntu.com/v1/54decf55-366w_Header_TouchEnvironment1-1.png)


The header can be brought back into view by:


- scrolling up on the content

- tapping or interacting with the content.


![366w_Header_TouchEnvironment2 (2)](https://assets.ubuntu.com/v1/a3cd80c6-366w_Header_TouchEnvironment2-2.png)


## Fixed and transparent


The header will be available at all times and have a transparency of 80-90%. This type of header can be useful if you don’t want it to be the focus of attention, but still available if the user wishes to have quicker access to a view or action.


![366w_Header_HeaderFixedTransparent](https://assets.ubuntu.com/v1/665d0605-366w_Header_HeaderFixedTransparent.png)


## Multi-panel layout


If your app is presented in a multi-panel layout, then the headers that appears in each panel will remain fixed and always visible when scrolling.

![750w_Header_TouchMultiPanelView1 (1)](https://assets.ubuntu.com/v1/03b1c161-750w_Header_TouchMultiPanelView1-1.png)

![750w_Header_TouchMultiPanelView2 (1)](https://assets.ubuntu.com/v1/b4b4d221-750w_Header_TouchMultiPanelView2-1.png)


**Overwritten fixed header**


If you choose to overwrite the default header, then it should:

- react with its associated panel

- not affect other panels.


![750w_Header_OverwrittenFixedheader1 (1)](https://assets.ubuntu.com/v1/30d7a000-750w_Header_OverwrittenFixedheader1-1.png)

![750w_Header_OverwrittenFixedheader2 (1)](https://assets.ubuntu.com/v1/46f5aaf1-750w_Header_OverwrittenFixedheader2-1.png)


## Hidden
![366w_Header_HeaderHidden](https://assets.ubuntu.com/v1/012020a0-366w_Header_HeaderHidden.png)


## Overlay

![366w_Header_HeaderFixedTransparent](https://assets.ubuntu.com/v1/665d0605-366w_Header_HeaderFixedTransparent.png)


The header is not visible to the user. This type of header is useful for full-screen applications, such as the Camera app.


Useful in displaying more content in a single screen.


## Apps without a header


If you choose not to have a header then think about how users will navigate through your UI in a different way.


## Overview
![366w_Header_HeaderCustumised1](https://assets.ubuntu.com/v1/90d79b0a-366w_Header_HeaderCustumised1.png)


## Top level
![366w_Header_HeaderCustumised2](https://assets.ubuntu.com/v1/beb45276-366w_Header_HeaderCustumised2.png)


For example, the Clock app has a customized header and uses icons at the top of the screen to take the user to different modes of the app.


## Header section


The header section allow users to easily shift between category views within the same page. It has the same visibility as the main header. For example, if the header is set to default it will slide away with the sections when the user scrolls down.


![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)


The  [Section API](../../api-qml-current/Ubuntu.Components.Sections.md) displays a list of sections that the user can select. It is strongly recommended to limit the number of sections to two or three to avoid a cultured looking header.


## Dekko app


![366w_Header_ActionInHeader1 (6)](https://assets.ubuntu.com/v1/87bb9446-366w_Header_ActionInHeader1-6.png)


![366w_Header_ActionInHeader2 (2)](https://assets.ubuntu.com/v1/c7289222-366w_Header_ActionInHeader2-2.png)


For example, if your app was presenting an inbox of emails, from ‘All’, the sub-sections could display ‘Recent’ and ‘Archive’ to further filter the content. More sections on the screen can be visible by swiping right.


## When a mouse is attached
![750w_Header_Pointer environment](https://assets.ubuntu.com/v1/d9100a09-750w_Header_Pointer-environment.png)


More tabs are indicated by an arrow revealed when the user interacts with the header section using a mouse.

![750w_Header_HeaderSection](https://assets.ubuntu.com/v1/3d853bd3-750w_Header_HeaderSection.png)


1. **The main header** is a separate component that can hold actions and navigational options

2. **The header section** sits below the main header and allows for sub-navigation or filtering within the screen, which is indicated by the header above. One option is always selected


## Best practices

## Header section


![366w_Header_ClearHeader1 (1)](https://assets.ubuntu.com/v1/4a88eac0-366w_Header_ClearHeader1-1.png)
![do_32](https://assets.ubuntu.com/v1/74c13c17-do_32+%281%29.png)

## Do


Make your sections clear and concise.


![366w_Header_ClearHeader2 (2)](https://assets.ubuntu.com/v1/9beb16cf-366w_Header_ClearHeader2-2.png)
![dont_32](https://assets.ubuntu.com/v1/01fb853b-dont_32.png)

## Don’t


The header section can look cluttered if you make the titles too big.


## Actions


Allow users quick access to the most important actions by placing them inside the header. For example, in the Contact app: ‘Call’ and ‘Add Contact’ are available in the header to give quick access to the Dialler and Address book.


![366w_Header_ClearHeaderAction (1)](https://assets.ubuntu.com/v1/50dcda9a-366w_Header_ClearHeaderAction-1.png)


