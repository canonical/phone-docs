---
Title: autopilot.introspection
---
        
<span id="autopilot-introspection-retrieve-proxy-objects"></span>
Package for introspection object support and search.

This package contains the methods and classes that are of use for accessing dbus proxy objects and creating Custom Proxy Object classes.

For retrieving proxy objects for already existing processes use `get_proxy_object_for_existing_process` This takes search criteria and return a proxy object that can be queried and introspected.

For creating your own Custom Proxy Classes use `autopilot.introspection.CustomEmulatorBase`

See also

The tutorial section <a href="../tutorial-advanced_autopilot.md#custom-proxy-classes" class="reference internal"><em>Writing Custom Proxy Classes</em></a> for further details on using ‘CustomEmulatorBase’ to write custom proxy classes.

### Elements

[ProxyBase](../autopilot.introspection.ProxyBase.md)  
A class that supports transparent data retrieval from the applica

