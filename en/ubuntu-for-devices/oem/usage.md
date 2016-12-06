





# Quick Start + Tutorial

To get started with the Savvy architecture, follow the quick start
instructions. This procedure will install the example customized image on your
device and allow you to get a sense for the types of customizations permitted
by the Savvy API. After experimenting with the sample customizations, you will
probably want to experiment with your own customizations. The tutorial section
explains how to do so.

## Quick Start

This procedure will install Canonical’s example customization package onto a
device. After installing the example customizations, you will be able to
explore how the Savvy API can be used to change the look, feel, and behavior
of Ubuntu Touch to suit your requirements. It requires:

  * [device supported by Ubuntu Touch](../../devices/devices.md)
  * then use [ubuntu-device-flash](../../devices/installing-ubuntu-for-devices.md) to install Ubuntu Touch on your device

**Note:** the quick start assumes you have already been able to successfully install your device with the default Ubuntu image. If you encounter difficulty, please refer to the [installation instructions](../../devices/installing-ubuntu-for-devices.md).

## Tutorial

### Obtaining the code

The Savvy code is hosted in Launchpad and requires the use of bzr. The bzr
branch contains example code, a test suite, and this documentation. To
download it:

    bzr branch lp:savilerow

The project layout is very straightforward:

    doc/  src/  tests/

As you can see:

  * doc/ contains this documentation
  * src/ contains the example customization code
  * tests/ contains the test suite

The src/ directory will be of greatest interest, as it demonstrates all the
possible customizations permitted by the Savvy API.

### Making a modification

In this example, we will set a different default wallpaper. Looking in the
directory src/system/custom we will modify the following files:

    .
    ├── etc
    │   ├── dconf
    │   ├── dconf_profile
    │   └── dconf_source
    │       └── db
    │           └── custom.d
    │               ├── custom.key
    │               └── locks
    │                   └── custom.lock
    └── usr
        └── share
            └── backgrounds
                └── ringtel_wallpaper_plain.png

You may remove all other files and directories in src/system/custom. The first
step is to add a new wallpaper. In this example, we will assume the filename
is wallpaper.jpg. Copy the file to usr/share/backgrounds:

    └── usr
        └── share
            └── backgrounds
                ├── ringtel_wallpaper_plain.png
                └── wallpaper.jpg

Next, you will need to edit custom.key and custom.lock:

    $ cat etc/dconf_source/db/custom.d/custom.key
    # if the keys have uppercase letters, make them lowercase here, for
    # example com.canonical.Unity.Lenses -> com/canonical/unity/lenses
    [org/gnome/desktop/background]
    picture-uri='file:///custom/usr/share/backgrounds/wallpaper.jpg'

The contents of custom.lock should be:

    $ cat etc/dconf_source/db/custom.d/locks/custom.lock
    /org/gnome/desktop/background/picture-uri

That's it! Now we are ready to test the results. **Note:** the provided sample
wallpaper is png format, but in this example, we are using an image in jpg
format. Both file formats are supported.

### Building the tarball

After making changes above, we will rebuild the tarball from the top-level
directory:

    $ pwd
    /home/ubuntu/Projects/savvy/tutorial
    $ ls
    doc/  src/  tests/
    $ tar -Jcvf custom.tar.xz -C src/ system/
    $ ls
    custom.tar.xz  doc/  src/  tests/

This command will produce a new, unsigned tarball in the parent directory.

### Installing the tarball

The Ubuntu Image Architecture requires that all tarballs installed on the
system must be signed. In this tutorial, we have not signed the new custom
tarball so we must use a developer shortcut which does not check for GPG
signatures.

**THIS SHOULD NOT BE USED FOR DAILY USERS.** It is only to be used for testing an unreleased recovery image.

Download the recovery images and ubuntu_command from here:
[http://people.canonical.com/~cwayne/touch/custom-recovery/](http://people.canonical.com/~cwayne/touch/custom-recovery/)

To install the recovery:

    adb reboot bootloader
    fastboot flash recovery ~/Downloads/mako-recovery.img
    fastboot reboot

Now to install the customization tarball. **Note:** ensure that you have the
ubuntu_command from the above link!:

    adb push custom.tar.xz /cache/recovery
    adb push ~/Downloads/ubuntu_command /cache/recovery
    adb reboot recovery

### Finishing up

After rebooting the device, you should have a new background. There are many
more customizations possible with the Savvy API, and the rest of this
documentation explains them. If there are customizations that the Savvy API
does not support, please [file abug](https://bugs.launchpad.net/savilerow/+bugs) and the team will do its best
to respond.





