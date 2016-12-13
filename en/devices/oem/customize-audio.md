---
title: "Customizing audio"
---

# Customizing audio

The Savvy API allows for customizing the audio theme, such as the default
Ringtone and SMS notification sounds.

To alter these, simply copy the desired files into `src/system/custom/usr/share/sounds/ubuntu/stereo/`

Next, edit `src/system/custom/etc/dconf_source/db/custom.d/custom.key` and look
for the following:

```
[com/ubuntu/touch/sound]
incoming-call-sound='/custom/usr/share/sounds/ubuntu/stereo/ring.mp3'
incoming-message-sound='/custom/usr/share/sounds/ubuntu/stereo/sms.mp3'
```

Change the paths to match the files that were just copied over.
