





Ubuntu web applications are standalone browsers restricting navigation to
certain URL patterns. They are very easy to make : using the SDK, you can turn
any website into a web app in minutes. In this tutorial, we are going to make
a webapp for [BrowserQuest](http://browserquest.mozilla.org/), a multiplayer
RPG created by Little Workshop and sponsored by Mozilla. Before going further,
you may want to check the following resources to be sure you understand
everything you will be doing :

  * [Creating an SDK app project](/en/phone/apps/sdk/tutorials/creating-an-sdk-app-project/)
  * [Running apps from the SDK](/en/phone/apps/sdk/tutorials/running-apps-from-the-sdk/)
  * [Security policy groups](/en/publish/security-policy-groups/)

## First step : Creating the project

Open the Ubuntu SDK, click on New Project and choose the Web App template.

![](../../../media/dd6840be-3d4a-422d-9780-33ea43b02fb2-cms_page_media/132/create-web-app.png)

#### Project info

You will be asked some information about the project:

  * The **name **of the project : browserquest
  * Its **path**

![](../../../media/4f9891d4-97fa-4594-b993-71f0ad7163c4-cms_page_media/132/choose-location.png)

#### Click info

  * Your developer **nickname** also known as "package namespace", this has to match the one you are using to publish in [MyApps](https://myapps.developer.ubuntu.com/dev/click-apps/). It will be appended to your package name in order to ensure that packages of the same name uploaded by two developers will remain unique. If you have a [Launchpad](https://launchpad.net/) username, you should use that.
  * Your **maintainer** information : your name and email
  * The **name** of your app : BrowserQuest

![](../../../media/bac1ee34-c268-4ed4-b910-a99edc40639d-cms_page_media/132/click-parms.png)

#### Device info

  * **[Device kits](/en/phone/apps/sdk/tutorials/running-apps-from-the-sdk/)** your project will be using.

![](../../../media/1d592d68-772e-4f1b-8911-15d35cac2ca0-cms_page_media/132/device-kits.png)

That’s it, your project is now created and the SDK has generated a few files
you need to complete.

## Step 2 : Completing the template

Once you navigate to the Edit page, you can see that the SDK has created the
following files :

  * **BrowserQuest.apparmor**: Security Policy Groups your app needs to work on the device
  * **BrowserQuest.desktop**: infos needed by Ubuntu to launch your app and show it to the user
  * **browserquest.png**: a default icon you will replace later
  * **manifest.json**: infos needed to identify your app and declare it to the system
  * a **README** file that covers the basics for setting up a webapp

![](../../../media/d7344399-cc33-46f6-8884-bf4a3f5255d7-cms_page_media/132/template.png)

### **The icon**

First, we are going to replace the default icon by a new 256x256 one, which is
the minimum size for it to look good in the store. Luckily, BrowerQuest is
open source and we can find a lot of resources, such as sprites from the game.
Make sure your follow [our good practices](/en/publish/creating-a-good-icon/).
Here is the icon I’ve created:

![](../../../media/890679e9-99d2-409a-8873-034483da3333-cms_page_media/132/browserquest.png)

### **URLs**

We need to add the URL of the game to the .desktop file :
http://browserquest.mozilla.org The Exec line is where we need to add it, but
we are also going to add an URL pattern, to make sure the webapp has access to
URLs matching this regex: https?://browserquest.mozilla.org/* Our line now
looks like this :

     Exec=webapp-container --enable-back-forward --store-session-cookies --webappUrlPatterns=https?://browserquest.mozilla.org/* http://browserquest.mozilla.org

You can add several patterns as arguments. For example if you wanted the
webapp to be allowed to navigate to the rest of mozilla.org, you could do :

     Exec=webapp-container --enable-back-forward --store-session-cookies --webappUrlPatterns=https?://browserquest.mozilla.org/* https?://mozilla.org/* http://browserquest.mozilla.org

![](../../../media/afa0df83-a9f4-470e-a822-fff8cd768968-cms_page_media/132/mainfest.png)

## Step 3 : Testing

We are almost done! To test your app, click on the Ubuntu icon above the play
button, pick a device, then press Run (the play button).

![](../../../media/4b1e83c7-08bb-46e0-bb6d-9dc71179e883-cms_page_media/132/test.png)

Your app is now being loaded onto the device and should open after a few
seconds...

![](../../../media/09e9ca8c-54c6-4638-89ff-c1ef8ccc402a-cms_page_media/132/bq1.png)

Here it is! But there seems to be one thing we need to fix : the default
webapps view has more chrome than needed for this game. We can fix that by
changing a few parameters, like removing the navigation arrows and make the
app fullscreen.

     Exec=webapp-container --fullscreen --store-session-cookies --webappUrlPatterns=https?://browserquest.mozilla.org/* http://browserquest.mozilla.org

![](../../../media/35d4acae-438d-4f5d-9658-0aebeb1fa6b2-cms_page_media/132/bq5.png)

Much better ! More options are available depending on your needs, here are
some common ones:

     --fullscreen --maximized (desktop only) --enable-back-forward --enable-addressbar 

You can see the complete list by running in a terminal: webapp-container
--help Note that the application is (and will always be) **confined** in a
safe container. Cookies will not be shared with the default browser and other
web apps. Now that we have a working app, we need to package it before
publishing...

![](../../../media/cd94f587-1c52-4f27-9c73-dde47f7b84d6-cms_page_media/132/bq4.png)

## Step 4: Creating your package

The **Publish** page of the SDK lets you **create and validate** the package
you will publish to the store. It will be created in the folder containing
your project folder.

![](../../../media/388956c3-6098-4cee-ac54-3ee3b39d43e7-cms_page_media/132/publish.png)

If all tests are green, you can see how your app looks along others by
installing it on your device, directly from the **Publish** page with the
**Install on device** button.

![](../../../media/56f3041d-130b-4bb1-8e07-84921d0f0ae2-cms_page_media/132/bq3-small.png)

### **Publishing your app**

We are done with the SDK. Once you have successfully created a click package
and are happy with how it looks and works, you are ready to upload it and
start the process of [publishing it](/en/publish/).





