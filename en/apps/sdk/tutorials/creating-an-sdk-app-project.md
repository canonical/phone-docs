





Once you have the Ubuntu SDK [installed and setup](/en/phone/platform/sdk/installing-the-sdk/), you can very easily start
writing an app. Read below how to do this in seven steps.

There are many different types of app projects you can create in the SDK.
Ubuntu specific app projects are all listed under the **Ubuntu** project type
in the new project wizard.

Here, we create an Ubuntu HTML5 App project as an example. The same process is
used for other types.

  1. Launch the wizard in the Ubuntu SDK with: **File** > **New File or Project**
  2. Select the **Ubuntu** project type, then **HTML5 App,** and then click the **Choose** button, as shown here:  
![](../../../../media/fb60d521-c71b-41d5-88f3-6e9fbe126902-cms_page_media/32/new-project-1-700x435.png)

  3. Give your project a **Name**, specify a directory to create it in, and click the **Next** button, as shown here:  
![](../../../../media/d278b463-25a3-4c12-bdfb-22ccb76a8c48-cms_page_media/32/new-project-2-700x371.png)

**Tip**: You may want to enable this as the default directory for all Ubuntu SDK projects by checking the **Use as default project location** check box.

  4. On the **Click package parameters** page, please enter:
  * Your developer **nickname** also known as "package namespace", this has to match the one you are using to publish in [MyApps](https://myapps.developer.ubuntu.com/dev/click-apps/). It will be appended to your package name in order to ensure that packages of the same name uploaded by two developers will remain unique. If you have a [Launchpad](https://launchpad.net/) username, you should use that.
  * Your **maintainer** information: your name and email, ie: Joe Blobbs <joe@blobbs.com>
  * The **name** of your app.

![](../../../../media/ea330081-2e24-4087-b17c-41ba2fdf68eb-cms_page_media/32/Screenshot from 2015-01-28 14:48:43.png)

  5. On the **Build targets ** page. You will be asked to create at least one device kit for your project.

Device kits are devices environments required to build and run your app. The
**Create new kit** button will guide you through this simple process, but you
can have a look at the [device kitsarticle](/en/phone/apps/sdk/tutorials/click-targets-and-device-kits/) to learn
more about them.

![](../../../../media/9a2be93d-6ac0-40fe-89c5-abaebe72876d-cms_page_media/32/new-project-4-700x371.png)

![](../../../../media/c023f7e3-a226-4ef8-b3bd-e758de7f9443-cms_page_media/32/new-project-5-700x371.png)

After creating a device kit, select it to continue:

![](../../../../media/9d262fd2-7875-48eb-bb4c-03967fb0ae35-cms_page_media/32/new-project-6-700x371.png)

  6. On the **Project Management** page, optionally select **Bazaar** under **Add to version control**:  
![](../../../../media/bb17f037-6191-48a4-9c03-0013db22f1fe-cms_page_media/32/new-project-7-700x399.png)

**Tip**: You can also manage your project under revision control from the command line using bzr. To use Bazaar in the shell, first open a terminal with Ctrl + Alt + T, then install the bzr package and view help as follows:
    sudo apt-get install bzr
    bzr help

  7. Click **Finish**, and the wizard finishes, the project is created, and you are returned to the main SDK GUI. At this point your new project looks something like this:

![](../../../../media/5cdc10fb-646c-4210-a7d3-9dd4304af1d1-cms_page_media/32/new-project-8-700x371.png)

**Tip**: Each app project has a desktop file that represents the app in Unity, including its displayed name and its icon.

## Next steps

Without making any changes to your app, you can run it. Check out the
**[Running Apps from the SDK](/en/phone/apps/sdk/tutorials/running-apps-from-the-sdk/)** tutorial in the Ubuntu SDK section for useful steps and
information.





