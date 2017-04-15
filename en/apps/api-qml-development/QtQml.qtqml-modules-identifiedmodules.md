---
Title: QtQml.qtqml-modules-identifiedmodules
---
        
Identified Modules
==================

<span class="subtitle"></span>
<span id="details"></span>
Identified modules are modules that are installed and identifiable to the QML engine by a URI in the form of a dotted identifier string, which should be specified by the module in its `qmldir` file. This enables such modules to be imported with a unique identifier that remains the same no matter where the module is located on the local file system.

When importing an identified module, an unquoted identifier is used, with a mandatory version number:

``` qml
import QtQuick 2.0
import com.nokia.qml.mymodule 1.0
```

Identified modules must be installed into the [import path](../QtQml.qtqml-syntax-imports.md#qml-import-path) in order to be found by the QML engine.

<span id="locally-installed-identified-modules"></span>
Locally Installed Identified Modules
------------------------------------

A directory of QML and/or C++ files can be shared as an identified module if it contains a [qmldir file](../QtQml.qtqml-modules-qmldir.md) with the module metadata and is installed into the QML import path. Any QML file on the local file system can import this directory as a module by using an [import](../QtQml.qtqml-syntax-imports.md) statement that refers to the module's URI, enabling the file to use the [QML object types](../QtQml.qtqml-typesystem-objecttypes.md) and [JavaScript resources](../QtQml.qtqml-javascript-resources.md) defined by the module.

The module's `qmldir` file must reside in a directory structure within the [import path](../QtQml.qtqml-syntax-imports.md#qml-import-path) that reflects the URI dotted identifier string, where each dot (".") in the identifier reflects a sub-level in the directory tree. For example, the `qmldir` file of the module `com.mycompany.mymodule` must be located in the sub-path `com/mycompany/mymodule/qmldir` somewhere in the [import path](../QtQml.qtqml-syntax-imports.md#qml-import-path).

It is possible to store different versions of a module in subdirectories of its own. For example, a version 2.1 of a module could be located under `com/mycompany/mymodule.2/qmldir` or `com/mycompany/mymodule.2.1/qmldir`. The engine will automatically load the module which matches best.

Alternatively, versioning for different types can be defined within a qmldir file itself, however this can make updating such a module more difficult (as a `qmldir` file merge must take place as part of the update procedure).

<span id="an-example"></span>
### An Example

Consider the following QML project directory structure. Under the top level directory `myapp`, there are a set of common UI components in a sub-directory named `mycomponents`, and the main application code in a sub-directory named `main`, like this:

``` cpp
myapp
    |- mycomponents
        |- CheckBox.qml
        |- DialogBox.qml
        |- Slider.qml
    |- main
        |- application.qml
```

To make the `mycomponents` directory available as an identified module, the directory must include a [qmldir file](../QtQml.qtqml-modules-qmldir.md) that defines the module identifier, and describes the object types made available by the module. For example, to make the `CheckBox`, `DialogBox` and `Slider` types available for version 1.0 of the module, the `qmldir` file would contain the following:

``` cpp
module myapp.mycomponents
CheckBox 1.0 CheckBox.qml
DialogBox 1.0 DialogBox.qml
Slider 1.0 Slider.qml
```

Additionally, the location of the `qmldir` file in the [import path](../QtQml.qtqml-syntax-imports.md#qml-import-path) must match the module's dotted identifier string. So, say the top level `myapp` directory is located in `C:\qml\projects`, and say the module should be identified as "myapp.mycomponents". In this case:

-   The path `C:\qml\projects` should be added to the [import path](../QtQml.qtqml-syntax-imports.md#qml-import-path)
-   The qmldir file should be located under `C:\qml\projects\myapp\mycomponents\qmldir`

Once this is done, a QML file located anywhere on the local filesystem can import the module by referring to its URI and the appropriate version:

``` qml
import myapp.mycomponents 1.0
DialogBox {
    CheckBox {
        // ...
    }
    Slider {
        // ...
    }
}
```

<span id="remotely-installed-identified-modules"></span>
Remotely Installed Identified Modules
-------------------------------------

Identified modules are also accessible as a network resource. In the previous example, if the `C:\qml\projects` directory was hosted as `http://www.some-server.com/qml/projects` and this URL was added to the QML import path, the module could be imported in exactly the same way.

Note that when a file imports a module over a network, it can only access QML and JavaScript resources provided by the module; it cannot access any types defined by C++ plugins in the module.

<span id="semantics-of-identified-modules"></span>
Semantics of Identified Modules
-------------------------------

An identified module is provided with the following guarantees by the QML engine:

-   other modules are unable to modify or override types in the module's namespace
-   other modules are unable to register new types into the module's namespace
-   usage of type names by clients will resolve deterministically to a given type definition depending on the versioning specified and the import order

This ensures that clients which use the module can be certain that the object types defined in the module will behave as the module author documented.

An identified module has several restrictions upon it:

-   an identified module must be installed into the [QML import path](../QtQml.qtqml-syntax-imports.md#qml-import-path)
-   the module identifier specified in the [module identifier directive](../QtQml.qtqml-modules-qmldir.md) must match the install path of the module (relative to the QML import path, where directory separators are replaced with period characters)
-   the module must register its types into the module identifier type namespace
-   the module may not register types into any other module's namespace
-   clients must specify a version when importing the module

For example, if an identified module is installed into `$QML2_IMPORT_PATH/ExampleModule`, the module identifier directive must be:

``` cpp
module ExampleModule
```

If the strict module is installed into `$QML2_IMPORT_PATH/com/example/CustomUi`, the module identifier directive must be:

``` cpp
module com.example.CustomUi
```

Clients will then be able to import the above module with the following import statement (assuming that the module registers types into version 1.0 of its namespace):

``` qml
import com.example.CustomUi 1.0
```

