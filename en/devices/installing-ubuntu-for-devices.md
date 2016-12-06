





Here are instructions for installing Ubuntu on devices (phone and tablet).
**Note**: If you are looking to install Ubuntu on a desktop computer or
laptop, you can [alternatively download UbuntuDesktop](http://www.ubuntu.com/download/desktop).

### Supported devices

Target devices under active development are
[here](https://developer.ubuntu.com/en/start/ubuntu-for-devices/devices/).
Community-driven ports to a much wider set of devices (including installation
instructions) are [here](https://wiki.ubuntu.com/Touch/Devices). These ports
are not officially supported.

#### Warning: data loss

Installing Ubuntu for devices deletes all data (including applications and
data such as contacts, photos, and etc.) from the device.

An optional procedure is provided below that backs up the Android apps and
data to a local file. There is no guarantee that a restore will succeed.

See [Reinstalling Android](/en/phone/devices/reinstalling-android/).

### Disclaimer

"Ubuntu for devices" is released for free non-commercial use. It is provided
without warranty, even the implied warranty of merchantability, satisfaction
or fitness for a particular use. See the licence included with each program
for details. Some licences may grant additional rights. This notice shall not
limit your rights under each program's licence. Licences for each program are
available in the usr/share/doc directory. Source code for Ubuntu can be
downloaded from archive.ubuntu.com. Ubuntu, the Ubuntu logo and Canonical are
registered trademarks of Canonical Ltd. All other trademarks are the property
of their respective owners. "Ubuntu for devices" is released for limited use
due to the inclusion of binary hardware support files. The original components
and licenses can be found
[here](https://developers.google.com/android/nexus/drivers).

### Release notes

Ubuntu for devices is still under development. Installing an Ubuntu for
devices image may make your device unusable. Important features may be missing
or broken. New images may introduce new features and may break existing
features as development continues. Ubuntu for devices does not yet provide a
reliable replacement for your current handset, phone or tablet. See [ReleaseNotes](https://wiki.ubuntu.com/TrustyTahr/ReleaseNotes#Ubuntu_Touch) for
details.





  * 1. Prepare your desktop ›

Prepare your Ubuntu desktop to drive an installation on an USB connected
device.

  * 2. Save your Android data ›

Backup up your Android apps, user data and save information about your device
to make an Android re-install easier.

  * 3. Unlock an Android device ›

In order to install Ubuntu, you also need to “unlock” your Android device
bootloader.

  * 4. Install Ubuntu on a device ›

The install process: selecting an image channel, flashing and enabling
developer mode.

  * 5. Upgrade an Ubuntu image ›

Upgrades to new images and apps are provided over the air. Learn how to make
that process automatic or manual.

  * 6. Other image and install options ›

Switch between install channels, from stable to devel or to a specific
revision.





## Prepare your Desktop

Here you learn how to prepare your Ubuntu Desktop system. After these steps
are completed, you can connect your device to the Desktop and start an
installation from the Desktop.

You need to install the ubuntu-device-flash package. This is published in the
phablet-tools PPA.

### Ensure you have the universe archive enabled

You need to install the ubuntu-device-flash package. This is published in the
Ubuntu universe archive.

  1. Ensure the [universe archive is enabled](https://help.ubuntu.com/community/Repositories/CommandLine#Adding_the_Universe_and_Multiverse_Repositories).

### Add PPAs

The SDK PPA provides additional tools needed to install Ubuntu for devices.
Tools are provided for installation on Ubuntu Desktop starting with 12.04
Precise.

1. On your computer, press Ctrl+Alt+T to start a terminal.

2. Add the Ubuntu SDK Release PPA:

    $ sudo add-apt-repository ppa:ubuntu-sdk-team/ppa

3. Update your system to use the latest packages:

    $ sudo apt-get update

Note that there is a no-longer updated version of the phablet-tools package in
trusty/universe. Please use the PPA instead.

### Install the ubuntu-device-flash package

The ubuntu-device-flash package is your main tool for installing Ubuntu for
devices.

  * Install the ubuntu-device-flash package:
    $ sudo apt-get install ubuntu-device-flash

After installation, you can display the help page for the ubuntu-device-flash
tool as follows:

    $ man ubuntu-device-flash

Press ‘q’ to quit the help.

### Install phablet-tools package

The phablet-tools package provides a Desktop tools useful when working with a
USB-connected Ubuntu device. For example, click-buddy creates a click package
and runs it on the device, phablet-screenshot takes a screenshot from the
device and saves it in your current directory, phablet-bootchart creates a
bootchart image, and more.

  * Install phablet-tools:
    $ sudo apt-get install phablet-tools

  * List its tools with:
    $ dpkg -L phablet-tools | grep bin

  * Display a tool’s help with the -h argument, for example:
    $ phablet-config -h
    usage: phablet-config [-h] [-s SERIAL]  ...
    Set up different configuration options on a device
    [...]

### About adb and fastboot

Installing ubuntu-device-flash also adds two important Android tools you
frequently use: adb and fastboot.

  * **adb**: Provides a terminal connection to the device when it is fully booted. (You must install Ubuntu first or enable developer options in Android.)
  * **fastboot**: Provides a terminal connection over USB when the device is booted into the bootloader.

The instructions here are complete, but you may also want to view help for
these tools. A convenient method is piping them into less, then using up and
down arrows to scroll and ‘q’ to quit, as follows:

    $ adb help 2>&1 | less
    $ fastboot help 2>&1 | less

## Saving Android data

Before you install Ubuntu, you should save some key data. This includes
backing up your Android apps and user data and saving some data about your
device to make it easier to reinstall Android later. Saving Android data over
USB from your Ubuntu Desktop requires first enabling Developer Mode and USB
Debugging from the Android OS, as explained next.

### Enable Android Developer Mode

Here, you enable Developer Mode on your device.

  1. Navigate to **Settings → About phone | About tablet | about**. Select the option available on your device. **Tip**: Some earlier Android versions may not require this step.
  2. Tap **Build number** seven times.

A pop-up informs you that you have succeeded.

### Enable USB Debugging

Here, you enable USB Debugging. This is required for a USB terminal connection
from your Desktop to your device. After [enabling DeveloperMode](/en/phone/devices/installing-ubuntu-for-devices/##androiddevmode), the
**Developer** options item is exposed in the Settings page.

  1. Navigate to **Settings → Developer options**
  2. Enable **USB Debugging**. When a device is connected, you will be prompted in Android to authorize it.

3. Physically connect your enabled device to your Ubuntu Desktop over USB.

4. On Android, accept the prompt to **Allow USB debugging** for the specified
computer.

5. To verify the connection, use adb to display currently connected devices:

    $ adb devices
    List of devices attached
    025d138e2f521413 device

**Tip**: If the device does not display, try running adb kill-server first. Now, the device is fully connected to your Ubuntu Desktop for development/installation operations.

### Backup Android apps and data

Before installing Ubuntu for devices, you can optionally create a backup file
on the Desktop that saves your Android applications and data. You can use this
backup file later to restore your applications and data if you decide to
reinstall native Android on the device. **Tip**: To restore Android from the
backup, see [Reinstalling and RestoringAndroid](/en/phone/devices/reinstalling-android/).

1. In a terminal on your Ubuntu Desktop, create the backup file as follows:

    $ adb backup -apk -shared -all

2. In Android, authorize the backup as prompted.

A file containing your backup is created in your current working directory
named: ./backup.ab. Save this file securely.

### Record your device type and build ID

You may want to reinstall Android later. To do this, it is helpful to write
down and save key data. This data helps you open the right Android web page to
download the files needed to restore your device to Android. You can obtain
this information from the Android device’s /system/build.prop file.

1. Return the image type

    $ adb shell grep ro.product.name system/build.prop
    ro.product.name=razor

In this case, the image name is “razor”. This is useful for finding Android OS
images here: [https://developers.google.com/android/nexus/images](https://developers.google.com/android/nexus/images)

2. Return the device type:

    $ adb shell grep ro.product.device /system/build.prop
    ro.product.device=flo

This device is type “flo”. The device type is used (automatically) to select
the correct image in an Ubuntu image channel. The device type is also used to
differentiate images on [http://cdimage.ubuntu.com/ubuntu-touch/daily-preinstalled/current/](http://cdimage.ubuntu.com/ubuntu-touch/daily-preinstalled/current/).

3. Return the build ID:

    $ adb shell grep build.id /system/build.prop
    ro.build.id=KOT49H

This build ID is “KOT49H”. This identifies the version of the installed
Android OS. You can use this data to pick the right Android OS version if you
want to [reinstall Android](/en/phone/devices/reinstalling-android/).

**Tip**: For convenience, run this command and the data is written to a file named mydevicedata:
    $ adb shell grep ro.product.name /system/build.prop > mydevicedata \
    && adb shell grep build.id /system/build.prop >> mydevicedata \
    && adb shell grep ro.product.device /system/build.prop >> mydevicedata 

Here’s how the generated file may look:

    $ cat mydevicedata
    ro.product.name=razor
    ro.build.id=KOT49H
    ro.product.device=flo

## Unlock the Android device

To install Ubuntu, you must first “unlock” the Android device bootloader.

**Warning:** Unlocking deletes all data from the device, including apps and other data. You may want to [create a backup first](/en/phone/devices/installing-ubuntu-for-devices/##backupandroid). You must first have enabled [USB Debugging](/en/phone/devices/installing-ubuntu-for-devices/##usbdebugging) in the Android OS.

1. Boot the device into the Android bootloader:

    $ adb reboot bootloader

**Tip**: When the device is booted into the bootloader the screen displays the green Android robot lying on its back with its front panel open and a highlighted **Start** menu item.

2. Verify the device is connected to your Ubuntu Desktop as follows:

    $ fastboot devices
    025d138e2f521413 fastboot

3. Unlock the device as follows:

    $ sudo fastboot oem unlock

4. Accept the terms of unlocking displayed on the Android device.

5. Reboot the device to Android as follows:

    $ fastboot reboot

6. Complete the first use Android setup steps, entering minimal information:
Android and its data is about to be deleted during the Ubuntu install.

For help locking your device, see [ReinstallingAndroid](/en/phone/devices/reinstalling-android/)

## Install Ubuntu on device

Here you take the final steps that install Ubuntu.

### Removing encryption

**Warning:** If your device is encrypted you must perform a full factory reset before installing ubuntu. This also will delete all data from the device, including apps and other data. You may want to [create a backup first](/en/phone/devices/installing-ubuntu-for-devices/##backupandroid). You can perform a factory reset via the settings screen. Look for Backup & reset option on the latest versions of Android or tap Privacy if you’re using Android 2.3.

### Select your device image channel

When you install, you'll need to name the Ubuntu device image channel used to
obtain the image. For guidance on which channel is best for you check out the
[Channel selection guide](/en/phone/devices/image-channels/). **Tip**: After
installing, you can always switch to another channel.

### Install Ubuntu

  1. Power the device off with the Power button.
  2. Reboot into the bootloader by pressing the correct physical button combination for your [ ](/devices)[device type](/en/phone/devices/devices/) as shown here: [https://source.android.com/source/building-devices.html#booting-into-fastboot-mode](https://source.android.com/source/building-devices.html#booting-into-fastboot-mode)
  3. Install Ubuntu using your selected channel, in this case we use the **stable** channel:
    $ ubuntu-device-flash touch --channel=ubuntu-touch/stable/ubuntu --bootstrap
    2015/02/16 09:50:12 Expecting the device to be in the bootloader... waiting
    2015/02/16 09:50:12 Device is |mako|
    2015/02/16 09:50:12 Flashing version 1 from ubuntu-touch/stable/ubuntu channel and server https://system-image.ubuntu.com to device mako
    [...]

**Tip**: The --bootstrap option is normally only used when installing Ubuntu the first time. It requires that the device is booted to the bootloader. After Ubuntu is installed, one uses the ubuntu-device-flash command (without the --bootstrap option) while the device is booted to Ubuntu.

  4. **Wait until the reboot is done**. In most cases no input from you is required.

The process takes some time. First, an appropriate image is downloaded to
~/.cache/ubuntuimages.

**Tip**: Occasionally delete the cache of downloaded images (in ~/.cache/ubuntuimages) to free up disk space with: ubuntu-device-flash --clean-cache touch.

Then, the parts of the images are deployed to the device. Ubuntu is deployed
to the devices as a “recovery” image. Then, the device boots from the recovery
image and installs Ubuntu as the normal OS. Finally, the device boots into
Ubuntu for devices.

### Enabling developer mode on your Ubuntu device

If you intend to use your Ubuntu device for development and to simplify access
to it (through scripts or the command line), you might want to enable the
developer mode. To do this, go to **Settings → About this device → Developer
mode**.

![](../../media/47419b12-60a7-4d91-910a-3d1b90ca6908-cms_page_media/26/screenshot20150630_094616727.png)

This allows you to access your device via ADB or directly with SSH, when the
device is unlocked. The `phablet-shell` command, provided by the phablet-tools
package, is an easy way to SSH to your device.

Some of the commands mentioned below (particularly those using `adb shell`)
will assume that Developer mode is turned on.

## Upgrading Ubuntu

### Upgrading automatically

After installing Ubuntu, upgrades to newly released images and apps are
automatically provided through **Settings → Updates**. **Tip**: You can
configure such updates to never install automatically in **Settings →
Updates**.

### Upgrading manually

**Note**: The default channel used when none is explicitly stated is stable. In the following examples, CHANNEL indicates the channel your Ubuntu was installed from. See [Display image channel information](/en/phone/devices/image-channels/). If you have configured the system to never install updates automatically, you can check for available updates and optionally install from **Settings → Updates**. You can display information about what image would be installed if you were to upgrade:
    $ adb shell system-image-cli --dry-run

You can manually initiate an upgrade:

    $ ubuntu-device-flash touch --channel=CHANNEL

You can reinstall Ubuntu after deleting all user data and apps:

    $ ubuntu-device-flash touch --wipe --channel=CHANNEL

## Other image and install options

### Switching Ubuntu image channel

You can switch channels and install from the new channel by specifying the new
channel. For example, this switches to utopic-customized:

    $ ubuntu-device-flash touch --channel=utopic-customized

### Installing a specific Ubuntu image version

You can specify the version of the Ubuntu image to install:

    $ ubuntu-device-flash --revision=299 touch --channel=utopic

### Display image and channel information

You can display the current channel and other information:

    $ adb shell system-image-cli -i
    current build number: 299
    device name: flo
    channel: devel
    alias: ubuntu-touch/utopic
    last update: 2014-04-16 17:57:30
    version version: 299
    version ubuntu: 20140416
    version device: 20140411.3

This device is on channel devel, which is shown to be currently an alias for
utopic. The version is 299.

### Enabling read-write mode

By default the system is read-only. You can switch to read-write mode,
although this disables Ubuntu system upgrades. The main purpose for this is
developing the Ubuntu system directly. This is not required for developing
apps or using the system normally. Recovering from read-write mode is possible
but requires reinstalling the system from scratch.

**Warning**: Switching a device to read-write mode (and/or recovering from it) is an advanced feature and may result in complete data loss.

**It also disables automatic over-the-air delta updates**. Accepting a full over-the-air update after making a device writable may undo changes you have made.
    $ phablet-config writable-image

The system reboots in read-write mode.

### Disabling read-write mode

You can disable read-write and restore automatic over-the-air updates:

    $ adb shell rm /userdata/.writable_image

To restore the normally read-write protected system area to a pristine state
that does not include any changes you made while in read-write mode by
installing the Ubuntu system:

    $ ubuntu-device-flash touch --channel=CHANNEL

## Next steps

Now that you have Ubuntu running on your phone, what should you do to get the
most out of it?

### Install more Apps and Scopes

You can browse or search for more [apps](/en/phone/apps/) or
[scopes](/en/phone/scopes/) to install on your phone from the Ubuntu Store. To
access it, swipe up from the bottom edge on the Apps dash screen, then press
the Store button. Scopes can be installed to provide easily searchable content
in addition to the Apps, Music and Videos scopes that are provided by default.
Apps will be added to the Apps scope automatically, and you can pin them to
your launcher for easy access any time.

### Write your own Apps or Scopes

Developing apps and scopes for Ubuntu is fast, easy and free! Once you
download the [Ubuntu SDK](/en/phone/platform/sdk/installing-the-sdk/) you can
follow along with our tutorials for [writing your firstapp](/en/phone/apps/qml/tutorials/) or [your firstscope](/en/phone/scopes/tutorials/). Then you can publish them to the Ubuntu
Store for other users to enjoy!

## Getting Help

If you got lost somewhere, you found a bug or need some help, we're happy to
help you. Ubuntu for devices is put together by a community of many people who
are eager to work with you.

  * If you have problems or questions, [ask on Ask Ubuntu](http://askubuntu.com/questions/ask?tags=mobile).
  * Join the conversation on IRC in [#ubuntu-touch](http://webchat.freenode.net/?channels=ubuntu-touch) on irc.freenode.net.
  * Join the mailing list:

1. Join the [ubuntu-phone team](https://launchpad.net/~ubuntu-phone) on
Launchpad

2. Join the team mailing list at
[https://launchpad.net/~/+editemails](https://launchpad.net/~/+editemails)





