---
Title: QtQuick.qtquick-demos-tweetsearch-example
---

# QtQuick.qtquick-demos-tweetsearch-example

<span class="subtitle"></span>
<!-- $$$demos/tweetsearch-description -->
<p class="centerAlign"><img src="../../../media/qtquick-demo-tweetsearch-med-1.png" alt="" /></p><p class="centerAlign"><img src="../../../media/qtquick-demo-tweetsearch-med-2.png" alt="" /></p><p><i>Tweet Search</i> is a QML application that searches items posted to Twitter service using a number of query parameters. Search can be done for tweets from a specified user, a hashtag, or a search phrase.</p>
<p>The search result is a list of items showing the contents of the tweet as well as the name and image of the user who posted it. Hashtags, names and links in the content are clickable. Clicking on the image will flip the item to reveal more information.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<p>Tweet Search uses Twitter API v1.1 for running seaches.</p>
<h2 id="request-authentication">Request Authentication</h2>
<p>Each request must be authenticated on behalf of the application. For demonstration purposes, the application uses a hard-coded token for identifying itself to the Twitter service. However, this token is subject to rate limits for the number of requests as well as possible expiration.</p>
<p>If you are having authentication or rate limit problems running the demo, obtain a set of application-specific tokens (consumer key and consumer secret) by registering a new application on <a href="https://dev.twitter.com/apps">https://dev.twitter.com/apps</a>.</p>
<p>Type in the two token values in <i>TweetsModel.qml</i>:</p>
<pre class="qml">    property <span class="type">string</span> <span class="name">consumerKey</span> : <span class="string">&quot;&quot;</span>
property <span class="type">string</span> <span class="name">consumerSecret</span> : <span class="string">&quot;&quot;</span></pre>
<p>Rebuild and run the demo.</p>
<h2 id="json-parsing">JSON Parsing</h2>
<p>Search results are returned in JSON (JavaScript Object Notation) format. <code>TweetsModel</code> uses an XMLHTTPRequest object to send an HTTP GET request, and calls JSON.parse() on the returned text string to convert it to a JavaScript object. Each object representing a tweet is then added to a <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a>:</p>
<pre class="qml">        var <span class="name">req</span> = new <span class="name">XMLHttpRequest</span>;
<span class="name">req</span>.<span class="name">open</span>(<span class="string">&quot;GET&quot;</span>, <span class="string">&quot;https://api.twitter.com/1.1/search/tweets.json?from=&quot;</span> <span class="operator">+</span> <span class="name">from</span> <span class="operator">+</span>
<span class="string">&quot;&amp;count=10&amp;q=&quot;</span> <span class="operator">+</span> <span class="name">encodePhrase</span>(<span class="name">phrase</span>));
<span class="name">req</span>.<span class="name">setRequestHeader</span>(<span class="string">&quot;Authorization&quot;</span>, <span class="string">&quot;Bearer &quot;</span> <span class="operator">+</span> <span class="name">bearerToken</span>);
<span class="name">req</span>.<span class="name">onreadystatechange</span> <span class="operator">=</span> <span class="keyword">function</span>() {
<span class="name">status</span> <span class="operator">=</span> <span class="name">req</span>.<span class="name">readyState</span>;
<span class="keyword">if</span> (<span class="name">status</span> <span class="operator">===</span> <span class="name">XMLHttpRequest</span>.<span class="name">DONE</span>) {
var <span class="name">objectArray</span> = <span class="name">JSON</span>.<span class="name">parse</span>(<span class="name">req</span>.<span class="name">responseText</span>);
<span class="keyword">if</span> (<span class="name">objectArray</span>.<span class="name">errors</span> <span class="operator">!==</span> <span class="name">undefined</span>)
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Error fetching tweets: &quot;</span> <span class="operator">+</span> <span class="name">objectArray</span>.<span class="name">errors</span>[<span class="number">0</span>].<span class="name">message</span>)
<span class="keyword">else</span> {
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">key</span> in <span class="name">objectArray</span>.<span class="name">statuses</span>) {
var <span class="name">jsonObject</span> = <span class="name">objectArray</span>.<span class="name">statuses</span>[<span class="name">key</span>];
<span class="name">tweets</span>.<span class="name">append</span>(<span class="name">jsonObject</span>);
}
}
<span class="keyword">if</span> (<span class="name">wasLoading</span> <span class="operator">==</span> <span class="number">true</span>)
<span class="name">wrapper</span>.<span class="name">isLoaded</span>()
}
<span class="name">wasLoading</span> <span class="operator">=</span> (<span class="name">status</span> <span class="operator">===</span> <span class="name">XMLHttpRequest</span>.<span class="name">LOADING</span>);
}
<span class="name">req</span>.<span class="name">send</span>();</pre>
<p>Files:</p>
<ul>
<li>demos/tweetsearch/tweetsearch.qml</li>
<li>demos/tweetsearch/content/FlipBar.qml</li>
<li>demos/tweetsearch/content/LineInput.qml</li>
<li>demos/tweetsearch/content/ListFooter.qml</li>
<li>demos/tweetsearch/content/ListHeader.qml</li>
<li>demos/tweetsearch/content/SearchDelegate.qml</li>
<li>demos/tweetsearch/content/TweetDelegate.qml</li>
<li>demos/tweetsearch/content/TweetsModel.qml</li>
<li>demos/tweetsearch/content/tweetsearch.js</li>
<li>demos/tweetsearch/main.cpp</li>
<li>demos/tweetsearch/tweetsearch.pro</li>
<li>demos/tweetsearch/tweetsearch.qmlproject</li>
<li>demos/tweetsearch/tweetsearch.qrc</li>
</ul>
<p><b>See also </b>QML Applications.</p>
<!-- @@@demos/tweetsearch -->
