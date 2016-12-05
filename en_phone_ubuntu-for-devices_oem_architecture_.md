





# Ubuntu Image Architecture

An overview of the Ubuntu Touch disk image design is presented here. An
understanding of the image components, how they are organized, and how they
are updated on a device is a critical prequisite before being able to modify
Ubuntu Touch in the proper fashion.

## Image Components

The major components of an Ubuntu Touch image are:

  * Device tarball
  * Ubuntu tarball
  * Custom tarball

They are delivered as three separate components.

### Device tarball

The Device tarball contains the Ubuntu equivalent of an Android BSP. Each
individual mobile device will have its own specific device tarball. A full
explanation of this tarball is out of scope for this document; however more
information can be obtained by examining the android source package in the
Ubuntu multiverse repository.

OEM porters _may_ modify this Ubuntu Touch component. Remixes _should not_
modify this Ubuntu Touch component.

### Ubuntu tarball

The Ubuntu tarball is considered the "standard" Ubuntu Touch image. As much as
possible, it is common across _all_ Ubuntu Touch devices. This design helps to
prevent fragmentation of deployed devices. A full explanation of this tarball
is out of scope for this document; however more information can be obtained by
examining the build script contained within the lp:livecd-rootfs code. OEMs
and remixes _must not_ modify this Ubuntu Touch component.

### Custom tarball

The Custom tarball is the officially supported method for all Ubuntu Touch
downstream consumers, ranging from commercial OEMs to community remixes, to
modify the look, feel, and behavior of Ubuntu Touch. This rest of this
document explains how to modify the Custom tarball to produce desired changes
to default Ubuntu Touch look, feel, and behavior.

## Savvy Architecture

The Ubuntu Touch customization architecture is conceptually simple while still
being powerful and flexible. The contents of the Custom tarball are unpacked
into the custom directory in the Ubuntu Touch filesystem. The rest of the
system is adapted to search in the /custom directory for data or directives to
change look, feel, and behavior from default. This design has several
advantages:

  * Clean separation of concerns between hardware enablement, default Ubuntu settings, and the ability for downstreams to differentiate.
  * Allows downstreams to differentiate with a clean, well-defined API while simultaneously preventing platform fragmentation across differing Ubuntu Touch devices.
  * Self-contained delivery mechanism allows downstreams to quickly and confidently know exactly how their image differs from upstream Ubuntu.
  * Integrated test suite to reassure downstreams their customizations are not breaking the upstream platform.

Overall, this architecture and API are called the Ubuntu Savvy API.





