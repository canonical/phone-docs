**Deprecated and archived**

*Although these docs are still hosted at https://docs.ubuntu.com/phone/en/, they are very much legacy at this point. They haven't been significantly updated in years and we are not currently maintaining them.*

*I'm archiving this codebase for now.*

---

![tablet pictogram](https://assets.ubuntu.com/v1/afcff2f2-pictogram-tablet-shape.svg)

# Ubuntu phone documentation

![the phone and tablet](https://assets.ubuntu.com/v1/d456b5fa-phone%26tablet-image.jpg?w=600)

This documentation contains information from the Ubuntu touch project, which was actively developed by [Canonical](https://www.canonical.com) from 2012 to 2017. Ubuntu Touch was a version of Ubuntu, built to run on phones and tablets with a set of SDKs to create apps and scopes.

They are be published at [docs.ubuntu.com/phone](https://docs.ubuntu.com/phone/).

## About the docs

These pages were pulled and integrated from two main sources:

1. [developer.ubuntu.com](https://developer.ubuntu.com) phone section for guides, tutorials and a snapshot of the the current and stable API docs at the time Canonical announced it would stop working on them.
2. [design.ubuntu.com](https://design.ubuntu.com) provided its app and scope sections with information on how to design native and html5 apps and scopes for the OS.

### Viewing markdown pages

The documentation source files are stored in [the `docs` directory](docs/) in this repository.

### Running the local server to view the HTML documentation

You can also build this documentation into HTML, as it appears on https://docs.ubuntu.com/phone, by first [installing Docker](https://docs.docker.com/engine/installation/) and then running:

``` bash
./run
```

**Warning:** This command may take *up to 30 minutes to complete* the first time you run it.

Once the command has finished building the documentation site, you can the documentation by visiting http://127.0.0.1:8201/phone in your browser.

## More information

There are more resources for this project on [Launchpad](https://launchpad.net/ubuntu/+source/ubuntu-touch-meta) and the [Ubuntu wiki](https://wiki.ubuntu.com/Touch)

## Thank-you

A thank-you to the hundreds of people who have worked on this project from Canonical and the Ubuntu community!
