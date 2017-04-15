---
Title: RuntimeApi.RuntimeApi
---
        
RuntimeApi
==========

The RuntimeApi object

<span id="RuntimeApi"></span>
**`RuntimeApi`**( `  ` )
##### Example

``` code
  var api = external.getUnityObject('1.0');
      api.RuntimeApi.getApplication(function(application) {
        console.log('Application name: ' + application.getApplicationName());
      });
```

-   Methods
-   Properties

<span id="getApplication"></span>
**`getApplication`**( `callback ` )
Creates an Application object.

**Parameters:**
-   `callback` **&lt;Function (Application)&gt;**

<span id="getApplicationName"></span>
String **`getApplicationName`**( `  ` )
Retrieves the application name.

**Returns:** &lt;String&gt;
application name

<span id="getApplicationWritableLocation"></span>
String **`getApplicationWritableLocation`**( `  ` )
Retrieves the fileystem location where the application is allowed to write its data in.

**Returns:** &lt;String&gt;
application writable location path

<span id="getInputMethodName"></span>
String **`getInputMethodName`**( `  ` )
Retrieves the current input method's name. The name varies depending on the platform e.g. maliit can be part of the name for a maliit based Virtual Keyboard (possibly mangled with e.g. 'phablet'), when a keyboard is there the name can be empty, ...

**Returns:** &lt;String&gt;
current input method name

<span id="getPlatformInfos"></span>
Object **`getPlatformInfos`**( `  ` )
Retrieves current platform information.

**Returns:** &lt;Object&gt;
platform information as a dictionary with the following keys:

-   name: the platform name

<span id="getScreenOrientation"></span>
ScreenOrientation **`getScreenOrientation`**( `  ` )
Retrieves the current screen orientation.

**Returns:** &lt;ScreenOrientation&gt;
current screen orientation.

<span id="onAboutToQuit"></span>
**`onAboutToQuit`**( `callback ` )
Sets up a callback that is to be called when the application is about to quit.

**Parameters:**
-   `callback` **&lt;Function()&gt;**

    Function to be called when the application is about to quit.

<span id="onActivated"></span>
**`onActivated`**( `callback ` )
Sets up a callback that is to be called when the application has been activated (from background).

**Parameters:**
-   `callback` **&lt;Function()&gt;**

    Function to be called when the application has been activated.

<span id="onApplicationNameChanged"></span>
**`onApplicationNameChanged`**( `callback ` )
Sets up a callback that is to be called when the application's name changed.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    Function to be called when the application's name has changed.

<span id="onDeactivated"></span>
**`onDeactivated`**( `callback ` )
Sets up a callback that is to be called when the application has been deactivated (background).

**Parameters:**
-   `callback` **&lt;Function()&gt;**

    Function to be called when the application has been deactivated.

<span id="onInputMethodVisibilityChanged"></span>
**`onInputMethodVisibilityChanged`**( `callback ` )
Sets up a callback that is to be called when the On Screen Keyboard visibility has changed.

**Parameters:**
-   `callback` **&lt;Function(Bool)&gt;**

    Function to be called when the On Screen Keyboard visibility has changed (received the visibility as an arg).

<span id="onScreenOrientationChanged"></span>
**`onScreenOrientationChanged`**( `callback ` )
Sets up a callback that is to be called when the application's screen has changed its orientation.

**Parameters:**
-   `callback` **&lt;Function(ScreenOrientation)&gt;**

    Function to be called when the application's screen orientation has changed.

<span id="setupUriHandler"></span>
**`setupUriHandler`**( `callback ` )
Sets up a URI handler. The application can be sent URIs to open.

**Parameters:**
-   `callback` **&lt;Function(String)&gt;**

    Function to be called with the current list of uris to open

<span id="ScreenOrientation"></span>
`ScreenOrientation` &lt;**Object**&gt; *(static)*
Enumeration of the available types of ScreenOrientation.

Values:

``` code
Landscape: The application screen is in landscape mode
                
                InvertedLandscape: The application screen is in inverted landscape mode
                
                Portrait: The application screen is in portrait mode
                
                InvertedPortrait: The application screen is in inverted portrait mode
                
                Unknown: The application screen is in an unknown mode
```

##### Example

``` code
var api = external.getUnityObject('1.0');
                var orientation = api.RuntimeApi.ScreenOrientation;
                // use orientation.Landscape or orientation.Portrait
```

