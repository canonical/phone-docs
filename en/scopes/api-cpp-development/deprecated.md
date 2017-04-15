---
Title: deprecated
---
        
Deprecated List
===============

<span id="_deprecated000001" class="anchor"></span>Member <a href="../unity.scopes.SearchListenerBase.md#ac7904ac1f83fe60cddc8f08c6e7d971b">unity::scopes::SearchListenerBase::push</a> (Filters const &filters, <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> const &filter\_state)  
Please override the push(Filters& const) method instead. This method will be removed from future releases.

<span id="_deprecated000002" class="anchor"></span>Member <a href="../unity.scopes.SearchReply.md#a121842b4206980360c208a1f5828ef12">unity::scopes::SearchReply::push</a> (Filters const &filters, <a href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> const &filter\_state)=0  
Sending filter state back to the UI is deprecated and will be removed from future releases. Please use the <a href="../unity.scopes.SearchReply.md#abdd099e2e777b739988ce545a8fb3eec" title="Sends all filter definitions to the source of a query. ">push(Filters const&amp;)</a> method instead.

Returns  
True if the filters were accepted, false otherwise.

