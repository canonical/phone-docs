---
Title: List items
table_of_contents: true
---

# List items

List items can be used to make up a list of ordered scrollable items that are related to each other.

![750w_ListItems_MainImage-1)](https://assets.ubuntu.com/v1/12134b24-750w_ListItems_MainImage-1.png)

|![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)|[See the ListItemLayout API that provides customisable templates](../../api-qml-current/Ubuntu.Components.ListItemLayout.md), and the  [ListItem API](../../api-qml-current/Ubuntu.Components.ListItem.md) that provides swiping actions.|
|-----|-----|

## Overview

Lists are displayed in a single column layout and are made up of items that can contain one or more controls. Items should be grouped together in a logical way that makes sense to the user.

## Items in a form
![366w_ListItems_UseCases1-1](https://assets.ubuntu.com/v1/afc631f2-366w_ListItems_UseCases1-2.png)

## A list of settings
![366w_ListItems_UseCases2-1](https://assets.ubuntu.com/v1/2903062e-366w_ListItems_UseCases2-2.png)

## Use appropriately to the content
![366w_ListItems_ImageList-1](https://assets.ubuntu.com/v1/755e0c6f-366w_ListItems_ImageList-1.png)

When images or icons are presented without text or actions, it would make more sense to show them inside a grid rather than a list; like in a photo gallery.

## Use search function
![366w_ListItems_UseCaseSearchFunction-1](https://assets.ubuntu.com/v1/a9e74185-366w_ListItems_UseCaseSearchFunction-2.png)

Consider adding a search function for lists that are likely to contain a large number of items, in order for the users to quickly search a particular item.

## Contextual actions for list items

Items in a list can have actions that can be placed in a context menu. The context menu can be accessed in two ways: by swiping or right-clicking the list item.

Touch and pointer interactions perform the same functions across convergent devices for consistency and familiarity across the platform. Swiping right may reveal a button for the leading action, such as ‘Delete’ or something similar. Swiping left may reveal buttons for (up to) three other important actions; these are the trailing actions. When the user interacts with an item using a mouse, right-clicking will reveal the context menu, and click and drag will reveal the leading and trailing actions either side of the item. This gives the same experience as swiping.

The actions are placed within two categories: leading for negative actions and trailing for positive actions. Grouping actions into positive and negative areas inside your list items will reinforce familiarity inside your app; allowing users to find and identify important actions easily.

![366w_ListItems_ContextualActions1-3](https://assets.ubuntu.com/v1/f0bff2bc-366w_ListItems_ContextualActions1-3.png)

## Touch – Leading action

Swipe left to right

![366w_ListItems_ContextualActions2](https://assets.ubuntu.com/v1/0238f83e-366w_ListItems_ContextualActions2.png)

## Touch – Trailing action

Swipe right to left

![366w_ListItems_ContextualActionsPointer-3](https://assets.ubuntu.com/v1/ffb1c374-366w_ListItems_ContextualActionsPointer-3.png)

## Pointer

A user can right-click to reveal the contextual menu, or drag right to left to reveal the leading or trailing options in an item.

![366w_ListItems_ContextualActionsFocus](https://assets.ubuntu.com/v1/93863db6-366w_ListItems_ContextualActionsFocus.png)

## Focus

A user can reveal the contextual menu by focusing on an item using keyboard navigation and hitting a keyboard key to reveal it.

## Lists in edit mode

Edit mode allows users to modify a particular item or multiple items at once.

You can use edit mode to allow users to multi-select, rearrange or delete items inside a list. When edit mode is entered the whole screen becomes an edit state and the header will show associated editing actions for the content. Alternatively, if the user long presses an item a context menu will show the associated editing actions too.

## Use case

![366w_ListItems_ListEditMode1-1](https://assets.ubuntu.com/v1/03e5997a-366w_ListItems_ListEditMode1-4.png)

![366w_ListItems_ListEditMode2-1](https://assets.ubuntu.com/v1/880961a6-366w_ListItems_ListEditMode2-3.png)

## Edit contacts

In the Contacts app for example, the list of contacts is made editable to allow users to delete or edit a contact’s information.

1. A user selects an item in the list by using the edit icon in the header.

2. The list becomes selectable with checkboxesthat provides swiping actions for multi-select mode.

3. The header changes to reveal editing actions, and the header section is replaced with a toolbar underneath the main header with further editing actions.

|![no alt text](https://assets.ubuntu.com/v1/75f60d24-link_external.png)|For more information about how edit mode is used see  [Header](header.md).|
|-----|-----|

## Structure

The toolkit provides list item layouts that consist of 1 to 4 slots which can be arranged in a variety of ways. These slots can contain components that allow the list item to perform actions and display content.

## Slot A (mandatory)

Can only contain text, such as a title with an optional subtitle.

![750w_ListItems_4SlotLayout](https://assets.ubuntu.com/v1/334e715a-750w_ListItems_4SlotLayout.png)

## Slot B (optional)

For additional text, an icon or a component.

![750w_ListItems_1SlotLayout](https://assets.ubuntu.com/v1/8c57eddf-750w_ListItems_1SlotLayout.png)

![developer_links.](https://assets.ubuntu.com/v1/608696e3-developer_links.png)

List items must always contain at least one slot.

## Chevron (optional)

If your list item allows for navigation through to an associated view, then a ProgressionSlot (chevron) is used in a fixed position in the right-most slot. No other actions is displayed in this slot, because this would conflict with the chevron navigation.

|![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)|The  [ProgressionSlot API](../../api-qml-current/Ubuntu.Components.ProgressionSlot.md) is designed to provide an easy way for developers to add a progression symbol to the list item created using ListItemLayout or SlotsLayout.|
|-----|-----|

![366w_ListItems_Chevron1-1](https://assets.ubuntu.com/v1/08b912ae-366w_ListItems_Chevron1-4.png)

![366w_ListItems_Chevron2-1](https://assets.ubuntu.com/v1/912aaefd-366w_ListItems_Chevron2-3.png)

## Content

If you use the ListItemLayout API then Slot A can contain a 1 line title, a subtitle, and a 2 line summary. If you use SlotsLayout API, you can put whatever you choose in to Slot A. A recommendation is to place the most distinguishing content in the first line of your list item.

Text is always aligned according to the currently displayed language. For example, in the case of English it is left to right, whereas Arabic is right to left.

![750w_ListItems_Content3](https://assets.ubuntu.com/v1/b71e1e47-750w_ListItems_Content3.png)

## ListItemLayout labels:

1. 1 line – Title

2. 1 line – Subtitle

3. 2 lines – Summary

|![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)|Developers are free to override the maximum amount lines for each label. See the  [Label API](../../api-qml-current/Ubuntu.Components.Label.md) for more information.|
|-----|-----|

## Actions

## Primary

The primary action is the main action you want a user to perform.

## Secondary

A secondary action is an action the user may wish to perform instead of the primary action.

![750w_ListItems_1action2action-1](https://assets.ubuntu.com/v1/b861e52d-750w_ListItems_1action2action-3.png)

## One action

Primary action: a user wants to turn their dial paid sound on or off.

## Two actions

Primary action: a user can call using tap or click on a contacts name.

Secondary action: a user can message a contact by taping or clicking on the message action icon.

## Two actions – with primary icon

Primary action: call using tap or click on the dial action.

Secondary action: message using tap or click on the message action icon.

|![information-link](https://assets.ubuntu.com/v1/e9f11635-information-link.png)|Avoid creating visual noise by repeatedly using additional actions in list items.|
|-----|-----|

## Touch regions

Tapping anywhere in the list item should perform the primary action. The secondary action is only triggered by touching a particular touch region where the action resides.

For example, user will expect to tap on the contact name or call button (primary action) to call a contact. The secondary action would be to message the contact using the message action icon.

![366w_ListItems_ActionsPrimary-1](https://assets.ubuntu.com/v1/7ab1c77d-366w_ListItems_ActionsPrimary-1.png)

![366w_ListItems_ActionsSecondary-1](https://assets.ubuntu.com/v1/a70a0b6c-366w_ListItems_ActionsSecondary-1.png)

Primary action – call

Secondary action – message

## Communicating feedback

You can use a slot to communicate if something has changed within a list item. For example, a timestamp on a message indicates when the message was received and a tick to show the message has been read.

![366w_ListItems_InformationStates](https://assets.ubuntu.com/v1/1283edc7-366w_ListItems_InformationStates.png)

## Use text labels

If a list item needs to provide feedback from an associated action, then the list item should not be used to communicate this.

![366w_ListItems_CommunicatingFeedback1-1](https://assets.ubuntu.com/v1/7c36aac8-366w_ListItems_CommunicatingFeedback1-1.png)

![366w_ListItems_CommunicatingFeedback2-1](https://assets.ubuntu.com/v1/9c48008e-366w_ListItems_CommunicatingFeedback2-1.png)

In System Settings if a user has tried to connect to another device using Bluetooth and no device has been found, a text label within the view is used to indicate feedback.

## List item layouts

The toolkit provides a number of layouts when creating a list item to ensure users get the best experience from your app across different surfaces.

**Consider:**

- Slot A is mandatory and should always contain text.

- The maximum number of slots is four.

|![information-link](https://assets.ubuntu.com/v1/e9f11635-information-link.png)|You can place what you wish inside the slots. However, these recommendations take into consideration cognitive familiarity to provide a clean and minimalist look.|
|-----|-----|

![366w_ListItems_OneSlotSmall-1](https://assets.ubuntu.com/v1/26479ed7-366w_ListItems_OneSlotSmall-2.png)

## One slot

![366w_ListItems_TwoSlotSmall2](https://assets.ubuntu.com/v1/f4572937-366w_ListItems_TwoSlotSmall2.png)

## Two slot

![366w_ListItems_ThreeSlotSmall2-1](https://assets.ubuntu.com/v1/0ef2a52e-366w_ListItems_ThreeSlotSmall2-1.png)

## Three slot

![366w_ListItems_FourSlotSmall2-1](https://assets.ubuntu.com/v1/c161036d-366w_ListItems_FourSlotSmall2-1.png)

## Four slot

|![no alt text)(https://assets.ubuntu.com/v1/75f60d24-link_external.png)|Provide a caption under the title to give the user more information if necessary. For example, displaying a contact’s email address saves the user clicking through to find the information.|
|-----|-----|

## Avoid cluttered list items
![366w_ListItems_FourSlotBad](https://assets.ubuntu.com/v1/b340de77-366w_ListItems_FourSlotBad.png)

In this example, the list item is too overcrowded and it is not immediately apparent what the primary action is.
