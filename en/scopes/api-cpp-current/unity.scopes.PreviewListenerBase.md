---
Title: unity.scopes.PreviewListenerBase
---
        
PreviewListenerBase
===================

Abstract base class for a scope to respond to preview requests. [More...](#details)

`#include <unity/scopes/PreviewListenerBase.h>`

Inheritance diagram for unity::scopes::PreviewListenerBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/5016060d-9ee2-4232-9067-ccf81839c7a0-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewListenerBase/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#a5e9fe1fa664cbb65a0389e5a39caf78b">push</a> (<a href="../unity.scopes.md#a5b970e3c73bf25548398b32e79b2224d">ColumnLayoutList</a> const &layouts)=0
 
Called by the scopes runtime for each column layout definition returned by preview().
 
virtual void 
<a href="#a1b4c366abea27471dc9ee31873c9c37a">push</a> (<a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a> const &)=0
 
Called by the scopes runtime for each preview chunk that is returned by preview().
 
virtual void 
<a href="#a2c11160354d49672100522d3e476b7e3">push</a> (std::string const &key, <a href="unity.scopes.Variant.md">Variant</a> const &value)=0
 
Called by the scopes runtime for each data field that is returned by preview().
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/ebe337b0-9b5e-46f9-a652-ee4fcc458140-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewListenerBase/closed.png) Public Member Functions inherited from <a href="unity.scopes.ListenerBase.md">unity::scopes::ListenerBase</a>
virtual void 
<a href="../unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b">finished</a> (<a href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &details)=0
 
Called once by the scopes runtime after the final result for a request was sent. More...
 
virtual void 
<a href="../unity.scopes.ListenerBase.md#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &op\_info)
 
Called by the scopes runtime each time a scope reports additional information about the reply to a query. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class for a scope to respond to preview requests.

An instance of this class must be returned from <a href="../unity.scopes.Scope.md#a82b24083994e676524b10c407f281aa4" title="Initiates preview request. ">Scope::preview()</a>.

