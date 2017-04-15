---
Title: guides-installation
---
        
Installing Autopilot
====================

Contents

-   <a href="#installing-autopilot" id="id2" class="reference internal">Installing Autopilot</a>
    -   <a href="#ubuntu" id="id3" class="reference internal">Ubuntu</a>
    -   <a href="#other-linux-s" id="id4" class="reference internal">Other Linux’s</a>

Autopilot is in continuous development, and the best way to get the latest version of autopilot is to run the latest Ubuntu development image. The autopilot developers traditionally support the Ubuntu release immediately prior to the development release via the autopilot PPA.

<a href="#id3" class="toc-backref">Ubuntu</a><a href="#ubuntu" class="headerlink" title="Permalink to this headline"></a>
---------------------------------------------------------------------------------------------------------------------------------------------

**I am running the latest development image!**

In that case you can install autopilot directly from the repository and know you are getting the latest release. Check out the packages below.

**I am running a stable version of Ubuntu!**

You may install the version of autopilot in the archive directly, however it will not be up to date. Instead, you should add the latest autopilot ppa to your system (as of this writing, that is autopilot 1.5).

To add the PPA to your system, run the following command:

    sudo add-apt-repository ppa:autopilot/1.5 && sudo apt-get update

Once the PPA has been added to your system, you should be able to install the autopilot packages below.

**Which packages should I install?**

Are you working on ubuntu touch applications? The `autopilot-touch` metapackage is for you:

    sudo apt-get install autopilot-touch

If you are sticking with gtk desktop applications, install the `autopilot-desktop` metapackage instead:

    sudo apt-get install autopilot-desktop

Feel free to install both metapackages to ensure you have support for all autopilot tests.

<a href="#id4" class="toc-backref">Other Linux’s</a><a href="#other-linux-s" class="headerlink" title="Permalink to this headline"></a>
-----------------------------------------------------------------------------------------------------------------------------------------------------------

You may have to download the source code, and either run from source, or build the packages locally. Your best bet is to ask in the autopilot IRC channel ( <a href="../faq-faq.md#help-and-support" class="reference internal"><em>Q. Where can I get help / support?</em></a>).

