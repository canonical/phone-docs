---
Title: Ubuntu.OnlineAccounts.manifest-files
---

# Ubuntu.OnlineAccounts.manifest-files

<span class="subtitle"></span>
<!-- $$$manifest-files.html-description -->
<p>In order to integrate with the Online Accounts framework, one needs to ship a couple of manifest files which describe the online services being used or provided.</p>
<p>Account plugins must ship a <a href="#the-provider-files">provider file</a> which can contain account settings readable by applications. Applications must ship an <a href="#the-application-files">application file</a> which tells which online services the application is able to use, and <a href="#the-service-files">service files</a> which describes the online services and their settings.</p>
<h2 id="the-provider-files">The provider files</h2>
<p>A <code>.provider</code> file describes an online accounts provider. It's a XML file, typically installed in <code>/usr/share/accounts/providers/</code> or <code>~/.local/share/accounts/providers/</code> which looks like this:</p>
<pre class="cpp"><span class="operator">&lt;</span><span class="operator">?</span>xml version<span class="operator">=</span><span class="string">&quot;1.0&quot;</span> encoding<span class="operator">=</span><span class="string">&quot;UTF-8&quot;</span><span class="operator">?</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>provider id<span class="operator">=</span><span class="string">&quot;facebook&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>name<span class="operator">&gt;</span>Facebook<span class="operator">&lt;</span><span class="operator">/</span>name<span class="operator">&gt;</span>
<span class="operator">&lt;</span>icon<span class="operator">&gt;</span>facebook<span class="operator">&lt;</span><span class="operator">/</span>icon<span class="operator">&gt;</span>
<span class="operator">&lt;</span>translations<span class="operator">&gt;</span>account<span class="operator">-</span>plugins<span class="operator">&lt;</span><span class="operator">/</span>translations<span class="operator">&gt;</span>
<span class="operator">&lt;</span>domains<span class="operator">&gt;</span><span class="operator">.</span><span class="operator">*</span>facebook\<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>domains<span class="operator">&gt;</span>
<span class="operator">&lt;</span>plugin<span class="operator">&gt;</span>generic<span class="operator">-</span>oauth<span class="operator">&lt;</span><span class="operator">/</span>plugin<span class="operator">&gt;</span>
<span class="operator">&lt;</span>single<span class="operator">-</span>account<span class="operator">&gt;</span><span class="keyword">true</span><span class="operator">&lt;</span><span class="operator">/</span>single<span class="operator">-</span>account<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="keyword">template</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;auth&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;method&quot;</span><span class="operator">&gt;</span>oauth2<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;mechanism&quot;</span><span class="operator">&gt;</span>user_agent<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;oauth2&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;user_agent&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;Host&quot;</span><span class="operator">&gt;</span>www<span class="operator">.</span>facebook<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;AuthPath&quot;</span><span class="operator">&gt;</span><span class="operator">/</span>dialog<span class="operator">/</span>oauth<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;RedirectUri&quot;</span><span class="operator">&gt;</span>https:<span class="comment">//www.facebook.com/connect/login_success.html&lt;/setting&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;Display&quot;</span><span class="operator">&gt;</span>popup<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting type<span class="operator">=</span><span class="string">&quot;as&quot;</span> name<span class="operator">=</span><span class="string">&quot;Scope&quot;</span><span class="operator">&gt;</span><span class="operator">[</span><span class="char">'publish_stream'</span><span class="operator">,</span><span class="char">'status_update'</span><span class="operator">,</span><span class="char">'user_photos'</span><span class="operator">]</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;ClientId&quot;</span><span class="operator">&gt;</span><span class="number">412471239412</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting type<span class="operator">=</span><span class="string">&quot;as&quot;</span> name<span class="operator">=</span><span class="string">&quot;AllowedSchemes&quot;</span><span class="operator">&gt;</span><span class="operator">[</span><span class="char">'https'</span><span class="operator">,</span><span class="char">'http'</span><span class="operator">]</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span><span class="keyword">template</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>provider<span class="operator">&gt;</span></pre>
<p>This file name must match the value of the <code>id</code> tag in the root <code>&lt;provider&gt;</code> element, plus the <code>&quot;.provider&quot;</code> suffix.</p>
<p>The only mandatory element is <code>&lt;name&gt;</code>, and that's the display name of the provider. Other optional elements are:</p>
<ul>
<li><code>&lt;icon&gt;</code>: an icon for the account provider.</li>
<li><code>&lt;translations&gt;</code>: a translation domain for the <code>&lt;name&gt;</code> element.</li>
<li><code>&lt;domains&gt;</code>: a regular expression matching the domain(s) where this account is used.</li>
<li><code>&lt;plugin&gt;</code>: the ID of the account plugin which must be used to create or edit the accounts for this provider.</li>
<li><code>&lt;single-account&gt;</code>: whether the account editing UI should prevent the user to create multiple accounts for this provider.</li>
<li><code>&lt;template&gt;</code>: default settings or authentication parameters for the account. This element is described in <a href="#the-template-element">The template element</a> section.</li>
</ul>
<h2 id="the-service-files">The service files</h2>
<p>A <code>.service</code> file describes an online service. It's a XML file, typically installed in <code>/usr/share/accounts/services/</code> or <code>~/.local/share/accounts/services/</code> which looks like this:</p>
<pre class="cpp"><span class="operator">&lt;</span><span class="operator">?</span>xml version<span class="operator">=</span><span class="string">&quot;1.0&quot;</span> encoding<span class="operator">=</span><span class="string">&quot;UTF-8&quot;</span><span class="operator">?</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>service id<span class="operator">=</span><span class="string">&quot;picasa&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>type<span class="operator">&gt;</span>photo<span class="operator">-</span>sharing<span class="operator">&lt;</span><span class="operator">/</span>type<span class="operator">&gt;</span>
<span class="operator">&lt;</span>name<span class="operator">&gt;</span>Picasa<span class="operator">&lt;</span><span class="operator">/</span>name<span class="operator">&gt;</span>
<span class="operator">&lt;</span>icon<span class="operator">&gt;</span>icon_picasa<span class="operator">&lt;</span><span class="operator">/</span>icon<span class="operator">&gt;</span>
<span class="operator">&lt;</span>provider<span class="operator">&gt;</span>google<span class="operator">&lt;</span><span class="operator">/</span>provider<span class="operator">&gt;</span>
<span class="operator">&lt;</span>translations<span class="operator">&gt;</span>account<span class="operator">-</span>plugins<span class="operator">&lt;</span><span class="operator">/</span>translations<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="keyword">template</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;auth/oauth2/user_agent&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting type<span class="operator">=</span><span class="string">&quot;as&quot;</span> name<span class="operator">=</span><span class="string">&quot;Scope&quot;</span><span class="operator">&gt;</span><span class="operator">[</span><span class="string">&quot;https://picasaweb.google.com/data/&quot;</span><span class="operator">]</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting type<span class="operator">=</span><span class="string">&quot;i&quot;</span> name<span class="operator">=</span><span class="string">&quot;max-resolution&quot;</span><span class="operator">&gt;</span><span class="number">2048</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span><span class="keyword">template</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">&gt;</span></pre>
<p>The name of the file must match the contents of the <code>id</code> tag in the root <code>&lt;service&gt;</code> element, plus the <code>&quot;.service&quot;</code> suffix. Despite the complexity of the example above, only two pieces of information are mandatory:</p>
<ul>
<li><code>&lt;provider&gt;</code>: the ID of the account provider. See the <a href="#the-provider-files">section about provider files</a> for more.</li>
<li><code>&lt;type&gt;</code>: the type of service; some applications don't have a fixed set of supported services, but rather can use any service implementing a certain protocol (for example, IMAP for e-mail clients): in such cases, the different services would use a common type here, and applications would refer to them via this type. Otherwise, the type should be set to a unique string which has low chances of conflicting with other types: for instance, a good practice would be to set it to &quot;<i>&lt;provider-id&gt;-&lt;service-id&gt;&quot;</i>.</li>
</ul>
<p>Other information which can be embedded in <code>.service</code> files:</p>
<ul>
<li><code>&lt;name&gt;</code>: a display name for the service.</li>
<li><code>&lt;icon&gt;</code>: an icon name for the service.</li>
<li><code>&lt;translations&gt;</code>: a translation domain for the <code>&lt;name&gt;</code> element.</li>
<li><code>&lt;template&gt;</code>: default settings or authentication parameters for the service. This element is described in <a href="#the-template-element">The template element</a> section.</li>
</ul>
<h2 id="the-application-files">The application files</h2>
<p>An <code>.application</code> file describes how an application uses online accounts. It's a XML file, typically installed in <code>/usr/share/accounts/applications/</code> or <code>~/.local/share/accounts/applications/</code> which looks like this:</p>
<pre class="cpp"><span class="operator">&lt;</span><span class="operator">?</span>xml version<span class="operator">=</span><span class="string">&quot;1.0&quot;</span> encoding<span class="operator">=</span><span class="string">&quot;UTF-8&quot;</span> <span class="operator">?</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>application id<span class="operator">=</span><span class="string">&quot;my-photo-manager&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>description<span class="operator">&gt;</span>My Photo Manager<span class="operator">&lt;</span><span class="operator">/</span>description<span class="operator">&gt;</span>
<span class="operator">&lt;</span>desktop<span class="operator">-</span>entry<span class="operator">&gt;</span>photo<span class="operator">-</span>manager<span class="operator">.</span>desktop<span class="operator">&lt;</span><span class="operator">/</span>desktop<span class="operator">-</span>entry<span class="operator">&gt;</span>
<span class="operator">&lt;</span>translations<span class="operator">&gt;</span>photo<span class="operator">-</span>manager<span class="operator">&lt;</span><span class="operator">/</span>translations<span class="operator">&gt;</span>
<span class="operator">&lt;</span>services<span class="operator">&gt;</span>
<span class="operator">&lt;</span>service id<span class="operator">=</span><span class="string">&quot;photo-instagram&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>description<span class="operator">&gt;</span>Publish your pictures to Instagram<span class="operator">&lt;</span><span class="operator">/</span>description<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">&gt;</span>
<span class="operator">&lt;</span>service id<span class="operator">=</span><span class="string">&quot;photo-facebook&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>description<span class="operator">&gt;</span>Publish your pictures to Facebook<span class="operator">&lt;</span><span class="operator">/</span>description<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>services<span class="operator">&gt;</span>
<span class="operator">&lt;</span>service<span class="operator">-</span>types<span class="operator">&gt;</span>
<span class="operator">&lt;</span>service<span class="operator">-</span>type id<span class="operator">=</span><span class="string">&quot;photo-sharing&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>description<span class="operator">&gt;</span>Publish your pictures to your favorite site<span class="operator">&lt;</span><span class="operator">/</span>description<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">-</span>type<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>service<span class="operator">-</span>types<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>application<span class="operator">&gt;</span></pre>
<p>The name of the file must match the contents of the <code>id</code> tag in the root <code>&lt;application&gt;</code> element, plus the <code>&quot;.application&quot;</code> suffix. None of the elements is mandatory, but in order to be linked to some online accounts there should be at least one valid <code>&lt;service&gt;</code> or <code>&lt;service-type&gt;</code> element.</p>
<p>The XML elements that an <code>.application</code> file can contain are:</p>
<ul>
<li><code>&lt;description&gt;</code>: a description of the application; if missing, this will be read from the <code>.desktop</code> file associated with the application.</li>
<li><code>&lt;desktop-entry&gt;</code>: the ID of the <code>.desktop</code> file associated with the application (with or without the <code>&quot;.desktop&quot;</code> suffix); if missing, it's assumed to be the same application ID specified in the <code>id</code> tag of the root <code>&lt;application&gt;</code> element.</li>
<li><code>&lt;translations&gt;</code>: a translation domain for all the <code>&lt;description&gt;</code> elements.</li>
<li><code>&lt;services&gt;</code>: a container for <code>&lt;service&gt;</code> elements, which refer to the IDs of the <a href="#the-service-files">services</a> which the application can use.</li>
<li><code>&lt;service-types&gt;</code>: a container for <code>&lt;service-type&gt;</code> elements, which refer to the IDs of the service types which the application can use. See the documentation for the <code>&lt;type&gt;</code> element in <a href="#the-service-files">service files</a>.</li>
</ul>
<h3 >The template element</h3>
<p>Accounts can contain settings which can be useful for applications, for example authentication parameters or server settings (such as the address and port of an IMAP server). These settings are stored in the accounts database, and an application can read them by accessing the <a href="Ubuntu.OnlineAccounts.AccountService.md#settings-prop">AccountService::settings</a> property. The <code>&lt;template&gt;</code> element in the <code>.service</code> or <code>.provider</code> files can be used to specify a fallback value for those settings which have not been set in the accounts database.</p>
<p>A <code>.service</code> file <code>&lt;template&gt;</code> element is used when the <code>id</code> of the <a href="Ubuntu.OnlineAccounts.AccountService.md#service-prop">AccountService::service</a> object matches its ID. The <code>.provider</code> file <code>&lt;template&gt;</code> element is instead used when the <code>id</code> of the <a href="Ubuntu.OnlineAccounts.AccountService.md#service-prop">AccountService::service</a> object is empty, meaning that the <code>AccountService</code> is describing the global account, and not a specific service.</p>
<h4 >Format of the default settings</h4>
<p>The <code>&lt;template&gt;</code> element describes a dictionary of keys and values, where the key is always a string, and values can be any data type. Keys can contain the &quot;/&quot; character, which can be used to define key groups; for instance:</p>
<pre class="cpp"><span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;net/server/address&quot;</span><span class="operator">&gt;</span>example<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;net/server/port&quot;</span> type<span class="operator">=</span><span class="string">&quot;u&quot;</span><span class="operator">&gt;</span><span class="number">2500</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;net/use-ssl&quot;</span> type<span class="operator">=</span><span class="string">&quot;b&quot;</span><span class="operator">&gt;</span><span class="keyword">false</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span></pre>
<p>is equivalent to</p>
<pre class="cpp"><span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;net&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;server&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;address&quot;</span><span class="operator">&gt;</span>example<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;port&quot;</span> type<span class="operator">=</span><span class="string">&quot;u&quot;</span><span class="operator">&gt;</span><span class="number">2500</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;use-ssl&quot;</span> type<span class="operator">=</span><span class="string">&quot;b&quot;</span><span class="operator">&gt;</span><span class="keyword">false</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span></pre>
<p>and also to</p>
<pre class="cpp"><span class="operator">&lt;</span>group name<span class="operator">=</span><span class="string">&quot;net/server&quot;</span><span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;address&quot;</span><span class="operator">&gt;</span>example<span class="operator">.</span>com<span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;port&quot;</span> type<span class="operator">=</span><span class="string">&quot;u&quot;</span><span class="operator">&gt;</span><span class="number">2500</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span>
<span class="operator">&lt;</span><span class="operator">/</span>group<span class="operator">&gt;</span>
<span class="operator">&lt;</span>setting name<span class="operator">=</span><span class="string">&quot;net/use-ssl&quot;</span> type<span class="operator">=</span><span class="string">&quot;b&quot;</span><span class="operator">&gt;</span><span class="keyword">false</span><span class="operator">&lt;</span><span class="operator">/</span>setting<span class="operator">&gt;</span></pre>
<p>Values are always assumed to be strings, unless a <code>type</code> attribute is set in the <code>&lt;setting&gt;</code> element; the most commonly used types are:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Type</th><th >Code</th><th >Example</th></tr></thead>
<tr valign="top"><td >string</td><td ><code>s</code></td><td ><code>&lt;setting..&#x2e;</code> <code>type=&quot;s&quot;&gt;Hello</code> <code>world!&lt;/setting&gt;</code></td></tr>
<tr valign="top"><td >boolean</td><td ><code>b</code></td><td ><code>&lt;setting..&#x2e;</code> <code>type=&quot;b&quot;&gt;true&lt;/setting&gt;</code></td></tr>
<tr valign="top"><td >integer</td><td ><code>i</code></td><td ><code>&lt;setting..&#x2e;</code> <code>type=&quot;i&quot;&gt;-12&lt;/setting&gt;</code></td></tr>
<tr valign="top"><td >unsigned</td><td ><code>u</code></td><td ><code>&lt;setting..&#x2e;</code> <code>type=&quot;u&quot;&gt;256&lt;/setting&gt;</code></td></tr>
<tr valign="top"><td >array of strings</td><td ><code>as</code></td><td ><code>&lt;setting..&#x2e;</code> <code>type=&quot;as&quot;&gt;[&quot;one&quot;,&quot;two&quot;]&lt;/setting&gt;</code></td></tr>
</table>
<h4 >Authentication data</h4>
<p>The object returned by the <a href="Ubuntu.OnlineAccounts.AccountService.md#authData-prop">AccountService::authData</a> property is also built with a similar fallback mechanism as the rest of account settings, but it's a bit more refined to especially address the needs of application developers to override the authentication parameters. A typical example is OAuth 2.0, where the application might need to specify a different <i>ClientId</i> and <i>ClientSecret</i> than those used by the rest of the system. Another example is that of an account provider offering a REST API with an OAuth 2.0 authentication for publishing pictures, but a basic username/password authentication to access an IMAP mail sever.</p>
<p>The authentication data consists of:</p>
<ul>
<li>the <code>CredentialsId</code> key: this is the numeric ID of the account credentials in the local machine. This key is usually never stored in the <code>&lt;template&gt;</code> element, as its value becomes known only when the account is created.</li>
<li>the <code>auth/method</code> key: a string defining which authentication plugin needs to be used. Please refer to the <a href="U1db.Index.md">libsignon-qt documentation</a>.</li>
<li>the <code>auth/mechanism</code> key: a string defining which authentication mechanism needs to be used. Each authentication plugin defines its own mechanisms, so please refer to the plugin's documentation.</li>
<li>all the settings defined under the <code>&quot;auth/</code> <i>&lt;method&gt;</i> <code>/</code> <i>&lt;mechanism&gt;</i> <code>&quot;</code> group. Each authentication plugin defines its own parameters, so please refer to the plugin's documentation.</li>
</ul>
<p>When the <a href="Ubuntu.OnlineAccounts.AccountService.md">AccountService</a> represents the global account, then the authentication data obtained by reading the <a href="Ubuntu.OnlineAccounts.AccountService.md#authData-prop">AccountService::authData</a> property follows the usual fallback scheme: the parameters stored in the accounts database have precence over the template parameters defined in the <code>.provider</code> file.</p>
<p>However, if the <a href="Ubuntu.OnlineAccounts.AccountService.md">AccountService</a> represent a service within an account, the authentication parameters are read in the following order (higher priority is listed first):</p>
<ul>
<li>parameters stored in the accounts database, for the specific service;</li>
<li>parameters stored in the <code>&lt;template&gt;</code> element of the <code>.service</code> file;</li>
<li>parameters stored in the accounts database, for the global account;</li>
<li>parameters stored in the <code>&lt;template&gt;</code> element of the <code>.provider</code> file.</li>
</ul>
<!-- @@@manifest-files.html -->
