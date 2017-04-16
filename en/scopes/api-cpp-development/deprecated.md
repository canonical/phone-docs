---
Title: deprecated
---

# deprecated

<dl class="reflist">
<dt>Member <a class="el" href="unity.scopes.SearchListenerBase.md#ac7904ac1f83fe60cddc8f08c6e7d971b">unity::scopes::SearchListenerBase::push</a>  (Filters const &amp;filters, <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> const &amp;filter_state)</dt>
<dd>Please override the push(Filters&amp; const) method instead. This method will be removed from future releases. </dd>
<dt>Member <a class="el" href="unity.scopes.SearchReply.md#a121842b4206980360c208a1f5828ef12">unity::scopes::SearchReply::push</a>  (Filters const &amp;filters, <a class="el" href="unity.scopes.FilterState.md" title="Stores the state of multiple filters. ">FilterState</a> const &amp;filter_state)=0</dt>
<dd>Sending filter state back to the UI is deprecated and will be removed from future releases. Please use the <a class="el" href="unity.scopes.SearchReply.md#abdd099e2e777b739988ce545a8fb3eec" title="Sends all filter definitions to the source of a query. ">push(Filters const&amp;)</a> method instead. <dl class="section return"><dt>Returns</dt><dd>True if the filters were accepted, false otherwise. </dd></dl>
</dd>
</dl>
