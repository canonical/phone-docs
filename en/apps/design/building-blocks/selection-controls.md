---
Title: Selection controls
table_of_contents: true
---

# Selection controls

The following components are used to change the state of a property or setting from a set of predefined values.

![750w_FormElements_Alignment-1)](https://assets.ubuntu.com/v1/ee20c929-750w_FormElements_Alignment-1.png)

## Checkbox

Use a checkbox to enable or select an option from a list; or as a singular option. For example, a singular option that is an instruction to the system such as ‘Show password’, or selecting a property to be applied or unapplied to add or change a setting; such as changing a font style to ‘Bold’ and ‘Italic’.

|![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)|The  [Checkbox API](../../api-qml-current/Ubuntu.Components.CheckBox.md) is a component with two states: checked or unchecked. It can be used to set boolean options.|
|-----|-----|

## Multiple options
![366w_FormElements_MultipleOptions](https://assets.ubuntu.com/v1/880961a6-366w_FormElements_MultipleOptions.png)

Use multiple checkboxes to allow users to select more than one option. For example, selecting a number of contacts from a list to delete at once.

## Single option
![366w_FormElements_SingleOptions](https://assets.ubuntu.com/v1/72eb1894-366w_FormElements_SingleOptions.png)

Use stand-alone checkboxes for a single option where the user can turn it on or off, or select or unselect an option. For example, selecting automatic brightness adjustment in System Settings you only need one checkbox.

## Use cases

If you are asking the user to turn a setting or instruction on or off, then use a switch instead. For example, turning the Bluetooth setting on or off.

![366w_ListItems_CommunicatingFeedback1-1](https://assets.ubuntu.com/v1/7c36aac8-366w_ListItems_CommunicatingFeedback1-1.png)

## Make the options clear

![366w_FormElements_UseCasesDo](https://assets.ubuntu.com/v1/64679339-366w_FormElements_UseCasesDo.png)

![do_32](https://assets.ubuntu.com/v1/74c13c17-do_32+%281%29.png)

## Do

Use radio buttons or a radio menu if you have enough space for both the label and the option at once. This gives the user a clearer understanding of the choices they can make.

![366w_FormElements_UseCasesDont-1](https://assets.ubuntu.com/v1/41fb847d-366w_FormElements_UseCasesDont-1.png)
![dont_32](https://assets.ubuntu.com/v1/01fb853b-dont_32.png)

## Don’t

Use a single checkbox when it is not clear what the alternative option is. For example, the user might want to set their time zone manually, so give them that option as well.

## Selection
![366w_FormElements_Selection-1](https://assets.ubuntu.com/v1/1f50798e-366w_FormElements_Selection-1.png)

Each checkbox is independent of each other and can be selected individually. However, if the indeterminate checkbox is checked then all checkboxes are selected and unselected, respectively.

## Confirmation
![366w_FormElements_Confirmation-1](https://assets.ubuntu.com/v1/a3971eaa-366w_FormElements_Confirmation-1.png)

Use for single selection where users confirm an action, such as accepting Terms and Conditions of a setting.

|![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)|Use indeterminate checkboxes when the value is neither checked or unchecked.|
|-----|-----|

## Make it obvious

Don’t make it hard for the user to understand the effect of the unchecked value.

![366w_FormElements_MakeItObvious_Good-1](https://assets.ubuntu.com/v1/7ea5ce57-366w_FormElements_MakeItObvious_Good-1.png)
![do_32](https://assets.ubuntu.com/v1/74c13c17-do_32+%281%29.png)

## Do

![366w_FormElements_MakeItObvious_Bad-1](https://assets.ubuntu.com/v1/f765e6c2-366w_FormElements_MakeItObvious_Bad-1.png)
![dont_32](https://assets.ubuntu.com/v1/01fb853b-dont_32.png)

## Don’t

## Alignment

When aligning checkboxes with labels, or other dependent controls, it is important that the user knows which checkbox belongs to the corresponding explanation.

![750w_FormElements_Alignment-1](https://assets.ubuntu.com/v1/ee20c929-750w_FormElements_Alignment-1.png)

|![no alt text](https://assets.ubuntu.com/v1/75f60d24-link_external.png)|For more guidance on using familiar language and the right tone of voice for labels see Writing (coming soon).|
|-----|-----|

## Radio buttons

Use radio buttons when there is a list of two or more options that are exclusive of each other and only one choice can be selected.

## Choosing a message tone
![366w_FormElements_MessageTone](https://assets.ubuntu.com/v1/2374ae19-366w_FormElements_MessageTone.png)

Clicking a non-selected radio button will deselect whichever button was previously selected. For example, ‘Soft delay’ will be deselected if the user selects another option.

|![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)|Options presented with radio buttons require less mental effort, because users can easily compare options as they are all visible at once.|
|-----|-----|

## One selection – use radio buttons
![366w_FormElements_OneSelection](https://assets.ubuntu.com/v1/ab39ea6e-366w_FormElements_OneSelection.png)

## Multiple selection – use checkboxes
![366w_FormElements_MultipleSelection](https://assets.ubuntu.com/v1/b958d70a-366w_FormElements_MultipleSelection.png)

## Use other controls if necessary

If you have a selection of options that are long to list and the user could type it faster, then use a text field instead.

![366w_FormElements_OtherControls_radio](https://assets.ubuntu.com/v1/b74dd1e8-366w_FormElements_OtherControls_radio.png)
![do_32](https://assets.ubuntu.com/v1/74c13c17-do_32+%281%29.png)

## Do

![366w_FormElements_OtherControls_form](https://assets.ubuntu.com/v1/c505cfa3-366w_FormElements_OtherControls_form.png)
![dont_32](https://assets.ubuntu.com/v1/01fb853b-dont_32.png)

## Don’t

Don’t use a radio menu entirely for command items. If the menu never contains any radio items, then use a toolbutton menu instead.

|![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)|A toolbutton is a borderless button, as found in the header or a bottom-edge panel. It usually consists of an icons, but may instead contain text buttons. See Buttons (coming soon) for more details.|
|-----|-----|

## Radio list

If you have a large set of radio buttons then place them in a list. That way users can easily navigate and scroll through the options.

## A list of organizations
![366w_FormElements_Organisations](https://assets.ubuntu.com/v1/4adf01fa-366w_FormElements_Organisations.png)

## Don’t interrupt the user

When a user selects an option avoid hindering them from choosing another option by opening up a dialog or closing the window.

![750w_FormElements_DontInterupt](https://assets.ubuntu.com/v1/48b5d7bc-750w_FormElements_DontInterupt.png)

## Switches

The switch allows the user to perform an action by turning it on or off.

![750w_FormElements_UseCasesBluetooth](https://assets.ubuntu.com/v1/49e2bc42-750w_FormElements_UseCasesBluetooth.png)

|![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)|The  [Switch API](../../api-qml-current/Ubuntu.Components.Switch.md) is a component with two states: checked or unchecked. It can be used to set boolean options. The behavior is the same as CheckBox, the only difference is the graphical style.|
|-----|-----|

## Use cases

If you are asking the user to turn a setting or instruction on or off, then use a switch.

![366w_ListItems_UseCases1-1](https://assets.ubuntu.com/v1/afc631f2-366w_ListItems_UseCases1-2.png)

## When not to use

If you asking the user to choose between options to set a value, then use checkboxes or radio buttons instead. For example, choosing a selection of font styles where you can have a combination.

![366w_FormElements_WhenNotToUse-1](https://assets.ubuntu.com/v1/35a239fa-366w_FormElements_WhenNotToUse-1.png)

## Date and time pickers

The toolkit provides a combination of multiple pickers for you to use to show the time and date in your app.

## Spinner

Use the spinner component to display a set of values on a reel that can be either flickable or draggable.

|![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)|The  [PickerPanel API](../../api-qml-current/Ubuntu.Components.PickerPanel.md) is a component that provides the date and time values with picking functionality.|
|-----|-----|

## Display month, year and day
![366w_FormElements_DayMonth](https://assets.ubuntu.com/v1/2355f6a3-366w_FormElements_DayMonth.png)

## Display time
![366w_FormElements_time](https://assets.ubuntu.com/v1/e0fdbcf7-366w_FormElements_time-picker.png)

## Layout

There are three possible ways you can layout pickers: fullscreen overlay, as a popover, or embedded into the UI.

## Fullscreen overlay

Use a fullscreen overlay in larger screen environments, such as tablet or desktop.

![366w_FormElements_date desktop](https://assets.ubuntu.com/v1/f4f47c55-366w_FormElements_date-desktop.png)

## Popover
![366w_FormElements_time picker](https://assets.ubuntu.com/v1/e0fdbcf7-366w_FormElements_time-picker.png)

Use for popup or inline calendars when you are short of space.

## Embedded
![366w_FormElements_embedded](https://assets.ubuntu.com/v1/9d7306e9-366w_FormElements_embedded.png)

Use for when you want the picker to be expandable and always visible. For example, inside the Clock app you will see it used for when you want to edit an alarm.

## Using multi-spinners

The Time Picker supports hour, minute and seconds elements in any combination; except hours with seconds.

## Three spinner time picker
![366w_FormElements_time 3 inputs-1](https://assets.ubuntu.com/v1/75225ed8-366w_FormElements_time-3-inputs-1.png)

|![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)|An AM/PM selector will be added if the 12-hour clock is used.|
|-----|-----|

## Slider

Use interactive sliders to select a value from a continuous or discrete range of values.

|![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)|The  [Slider API](../../api-qml-current/Ubuntu.Components.Slider.md) is a component that allow the user to select a value from a continuous range of values.|
|-----|-----|

## Slider types

You can choose between different slider types to allow the user to set different values.

|![no alt text](https://assets.ubuntu.com/v1/e9f11635-information-link.png)|The interactive nature of the slider makes it a great choice for settings that reflect intensity levels, such as volume, brightness, or colour saturation.|
|-----|-----|

## Default slider

You can use this slider to select a specific value or a maximum value in a range. For example, adjusting the screens brightness percentage.

![366w_FormElements_DefaultSlider-1](https://assets.ubuntu.com/v1/c1984dd9-366w_FormElements_DefaultSlider-1.png)

## Minimum value slider
![366w_FormElements_MinimumValueSlider](https://assets.ubuntu.com/v1/cf51ab65-366w_FormElements_MinimumValueSlider.png)

Use to select a minimum value in a range, by providing two handles that can select between values. For example, set the value to a minimum price range to make it easier for the user to select between prices.

## Interval slider
![366w_FormElements_IntervalValueSlider](https://assets.ubuntu.com/v1/b35a3137-366w_FormElements_IntervalValueSlider.png)

The interval slider has two handles that can select between values. For example, setting a price range between £20 to £40 inside a Shopping app.

## System volume control

A system volume control is a control that any app can embed in its UI. You should use this slider control when your app needs only one volume control.

![366w_FormElements_VolumeControl)(https://assets.ubuntu.com/v1/0d243a39-366w_FormElements_VolumeControl.png)

For example, if you app has a media player or is a game that has sound effects, but no background music.It consists of a slider that automatically reflects and adjusts the audio volume for the current output role through the current output device.

|![no alt text](https://assets.ubuntu.com/v1/608696e3-developer_links.png)|The System volume control component is currently under heavy development because it might also include other audio features, so you won’t have to worry about developing it yourself.|
|-----|-----|

## The advantages of using system volume control:

- People won’t be annoyed that your app is louder or quieter than others, because your app uses the system audio volume

- Volume change notifications don’t appear in front of your app when the slider is altered (especially important for a video player)

- You don’t need to implement your own volume-adjusting code, because Ubuntu changes the volume of your app automatically

- Any future Ubuntu features for audio routing will become available to your app automatically, without any code changes required

If your app plays multiple types of sound, then provide a mute button and separate volume control for each type. For example, a game that plays background music as well as sound effects. Avoid labelling the system volume control because it already includes icons that indicate its purpose.
