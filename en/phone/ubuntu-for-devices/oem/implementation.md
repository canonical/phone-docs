





# dconf details

dconf is the mechanism used to customize numerous settings in Ubuntu. This
page provides a brief overview of how dconf is used within the Savvy API.

## Gsettings overrides

Overriding dconf settings enables Savvy to change the default values set for
certain features, such as the default background, or ringtone. These overrides
are located in: `

    src/system/custom/etc/dconf_source/db/custom.d

` The directory contains a file, custom.key that contains the customized
overrides. The format of the file is a list of overridden default keys and
their new values: `

    [gsettings-schema]
    key-name=new-default-value

`

    [org/gnome/desktop/background]
    picture-uri='file:///custom/usr/share/backgrounds/ringtel_wallpaper_plain.png'
    [com/ubuntu/touch/sound]
    incoming-call-sound='/custom/usr/share/sounds/ubuntu/stereo/ring.mp3'
    incoming-message-sound='/custom/usr/share/sounds/ubuntu/stereo/sms.mp3'





