---
Title: RuntimeApi.RuntimeApi
---

# RuntimeApi.RuntimeApi

<p>The RuntimeApi object</p>
<strong class="name"><code>RuntimeApi</code></strong>( <code>  </code> ) 
<br>
</span><br>
<h5>Example</h5>
<pre class="code prettyprint"><code>  var api = external.getUnityObject('1.0');
api.RuntimeApi.getApplication(function(application) {
console.log('Application name: ' + application.getApplicationName());
});</code></pre>
<ul>
<li>Methods</li>
<li>Properties</li>
</ul>
<strong class="name"><code>getApplication</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Creates an Application object.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function (Application)&gt;</strong>
</li>
</ul>
String <strong class="name"><code>getApplicationName</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Retrieves the application name.</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>application name</p>
String <strong class="name"><code>getApplicationWritableLocation</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Retrieves the fileystem location where the application is allowed to write its data in.</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>application writable location path</p>
String <strong class="name"><code>getInputMethodName</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Retrieves the current input method's name. The name varies depending on the platform
e.g. maliit can be part of the name for a maliit based Virtual Keyboard (possibly mangled
with e.g. 'phablet'), when a keyboard is there the name can be empty, ...</p>
<br><strong>Returns:</strong> &lt;String&gt; <p>current input method name</p>
Object <strong class="name"><code>getPlatformInfos</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Retrieves current platform information.</p>
<br><strong>Returns:</strong> &lt;Object&gt; <p>platform information as a dictionary with the following keys:</p>
<ul>
<li>name: the platform name</li>
</ul>
ScreenOrientation <strong class="name"><code>getScreenOrientation</code></strong>( <code>  </code> ) 
<br>
</span><br>
<p>Retrieves the current screen orientation.</p>
<br><strong>Returns:</strong> &lt;ScreenOrientation&gt; <p>current screen orientation.</p>
<strong class="name"><code>onAboutToQuit</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets up a callback that is to be called when the application is about to quit.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>Function to be called when the application is about to quit.</p>
</li>
</ul>
<strong class="name"><code>onActivated</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets up a callback that is to be called when the application has been activated (from background).</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>Function to be called when the application has been activated.</p>
</li>
</ul>
<strong class="name"><code>onApplicationNameChanged</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets up a callback that is to be called when the application's name changed.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
<p>Function to be called when the application's name has changed.</p>
</li>
</ul>
<strong class="name"><code>onDeactivated</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets up a callback that is to be called when the application has been deactivated (background).</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function()&gt;</strong>
<p>Function to be called when the application has been deactivated.</p>
</li>
</ul>
<strong class="name"><code>onInputMethodVisibilityChanged</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets up a callback that is to be called when the On Screen Keyboard visibility has changed.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(Bool)&gt;</strong>
<p>Function to be called when the On Screen Keyboard visibility has changed (received the visibility as an arg).</p>
</li>
</ul>
<strong class="name"><code>onScreenOrientationChanged</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets up a callback that is to be called when the application's screen has changed its orientation.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(ScreenOrientation)&gt;</strong>
<p>Function to be called when the application's screen orientation has changed.</p>
</li>
</ul>
<strong class="name"><code>setupUriHandler</code></strong>( <code>callback </code> ) 
<br>
</span><br>
<p>Sets up a URI handler. The application can be sent URIs to open.</p>
<strong>Parameters:</strong>
<ul class="params">
<li>
<code>callback</code> <strong>&lt;Function(String)&gt;</strong>
<p>Function to be called with the current list of uris to open</p>
</li>
</ul>
<code>ScreenOrientation</code> &lt;<strong>Object</strong>&gt; <em>(static)</em><br>
<p>Enumeration of the available types of ScreenOrientation.</p>
<p>Values:</p>
<pre class="code prettyprint"><code>Landscape: The application screen is in landscape mode
InvertedLandscape: The application screen is in inverted landscape mode
Portrait: The application screen is in portrait mode
InvertedPortrait: The application screen is in inverted portrait mode
Unknown: The application screen is in an unknown mode</code></pre>
<h5>Example</h5>
<pre class="code prettyprint"><code>var api = external.getUnityObject('1.0');
var orientation = api.RuntimeApi.ScreenOrientation;
// use orientation.Landscape or orientation.Portrait</code></pre>
