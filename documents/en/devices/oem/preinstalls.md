---
title: "Preinstalling content"
---

# Preinstalling content

Downstreams may wish to ship a variety of apps or content preinstalled for
their users. This section describes the mechanisms for doing so.

## Preinstalled click packages

The Savvy API allows for the pre-installation of click packages. These can
include preinstalled applications, online account plugins, location providers,
etc. To ship a pre-installed click package, it should be installed to:

    src/system/custom/click

**Note:** click packages cannot simply be unpacked in the above directory. They must actually be installed using the click framework. The sequence for doing so is:

```
$ sudo click install --force-missing-frameworks --root=(src/system/custom/click) --all-users foo.click
$ sudo click register --all-users packagename-version
```

The example click packages shipped in the savilerow project are already
installed properly.

## Preinstalled sample content

This mechanism is used for pre-seeded content. For example, a downstream may
wish to include sample pictures and videos to help a new user explore the
Ubuntu Gallery app and Ubuntu Media Player. To pre-seed content, place files
in:

```
src/system/custom/home/
```

Any files in the above directory will be copied to each user's home directory
on the first boot. If the user deletes this pre-seeded content, it will stay
deleted and will not be re-copied by the system on the next boot. However, if
the user issues a factory reset, the pre-seeded content will appear on first
use, until it is deleted by the user again.
