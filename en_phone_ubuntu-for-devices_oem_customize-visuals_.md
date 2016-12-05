





# Customizing Visuals

The Savvy API makes it quick and easy for a downstream to apply custom visual
themes to Ubuntu for brand consistency. Custom color schemes and background
wallpapers are supported.

## Backgrounds

The Savvy API supports customization of background images, which include the
normal Unity Shell background and the Welcome Screen background. These two
backgrounds may be the same image or they may be different images. The
savilerow project contains examples located in:

    src/system/custom/usr/share/backgrounds

### Shell background

To change the default background, place an image into:

    src/system/custom/usr/share/backgrounds

Files in the .png format are preferred. The next step is to inform the system
to use your alternate background. To do this, edit:

    src/system/custom/etc/dconf_source/db/custom.d/custom.key

Modify the following stanza:

    [org/gnone/desktop/background]
    picture-uri='file:///custom/usr/share/backgrounds/ringtel_wallpaper_plain.png'

And change ringtel_wallpaper_plain.png to match the filename you placed during
the first step.

### Welcome Screen background

The Welcome Screen background is shown when the user is required to unlock
their phone. To change the Welcome Screen Background, simply copy an image
named welcome.png to:

    src/system/custom/usr/share/backgrounds/

The Savvy API takes care of the rest automatically.

## Color Schemes

The Savvy API allows downstreams to modify the existing Ubuntu color scheme or
replace it with a completely different color scheme. An example theme can be
found in:

    src/system/custom/xdg/data/themes/Ubuntu/Custom

Multiple themes may be installed, in case user choice is desired. Within the
example theme directory, there are 4 simple files. These files are used to
alter the colors shown in the default theme (Ambiance) although an entirely
new theme can be constructed if desired.

  * parent_theme is a string that tells the system where to find all of the other theming elements, which is needed in this case as we're only changing the colors.
  * qmldir contains the QML module for other apps to use, which will be: module themes.Ubuntu.<Your-theme-name>
  * Palette.qml contains the actual colors to be used within the theme
  * MainViewStyle.qml sets up the theme so that theme name is not overwritten by other apps

To ensure that the custom theme is used, modify:

    src/system/custom/home/.config/ubuntu-ui-toolkit/theme.ini

It must match the theme name found in qmldir, i.e. themes.Ubuntu.<Your-theme-
name>. For example:

    [General]
    theme=themes.Ubuntu.Custom

### Infographic color scheme

The infographic is the series of circles on the Welcome Screen that displays
user's data, such as "4 Calls made today" or "12 photos taken today". The
circles vary in size to provide a visual representation of the user's
historical data. These color scheme of these circles can be changed via the
Savvy API. An example infographic theme lives in:

    src/system/custom/xdg/data/libusermetrics/themes/custom.xml

In this file are an arbitrary number of themes, in the following form:

    <theme>
            <foreground start="#e54c19" main="#ff9900" end="#e54c19" />
            <background start="#ff9900" main="#e54c19" end="#cc0000" />
    </theme>

It is recommended to match these colors to complement the background colors of
the Welcome Screen background.





