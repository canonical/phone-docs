---
title: "Devices - Ubuntu image channels"
---

# Devices - Ubuntu image channels

Ubuntu device images are released on a set of channels at the [system imageserver](http://system-image.ubuntu.com). **A channel is a timeline of
images**, designed to serve a particular purpose.

When a user installs Ubuntu, they will be prompted to choose a channel and a
device, and by default, the most recent image in the channel for the
particular device will be used. Alternatively, a particular image can be
specified by version number. After an image channel has been chosen for
installation, it will be used to provide Over-The-Air (OTA) upgrades to the
device, and an users will generally stick to it. However, channels can still
be switched at a later point using command line tools.

For most purposes, a pair of channels is used. The **main channel** (e.g.
`ubuntu-touch/rc/ubuntu`) and a **proposed channel** (e.g. `ubuntu-touch/rc-
proposed/ubuntu`) which contains images that are being tested for 'promotion'
to the main channel. Proposed channels are often built daily by Ubuntu's
Continuous Integration infrastructure, and the higher quality images are
promoted to the non-proposed channel. Some channels follow specific promotion
schedules. Build IDs are defined within a specific channel.

**Note**: the Ubuntu phone release process is based on the concept of promoting images at a consistent release cadence to incrementally more stable channels until they reach end users. Each promotion to a more stable channel requires the image to have passed a strict QA criteria of automated and manual tests.


## Release cycle and image promotion

![](https://assets.ubuntu.com/v1/cd81ebc1-devices-phone-release-cycle-diagram.png)

Ubuntu images are generated daily (often multiple images per day) and are
thoroughly tested with automated and manual tests to ensure they comply with
Ubuntu's QA standard.

These daily images are distributed on the '-proposed' channel sets and are
only promoted to their non-proposed channels once they comply with a set of
quality criteria. At any time, there are always two daily-built channel sets
working: devel and rc. Images built from the rc channels eventually become the
stable images.


## Channel selection guide

The following table will quickly guide you through the decision of choosing an
image channel. For more detail on channel names and their contents, see the
sections below. Generally whenever you want to test Ubuntu Touch on your
phone, we recommend using one of the `ubuntu-touch/stable/` channels. Our
stable channels are updated on a approximate 6-week cadence with the latest
features and development.

My device | Channel
--------- | -------
Nexus 4 | `ubuntu-touch/stable/ubuntu`
Nexus 7 | `ubuntu-touch/stable/ubuntu`
BQ Aquaris E4.5 | `ubuntu-touch/stable/bq-aquaris.en`
BQ Aquaris E5 | `ubuntu-touch/stable/bq-aquaris.en`
BQ Aquaris M10 | `ubuntu-touch/stable/bq-aquaris.en`
BQ Aquaris M10 Full HD | `ubuntu-touch/stable/bq-aquaris.en`
Meizu MX4 | `ubuntu-touch/stable/meizu.en`
Meizu MX4 | `ubuntu-touch/stable/meizu.zh`
A customer device under development | `ubuntu-touch/stable/ubuntu`
A device supported by a community port | `ubuntu-touch/stable/ubuntu`


## Available Ubuntu phone channels

The standard Ubuntu-based image channels. Current channels are divided into 5
groups, sorted accordingly to the stability level of the images they provide.
Each channel group then has a number of channels created accordingly to the
requirements and/or type of the device.

This list is not exhaustive, please refer to the Listing channels section for
a complete channels list.

### Stable channels

Manually promoted images that reach end-user devices. This is the channel that
should be used for everyday use phones. The `bq-aquaris.en` channel is also the
channel which all commercial BQ devices are flashed from.

  * `ubuntu-touch/stable/ubuntu` - channel with the community custom tarball
  * `ubuntu-touch/stable/bq-aquaris.en` - channel with the BQ custom tarball
  * `ubuntu-touch/stable/meizu.en` - channel with the Meizu English custom tarball
  * `ubuntu-touch/stable/meizu.zh` - channel with the Meizu Chinese custom tarball
  * `ubuntu-touch/stable/ubuntu-developer` - channel with a developer-oriented custom tarball, including extra payload useful for app-developers

**Note:** a _custom tarball_ is a `.tar.gz` archive containing additional files, apps and scopes to add to an image to customize a particular device. Learn more about devices and image structure [on this community article](https://sturmflut.github.io/ubuntu/touch/2015/05/06/hacking-ubuntu-touch-part-2-devices-and-images/)

### Release Candidate channels

Manually promoted images from `ubuntu-touch/rc-proposed/*`. An image from this
channel is normally promoted once every six weeks to the stable channel as the
new official OTA update.

  * `ubuntu-touch/rc/ubuntu`
  * `ubuntu-touch/rc/bq-aquaris.en`
  * `ubuntu-touch/rc/meizu.en`
  * `ubuntu-touch/rc/meizu.zh`
  * `ubuntu-touch/rc/ubuntu-developer`

Automatically built `ubuntu-developer-flavor` images from rc images

### Release Candidate (proposed) channels

Automatically built images that are candidates for the rc and later the stable
channels; these are currently built from **ubuntu/vivid + stable-phone-
overlay PPA**. RC promotion evaluation in general happens twice a month.

  * `ubuntu-touch/rc-proposed/ubuntu`
  * `ubuntu-touch/rc-proposed/bq-aquaris.en`
  * `ubuntu-touch/rc-proposed/bq-aquaris.en-proposed`

Channel for testing of new custom tarballs before upload, not for normal usage

  * `ubuntu-touch/rc-proposed/meizu.en`
  * `ubuntu-touch/rc-proposed/meizu.en-proposed`

Channel for testing of new custom tarballs before upload, not for normal usage

  * `ubuntu-touch/rc-proposed/meizu.zh`
  * `ubuntu-touch/rc-proposed/meizu.zh-proposed `

Channel for testing of new custom tarballs before upload, not for normal usage

### Development channels

Manually promoted images from `ubuntu-touch/devel-proposed/*`. Promotions do not
follow any specific schedules.

  * `ubuntu-touch/devel/ubuntu`
  * `ubuntu-touch/devel/krillin.en `

to be renamed to `bq-aquaris.en`

  * `ubuntu-touch/devel/meizu.en`

### Development (proposed channels)

Automatically built images from the latest devel series (currently
`ubuntu/xenial`). This is the channel is to be used by developers for
system development purposes only, absolutely no guarantee of stability.

  * `ubuntu-touch/devel-proposed/ubuntu` - devel channel with the community custom tarball
  * `ubuntu-touch/devel-proposed/krillin.en` - devel channel with the BQ custom tarball (will be renamed to `bq-aquaris.en`)
  * `ubuntu-touch/devel-proposed/krillin.en-proposed` - devel channel for testing of new custom tarballs before upload (will be renamed to `bq-aquaris.en-proposed`)
  * `ubuntu-touch/devel-proposed/meizu.en` - devel channel with the Meizu English custom tarball
  * `ubuntu-touch/devel-proposed/meizu.en-proposed` - devel channel for testing of new custom tarballs before upload
  * `ubuntu-touch/devel-proposed/ubuntu-developer` - devel channel with a developer-oriented custom tarball, including extra payload useful for app-developers

Development channels here are not analogue to the traditional OS series and
are independent entities from the stable channels.

Their use case is limited for testing a baseline switch before change the
stable series to more recent series, not necessarily consecutive ones.

**Warning!**: the development channels are **not recommended for general use**, and unless you need to explicitly use them for a particular purpose, you should rather pick one of the stable channels instead.

## Channel names

All channel names are prefixed by `ubuntu-touch/`. You might want to learn
about the [Ubuntu release naming scheme](https://wiki.ubuntu.com/DevelopmentCodeNames) before continuing.

**- Standard Ubuntu image channels** are used to distribute the regular public Ubuntu releases for devices. Their naming scheme is as follows:

`"ubuntu-touch" "/" <stability-level> ["-proposed"] "/" <device-type>`

The `<stability-level>` marks how mature the images hosted in the channel are,
also marking their potential quality. Currently this can be either "devel",
"rc" or "stable". Devel images are generally the least tested and therefore
most risky to use. Those images are considered development images, meaning
based on the latest Ubuntu series and meant only for system developers to be
able to do development - there is no guarantee of phone features working. Do
not mistake "devel" images with "latest development", as the main development
focus is always happening in the rc and stable channels. RC images consist of
changes that have been tested before release and are potential candidates for
stable releases. Stable images are manually copied RC images after reaching
specific quality criteria. All non-proposed `<stability-level>` based channel
sets are basically manual channels with images manually copied over after
reaching specific criteria, while their "-proposed" counterparts include
daily-built images.

## Listing channels

After you have enabled Android Developer options and connected the device to
your Ubuntu desktop (see [here](installing-ubuntu-for-devices.md)), you can list all currently available channels (including aliases) in an Ubuntu Desktop terminal as follows:

```
$ ubuntu-device-flash query --list-channels --device=DEVICE
```

## Image hosting and publishing

Channel images and related files are hosted and published here:
[system-image.ubuntu.com](http://system-image.ubuntu.com/) The
`channels.json` file is the master list of current channels and related
information, including channel aliases and image data for each device.
