---
Title: QtQuick.qtquick-demos-stocqt-example
---

# QtQuick.qtquick-demos-stocqt-example

<span class="subtitle"></span>
<!-- $$$demos/stocqt-description -->
<p class="centerAlign"><img src="../../../media/qtquick-demo-stocqt.png" alt="" /></p><p>The <i>StocQt</i> application presents a trend chart for the first stock in the list of NASDAQ-100 stocks maintained by it. It allows the user to choose another stock from the list, and fetches the required data for the selected stock by sending an <code>XMLHttpRequest</code> to http://finance.yahoo.com.</p>
<p>The application uses several custom types such as Button, CheckBox, StockChart, StockInfo, StockView, and so on. These types are used to present the stock data in a readable form and also let the user customize the trend chart. For example, the user can choose to view the yearly, monthly, or daily trends in the stock price.</p>
<p>The application uses the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.views/#objectmodel">ObjectModel</a> type to access the two visual data models that it depends on.</p>
<pre class="qml">    <span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">root</span>
...
<span class="name">model</span>: <span class="name">ObjectModel</span> {
<span class="type">StockListView</span> {
<span class="name">id</span>: <span class="name">listView</span>
<span class="name">width</span>: <span class="name">root</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">root</span>.<span class="name">height</span>
}
<span class="type">StockView</span> {
<span class="name">id</span>: <span class="name">stockView</span>
<span class="name">width</span>: <span class="name">root</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">root</span>.<span class="name">height</span>
<span class="name">stocklist</span>: <span class="name">listView</span>
<span class="name">stock</span>: <span class="name">stock</span>
}
}
}</pre>
<p>The StockListView model is a static data model listing the NASDAQ-100 stocks with basic information such as stockId, name, value, change, and so on. This data model is used by the application if the user wants to choose another stock from the list.</p>
<p>StockView is a complex data model that presents a trend chart for the selected stock. It uses another custom type, StockChart, which presents the graphical trend of the stock price using a Canvas. This data model is used for most of the time during the lifetime of the application.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">chart</span>
<span class="name">width</span>: <span class="number">320</span>
<span class="name">height</span>: <span class="number">200</span>
...
<span class="type"><a href="QtQuick.Canvas.md">Canvas</a></span> {
<span class="name">id</span>: <span class="name">canvas</span>
...
<span class="name">onPaint</span>: {
<span class="keyword">if</span> (!<span class="name">stockModel</span>.<span class="name">ready</span>) {
<span class="keyword">return</span>;
}
<span class="name">numPoints</span> <span class="operator">=</span> <span class="name">stockModel</span>.<span class="name">indexOf</span>(<span class="name">chart</span>.<span class="name">startDate</span>);
<span class="keyword">if</span> (<span class="name">chart</span>.<span class="name">gridSize</span> <span class="operator">==</span> <span class="number">0</span>)
<span class="name">chart</span>.<span class="name">gridSize</span> <span class="operator">=</span> <span class="name">numPoints</span>
var <span class="name">ctx</span> = <span class="name">canvas</span>.<span class="name">getContext</span>(<span class="string">&quot;2d&quot;</span>);
<span class="name">ctx</span>.<span class="name">globalCompositeOperation</span> <span class="operator">=</span> <span class="string">&quot;source-over&quot;</span>;
<span class="name">ctx</span>.<span class="name">lineWidth</span> <span class="operator">=</span> <span class="number">1</span>;
<span class="name">drawBackground</span>(<span class="name">ctx</span>);
var <span class="name">highestPrice</span> = <span class="number">0</span>;
var <span class="name">highestVolume</span> = <span class="number">0</span>;
var <span class="name">lowestPrice</span> = -<span class="number">1</span>;
var <span class="name">points</span> = [];
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="name">numPoints</span>, <span class="name">j</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&gt;=</span> <span class="number">0</span> ; <span class="name">i</span> <span class="operator">-=</span> <span class="name">pixelSkip</span>, <span class="name">j</span> <span class="operator">+=</span> <span class="name">pixelSkip</span>) {
var <span class="name">price</span> = <span class="name">stockModel</span>.<span class="name">get</span>(<span class="name">i</span>);
<span class="keyword">if</span> (<span class="name">parseFloat</span>(<span class="name">highestPrice</span>) <span class="operator">&lt;</span> <span class="name">parseFloat</span>(<span class="name">price</span>.<span class="name">high</span>))
<span class="name">highestPrice</span> <span class="operator">=</span> <span class="name">price</span>.<span class="name">high</span>;
<span class="keyword">if</span> (<span class="name">parseInt</span>(<span class="name">highestVolume</span>, <span class="number">10</span>) <span class="operator">&lt;</span> <span class="name">parseInt</span>(<span class="name">price</span>.<span class="name">volume</span>, <span class="number">10</span>))
<span class="name">highestVolume</span> <span class="operator">=</span> <span class="name">price</span>.<span class="name">volume</span>;
<span class="keyword">if</span> (<span class="name">lowestPrice</span> <span class="operator">&lt;</span> <span class="number">0</span> <span class="operator">||</span> <span class="name">parseFloat</span>(<span class="name">lowestPrice</span>) <span class="operator">&gt;</span> <span class="name">parseFloat</span>(<span class="name">price</span>.<span class="name">low</span>))
<span class="name">lowestPrice</span> <span class="operator">=</span> <span class="name">price</span>.<span class="name">low</span>;
<span class="name">points</span>.<span class="name">push</span>({
x: <span class="name">j</span> <span class="operator">*</span> <span class="name">xGridStep</span>,
open: <span class="name">price</span>.<span class="name">open</span>,
close: <span class="name">price</span>.<span class="name">close</span>,
high: <span class="name">price</span>.<span class="name">high</span>,
low: <span class="name">price</span>.<span class="name">low</span>,
volume: <span class="name">price</span>.<span class="name">volume</span>
});
}
<span class="keyword">if</span> (<span class="name">settings</span>.<span class="name">drawHighPrice</span>)
<span class="name">drawPrice</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>, <span class="name">settings</span>.<span class="name">highColor</span>, <span class="string">&quot;high&quot;</span>, <span class="name">points</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>);
<span class="keyword">if</span> (<span class="name">settings</span>.<span class="name">drawLowPrice</span>)
<span class="name">drawPrice</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>, <span class="name">settings</span>.<span class="name">lowColor</span>, <span class="string">&quot;low&quot;</span>, <span class="name">points</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>);
<span class="keyword">if</span> (<span class="name">settings</span>.<span class="name">drawOpenPrice</span>)
<span class="name">drawPrice</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>,<span class="name">settings</span>.<span class="name">openColor</span>, <span class="string">&quot;open&quot;</span>, <span class="name">points</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>);
<span class="keyword">if</span> (<span class="name">settings</span>.<span class="name">drawClosePrice</span>)
<span class="name">drawPrice</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>, <span class="name">settings</span>.<span class="name">closeColor</span>, <span class="string">&quot;close&quot;</span>, <span class="name">points</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>);
<span class="name">drawVolume</span>(<span class="name">ctx</span>, <span class="number">0</span>, <span class="name">numPoints</span>, <span class="name">settings</span>.<span class="name">volumeColor</span>, <span class="string">&quot;volume&quot;</span>, <span class="name">points</span>, <span class="name">highestVolume</span>);
<span class="name">drawScales</span>(<span class="name">ctx</span>, <span class="name">highestPrice</span>, <span class="name">lowestPrice</span>, <span class="name">highestVolume</span>);
}
}
}</pre>
<p>To understand the application better, browse through its code using Qt Creator.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<p>Files:</p>
<ul>
<li>demos/stocqt/stocqt.qml</li>
<li>demos/stocqt/content/Button.qml</li>
<li>demos/stocqt/content/CheckBox.qml</li>
<li>demos/stocqt/content/StockChart.qml</li>
<li>demos/stocqt/content/StockInfo.qml</li>
<li>demos/stocqt/content/StockListModel.qml</li>
<li>demos/stocqt/content/StockListView.qml</li>
<li>demos/stocqt/content/StockModel.qml</li>
<li>demos/stocqt/content/StockSettingsPanel.qml</li>
<li>demos/stocqt/content/StockView.qml</li>
<li>demos/stocqt/main.cpp</li>
<li>demos/stocqt/stocqt.pro</li>
<li>demos/stocqt/stocqt.qmlproject</li>
<li>demos/stocqt/stocqt.qrc</li>
</ul>
<p><b>See also </b>QML Applications.</p>
<!-- @@@demos/stocqt -->
