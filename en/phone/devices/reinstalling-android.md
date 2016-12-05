





After installing Ubuntu, you can reinstall Android (which removes Ubuntu).

Warning: All Ubuntu apps and data, including user-generated data, are deleted.

## Downloading Android image files

At any time you can download the Android files needed to restore your system.

This table displays links to common Android images:

**Device**

**Android images by type**

Nexus 4

[occam](https://developers.google.com/android/nexus/images#occam)

Nexus 10

[mantaray](https://developers.google.com/android/nexus/images#mantaray)

Nexus 7 2013 WiFi

[razor](https://developers.google.com/android/nexus/images#razor)

Galaxy Nexus

[takju](https://developers.google.com/android/nexus/images#takju) or
[yakju](https://developers.google.com/android/nexus/images#yakju)

Nexus 7

[nakasi](https://developers.google.com/android/nexus/images#nakasi) or
[nakasig](https://developers.google.com/android/nexus/images#nakasig)

From there, select the correct build version and download it.

**Tip**: Select the build version that was installed originally on your Android device. You can always upgrade it from inside Android.

## Extracting the download

  1.     1. Extract the downloaded file. For example, if the download file name is razor-kot49h-factory-ebb4918e.tgz, extract as follows:
    $ tar -xzf razor-kot49h-factory-ebb4918e.tgz

    2. Move into the extract directory, for example:
    $ cd razor-kot49h

## Rebooting into the bootloader

  1.     1.       1. Connect the device to your Ubuntu Desktop over USB.
      2. Ensure adb lists the device:
    $ adb devices
    List of devices attached
    025d138e2f521413 device

      3. Reboot the device into bootloader mode:
    $ adb reboot bootloader

## Reinstalling Android

You need to be in the extract directory for the Android image you previously
downloaded.

Warning: All Ubuntu apps and data are deleted.

  1.     1.       1. Run the flash-all.sh command (in the image extract directory):
    $ ./flash-all.sh

**Note**: In some cases you may need to use sudo, as follows: $ sudo ./flash-all.sh

Wait. When the process is complete, Android boot to its welcome page.

## Optionally restoring Android data and apps

If you made a backup of your Android data and apps before installing Ubuntu,
you can restore it as follows:

  1.     1.       1. You must first have enabled USB Debugging in the Android OS and connected your Ubuntu desktop to the device over USB (see [here](/en/phone/devices/installing-ubuntu-for-devices/##usbdebugging)).
      2. Open a terminal on your Ubuntu Desktop with Ctrl + Alt + T
      3. Move into the directory that contains your backup.ab file.
      4. Restore the backup.ab file to Android:
    $ adb restore backup.ab

# Optionally lock the device

In order to install Ubuntu, the device was “unlocked”. You can optionally lock
it.

  1.     1.       1. Power the device off with the Power button.
      2. Reboot into the bootloader by pressing the correct physical button combination for your [device type](/en/phone/devices/devices/) as shown here: [https://source.android.com/source/building-devices.html#booting-into-fastboot-mode](https://source.android.com/source/building-devices.html#booting-into-fastboot-mode)

Ensure the device is connected in fastboot mode as follows:

    $ fastboot devices
    025d138e2f521413 fastboot

  1.     1. Lock the device:
    $ fastboot oem lock

    2. Reboot into Android:
    $ fastboot reboot





