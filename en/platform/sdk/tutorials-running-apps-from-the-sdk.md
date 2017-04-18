---
title: "Tutorials - running apps from the SDK"
---

# Tutorials - running apps from the SDK

This tutorial will teach you how to use the SDK to run applications on Ubuntu
devices, including the emulator and the desktop. For information about
installing Ubuntu on a phone or tablet, see [Installing Ubuntu for devices](../devices/installing-ubuntu-for-devices.md)

## Introduction

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
[the article on kits](tutorials-click-targets-and-device-kits.md) to learn more about them, or just follow the next steps. When creating a project for the first time, the SDK will ask you to
create at least one kit and select two aspects for it :

  * The **framework** your application will use (most of the time, you will want to use the latest stable release, matching the Ubuntu release number. eg 14.04)
  * The **architecture** of the device (armfh: most phones and tablets or i386: desktop)

![](../../../media/managing_kits.png)

## Adding devices

The “Devices” page allows you to see connected Ubuntu devices, manage their
settings (enable developer mode, clone network configuration from your desktop
to the device...) and create new devices (emulators).

![](../../../media/emulator_create.png)

### Launch an emulator

Once your emulator has been built, you can configure some launch variables:

  * **Scale**: the size of the emulator window
  * **Memory**: between 512 and 1024 MB of RAM allocated to the device

![](../../../media/emulator_config-700x451.png)

When launched, an emulator can be managed like any other device and is able to
run applications using compatible device kits. **Note** that when Ubuntu
starts on the emulator, you will be asked for a password to enter the session:
the default password is "0000".

![](../../../media/green dot on the icon indicates its status (here, my phone is
connected and ready to host the application).

![](../../../media/index.md) section for information and guides on the common parts of Ubuntu that app developers need to know about. Ready to start coding? Check out the [QML](../../apps/qml/index.html) and [HTML5](../../apps/html-5/index.html) sections for help deciding which toolkit to use.
