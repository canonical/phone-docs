---
title: "Scopes tutorials - development procedures"
table_of_contents: true
---

# Scopes tutorials - development procedures

Here you can find short procedures for common processes developers need to
know about when working with scopes.

**Note**: You will need to [install the Ubuntu SDK](../../platform/sdk/installing-the-sdk.md) before continuing with this tutorial.

## Creating a scope

In the Ubuntu SDK, simply create a new project using the Unity Scope template.

**File** &gt; **New File or Project** &gt; **Unity Scope**

![](../../../media/apps/sdk/tutorials).

## Opening a scope project

Scope projects use CMake for building. CMake projects have a CMakeLists.txt
file in the root directory (and in many other project directories).

You can open scope projects from QtCreator with the `Ctrl+O` shortcut
and then navigating to and selecting the CMakeLists.txt file in the project’s
root directory.

![](../../../media/scope-project-open.png)

## Opening a scope branch in QtCreator as a project

If you have a branch or directory containing a scope source tree that is not
an already a QtCreator project, you can open it and create a project from it,
as follows:

  1. `Ctrl+O` to open a file or project (or use the **File** &gt; **Open File and Project** menu).
  2. Navigate to and select the CMakeLists.txt file in the source tree, then click the **Open** button.
  3. In the **Configure Project** dialog that displays, choose the [devices kits](/apps/sdk/tutorials/click-targets-and-device-kits/) you want your project to be configured for and click the the **Configure Project** button.

![](../../../media/llibMYSCOPE.so`: the scope’s shared object used by clients that call the scope
  * `BUILDDIR/src/llibMYSCOPE.ini`: the file used to launch the scope, as discussed next.

## Running a scope

After creating a new project, you can run it by clicking the Run button on the
left pane of the QtCreator or by pressing `Ctrl+R`.

**Note**: By default, QtCreator will try to run the test suite included in the scope template and not the scope itself. Make sure the scope is selected before trying to run it :

  1. click the left pane project button, the one with the active project name.
  2. select which device (**Kit** column) you want to run your scope on
  3. select the scope itself (**Run** column), instead of scope-unit-tests

![](../../../media/scope-run-tests-vs-scope.png)

If you are using Ubuntu 14.10, you can run a scope on your desktop, by
selecting the desktop as a target device. This runs the scope in a standalone
window, with developer tools to tweak the ways results are rendered.

![](../../../media/unity-scope-tool.png)

  * The scope name or logo displayed in the header is derived from the .ini file
  * The left half of the run window is the scope.
  * The right half is for development purposes. It allows you to modify the scope in various ways. For example, you can click Override category to edit a Category template that controls how results are displayed.

If you are using an earlier version of Ubuntu, you will need to create an
emulator from the Devices page or connect an Ubuntu phone via USB. There is a [tutorial for that](/apps/sdk/tutorials/running-apps-from-the-sdk/).

To run a scope from the terminal, simply use unity-scope-tool followed by the
path to your scope .ini file (which is in src/):

```
$ unity-scope-tool src/myscope.ini
```

## Next step

Now that you are ready to make your first scope, you should give a try to the
[SoundCloud scope tutorial](write-a-json-scope-in-cpp.md).
