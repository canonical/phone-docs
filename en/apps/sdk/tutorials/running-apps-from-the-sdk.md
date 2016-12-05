





This tutorial will teach you how to use the SDK to run applications on Ubuntu
devices, including the emulator and the desktop. For information about
installing Ubuntu on a phone or tablet, see [Installing Ubuntu fordevices](http://developer.ubuntu.com/start/ubuntu-for-devices/installing-ubuntu-for-devices/)

### Introduction

There are three ways to run your application from the SDK: on the desktop, on
a connected Ubuntu device and in an emulator. They are considered
complementary as they all have their downsides and benefits. You will first
learn how to manage these device types from the SDK and which one to use to
test different aspects of your application.

## Setting up device kits

Device kits are an important concept of the SDK: they allow your application
to be built for several devices and architectures, regardless of your
development environment. Don’t worry if you haven’t added any device kits,
when you start a new project you can always create new ones. Have a look at
[the article on kits](http://developer.ubuntu.com/apps/sdk/tutorials/click-targets-and-device-kits/) to learn more about them, or just follow the next
steps. When creating a project for the first time, the SDK will ask you to
create at least one kit and select two aspects for it :

  * The **framework** your application will use (most of the time, you will want to use the latest stable release, matching the Ubuntu release number. eg 14.04)
  * The **architecture** of the device (armfh: most phones and tablets or i386: desktop)

![](/static/devportal_uploaded/d2b247de-6e44-4c36-9a6c-4b990ea0a71a-cms_page_media/34/devicekits_create-700x348.png)

Adding multiple kits will allow you to test your app in multiple contexts,
architectures and display sizes.

### Managing kits

The “Build & Run” tab from the “Projects” page lets you create, remove and
change existing Kits. This is especially useful when you forgot to create a
specific Device Kit or when your application evolves to support other devices
and architectures.

![](/static/devportal_uploaded/386976e6-a6cd-4524-8b7d-4337c494e138-cms_page_media/34/managing_kits.png)

## Adding devices

The “Devices” page allows you to see connected Ubuntu devices, manage their
settings (enable developer mode, clone network configuration from your desktop
to the device...) and create new devices (emulators).

![](/static/devportal_uploaded/ef9a8598-c163-477f-b917-1bfb21f6013a-cms_page_media/34/devices_connected-700x452.png)

### Create an emulator

Clicking the "+" button at the bottom of the window opens a “Create emulator”
dialog. You need to choose a name for the device, an architecture (i386
emulators will run faster) and a channel for your system image: _stable_ is
the latest official release of Ubuntu, _devel_ is the latest validated daily
build and _devel-proposed_ contains new changes that still need to be tested.
Creating an emulator downloads about 300 MB and prepares a system image, which
may take some time.

![](/static/devportal_uploaded/6af7cee9-e4b5-40bd-a5b4-c45d631f7a0c-cms_page_media/34/emulator_create.png)

### Launch an emulator

Once your emulator has been built, you can configure some launch variables:

  * **Scale**: the size of the emulator window
  * **Memory**: between 512 and 1024 MB of RAM allocated to the device

![](/static/devportal_uploaded/6a2b15f5-0065-4d22-a7d6-e9d50623b73a-cms_page_media/34/emulator_config-700x451.png)

When launched, an emulator can be managed like any other device and is able to
run applications using compatible device kits. **Note** that when Ubuntu
starts on the emulator, you will be asked for a password to enter the session:
the default password is "0000".

![](/static/devportal_uploaded/ebf945b3-02f9-4a90-92ca-1c1d36d07002-cms_page_media/34/emulator_running-700x333.png)

## Running your application

Now that you have created or connected a device, you can select it to run your
application via a button on the left side of the SDK window. The
red/orange/green dot on the icon indicates its status (here, my phone is
connected and ready to host the application).

![](/static/devportal_uploaded/c5f4f2f4-fedf-4d96-8cb4-8c9af5ec83ae-cms_page_media/34/run-picker.png)

Once you have selected a run target, the play icon below will launch your
application.

    **Tip:** Keyboard shortcut to launch: Ctrl + R.

### What are the benefits/caveats of each device type?

#### Desktop

The SDK builds and runs your application like any other desktop application.
Even if the goal for Ubuntu is to reach full convergence (same platform and
libraries on all devices), Ubuntu 14.04 and 14.10 are not fully there yet.
This means your application won’t be able to use all functionalities of the
phone platform. Nevertheless, it’s the fastest way to test how your app UI
looks at several sizes.

#### Emulator

A phone sized device on your desktop. A great way to use your application with
all the features of the platform, without connecting a device via USB. The SDK
will open an emulator instance and launch your application on it.

#### Device

The application will be uploaded to your connected Ubuntu device and launched.
It’s the recommended way to make the most of the platform and test your
application responsiveness on a given device.

### Launch failures

If any error happens when launching your app, it will be logged in the
Application Output pane at the bottom of the editor.

## Next steps

You may be ready to start writing apps! A great next step is the [Ubuntu AppPlatform](http://developer.ubuntu.com/phone/platform/) section for information
and guides on the common parts of Ubuntu that app developers need to know
about. Ready to start coding? Check out the
[QML](http://developer.ubuntu.com/apps/qml/) and
[HTML5](http://developer.ubuntu.com/apps/html-5/) sections for help deciding
which toolkit to use.





