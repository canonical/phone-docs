





# Savvy API tests

These tests represent the supported downstream customizations allowed by the
Savvy API. If a downstream ships one of these customizations, then the
corresponding test must pass.

## api.test_clickapps

path = '/custom/click'

    Custom click app installation directory
class ClickAppVerificationTests(*args, **kwargs)

    Downstream may ship pre-installed click packages as part of the custom tarball. If so, they will be unpacked and installed into /custom/click.  
These tests verify that pre-installed click packages are properly installed.

test_clickapp_customization_directory_exists()

    Verify existence of target directory for pre-installed click packages.
test_clickapp_customization_apps_installed()

    Proper installation of click packages is a two stage process: 

  * uncompress package in target directory
  * register package with system
Verify that all uncompressed click packages are also registered with the
system, by comparing output of the click list command against the file list in
the target directory.

## api.test_dconf

custom_dconf_key = '/custom/etc/dconf/db/custom.d/custom.key'

    Path to pre-seeded custom dconf database.
class DconfVerificationTests(*args, **kwargs)

test_dconf_keys()

    Downstreams may wish to ship custom dconf keys to customize behavior, such as changing the SMS sound, desktop background, or launcher icons, e.g.  
This test verifies the custom dconf keys were properly installed.

## api.test_fonts

fontspath = '/custom/usr/share/fonts'

    Path where pre-installed custom fonts are installed.
class FontsCustomizationTests(*args, **kwargs)

test_fonts()

    Downstreams may wish to ship custom fonts in their image. This test verifies they have been installed properly.

## api.test_infographic_themes

themefile = 'libusermetrics/themes/custom.xml'

    Relative path to welcome screen infographic customization file.
class InfographicThemeCustomizationTest(*args, **kwargs)

test_theme_dir_in_datadirs()

    Downstreams may customize the color scheme of the infographic on the welcome screen by shipping an XML file. This test ensures that the XML file has been properly installed in the system.

## api.test_lockscreen

lockscreenpath = '/custom/usr/share/backgrounds/welcome.png'

    Path to custom welcome screen graphic.
class LockScreenCustomizationTests(*args, **kwargs)

test_lockscreen()

    Downstreams may wish to ship a pre-seeded custom welcome screen graphic. This test verifies it has been installed properly.

## api.test_themes

custom_theme = '~/.config/ubuntu-ui-toolkit/theme.ini'

    Specify the name of a custom visual theme for Ubuntu UI.
themedir = 'themes/Ubuntu/Custom'

    Relative XDG path to location of custom theme files. This is an example only.
class ThemeCustomizationTests(*args, **kwargs)

    Downstreams may customize the visual color scheme of Ubuntu Touch, including the overall color palatte as well as individual UI widgets. The mechanism for doing so is two-fold: 

  * create the elements of a new visual theme
  * configure the Unity shell to use the custom theme
Downstreams _may_ create new visual themes. If a new visual theme is created,
downstreams _must_ specify the new theme by modifying the contents of the
theme.ini file.

test_for_presence_of_theme_customization_file()

    The presence of this file controls the visual theme of the Unity shell ~/.config/ubuntu-ui-toolkit/theme.ini. Downstreams _must_ modify the contents of this file to point to the name of the new theme. Downstreams _must not_ change the name of this file.
test_theme_dir_in_datadirs()

    If a downstream creates a custom visual theme, the theme's files will be shipped in a subdirectory of /custom/xdg/data. This test verifies the custom visual theme files are present in the filesystem. Downstreams _must_ modify the value of themedir to search for the specific subdirectory containing the custome theme files.

## api.test_webbrowser_settings

dbpath = '~/.local/share/webbrowser-app/bookmarks.sqlite'

    Pre-seeded browser bookmark database.
settingspath = '~/.config/webbrowser-app/settings.conf'

    File specifying custom browser home page.
class BrowserCustomizationTests(*args, **kwargs)

    Downstreams _may_ modify the default web browser with custom pre-seeded bookmarks and a custom home page.
test_presence_of_bookmark_db()

    Verify custom bookmark database exists.
test_bookmark_db_schema()

    Check that the pre-seeded bookmark database is properly formed.
test_presence_of_conffile()

    Verify custom browser config file exists.
test_homepage_setting()

    Check that the homepage is set properly in the config file.





