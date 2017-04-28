---
Title: QtQuick.qtquick-tutorials-samegame-samegame3-example
---

# QtQuick.qtquick-tutorials-samegame-samegame3-example

<span class="subtitle"></span>
<!-- $$$tutorials/samegame/samegame3-description -->
<h3 >Making a playable game</h3>
<p>Now that we have all the game components, we can add the game logic that dictates how a player interacts with the blocks and plays the game until it is won or lost.</p>
<p>To do this, we have added the following functions to <code>samegame.js</code>:</p>
<ul>
<li><code>handleClick(x,y)</code></li>
<li><code>floodFill(xIdx,yIdx,type)</code></li>
<li><code>shuffleDown()</code></li>
<li><code>victoryCheck()</code></li>
<li><code>floodMoveCheck(xIdx, yIdx, type)</code></li>
</ul>
<p>As this is a tutorial about QML, not game design, we will only discuss <code>handleClick()</code> and <code>victoryCheck()</code> below since they interface directly with the QML types. Note that although the game logic here is written in JavaScript, it could have been written in C++ and then exposed to QML.</p>
<h4 >Enabling mouse click interaction</h4>
<p>To make it easier for the JavaScript code to interface with the QML types, we have added an Item called <code>gameCanvas</code> to <code>samegame.qml</code>. It replaces the background as the item which contains the blocks. It also accepts mouse input from the user. Here is the item code:</p>
<pre class="qml">        <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">gameCanvas</span>
property <span class="type">int</span> <span class="name">score</span>: <span class="number">0</span>
property <span class="type">int</span> <span class="name">blockSize</span>: <span class="number">40</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">width</span> <span class="operator">%</span> <span class="name">blockSize</span>)
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">%</span> <span class="name">blockSize</span>)
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">handleClick</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}</pre>
<p>The <code>gameCanvas</code> item is the exact size of the board, and has a <code>score</code> property and a <a href="QtQuick.MouseArea.md">MouseArea</a> to handle mouse clicks. The blocks are now created as its children, and its dimensions are used to determine the board size so that the application scales to the available screen size. Since its size is bound to a multiple of <code>blockSize</code>, <code>blockSize</code> was moved out of <code>samegame.js</code> and into <code>samegame.qml</code> as a QML property. Note that it can still be accessed from the script.</p>
<p>When clicked, the <a href="QtQuick.MouseArea.md">MouseArea</a> calls <code>handleClick()</code> in <code>samegame.js</code>, which determines whether the player's click should cause any blocks to be removed, and updates <code>gameCanvas.score</code> with the current score if necessary. Here is the <code>handleClick()</code> function:</p>
<pre class="js"><span class="keyword">function</span> <span class="name">handleClick</span>(<span class="name">xPos</span>, yPos) {
var <span class="name">column</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">xPos</span> <span class="operator">/</span> <span class="name">gameCanvas</span>.<span class="name">blockSize</span>);
var <span class="name">row</span> = <span class="name">Math</span>.<span class="name">floor</span>(<span class="name">yPos</span> <span class="operator">/</span> <span class="name">gameCanvas</span>.<span class="name">blockSize</span>);
<span class="keyword">if</span> (<span class="name">column</span> <span class="operator">&gt;=</span> <span class="name">maxColumn</span> <span class="operator">||</span> <span class="name">column</span> <span class="operator">&lt;</span> <span class="number">0</span> <span class="operator">||</span> <span class="name">row</span> <span class="operator">&gt;=</span> <span class="name">maxRow</span> <span class="operator">||</span> <span class="name">row</span> <span class="operator">&lt;</span> <span class="number">0</span>)
<span class="keyword">return</span>;
<span class="keyword">if</span> (<span class="name">board</span>[<span class="name">index</span>(<span class="name">column</span>, <span class="name">row</span>)] <span class="operator">==</span> <span class="number">null</span>)
<span class="keyword">return</span>;
<span class="comment">//If it's a valid block, remove it and all connected (does nothing if it's not connected)</span>
<span class="name">floodFill</span>(<span class="name">column</span>, <span class="name">row</span>, -<span class="number">1</span>);
<span class="keyword">if</span> (<span class="name">fillFound</span> <span class="operator">&lt;=</span> <span class="number">0</span>)
<span class="keyword">return</span>;
<span class="name">gameCanvas</span>.<span class="name">score</span> <span class="operator">+=</span> (<span class="name">fillFound</span> <span class="operator">-</span> <span class="number">1</span>) <span class="operator">*</span> (<span class="name">fillFound</span> <span class="operator">-</span> <span class="number">1</span>);
<span class="name">shuffleDown</span>();
<span class="name">victoryCheck</span>();
}</pre>
<p>Note that if <code>score</code> was a global variable in the <code>samegame.js</code> file you would not be able to bind to it. You can only bind to QML properties.</p>
<h4 >Updating the score</h4>
<p>When the player clicks a block and triggers <code>handleClick()</code>, <code>handleClick()</code> also calls <code>victoryCheck()</code> to update the score and to check whether the player has completed the game. Here is the <code>victoryCheck()</code> code:</p>
<pre class="js"><span class="keyword">function</span> <span class="name">victoryCheck</span>() {
<span class="comment">//Award bonus points if no blocks left</span>
var <span class="name">deservesBonus</span> = <span class="number">true</span>;
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">column</span> = <span class="name">maxColumn</span> <span class="operator">-</span> <span class="number">1</span>; <span class="name">column</span> <span class="operator">&gt;=</span> <span class="number">0</span>; column--)
<span class="keyword">if</span> (<span class="name">board</span>[<span class="name">index</span>(<span class="name">column</span>, <span class="name">maxRow</span> <span class="operator">-</span> <span class="number">1</span>)] <span class="operator">!=</span> <span class="number">null</span>)
<span class="name">deservesBonus</span> <span class="operator">=</span> <span class="number">false</span>;
<span class="keyword">if</span> (<span class="name">deservesBonus</span>)
<span class="name">gameCanvas</span>.<span class="name">score</span> <span class="operator">+=</span> <span class="number">500</span>;
<span class="comment">//Check whether game has finished</span>
<span class="keyword">if</span> (<span class="name">deservesBonus</span> <span class="operator">||</span> !(<span class="name">floodMoveCheck</span>(<span class="number">0</span>, <span class="name">maxRow</span> <span class="operator">-</span> <span class="number">1</span>, -<span class="number">1</span>)))
<span class="name">dialog</span>.<span class="name">show</span>(<span class="string">&quot;Game Over. Your score is &quot;</span> <span class="operator">+</span> <span class="name">gameCanvas</span>.<span class="name">score</span>);
}</pre>
<p>This updates the <code>gameCanvas.score</code> value and displays a &quot;Game Over&quot; dialog if the game is finished.</p>
<p>The Game Over dialog is created using a <code>Dialog</code> type that is defined in <code>Dialog.qml</code>. Here is the <code>Dialog.qml</code> code. Notice how it is designed to be usable imperatively from the script file, via the functions and signals:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">container</span>
<span class="keyword">function</span> <span class="name">show</span>(<span class="name">text</span>) {
<span class="name">dialogText</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">text</span>;
<span class="name">container</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">1</span>;
}
<span class="keyword">function</span> <span class="name">hide</span>() {
<span class="name">container</span>.<span class="name">opacity</span> <span class="operator">=</span> <span class="number">0</span>;
}
<span class="name">width</span>: <span class="name">dialogText</span>.<span class="name">width</span> <span class="operator">+</span> <span class="number">20</span>
<span class="name">height</span>: <span class="name">dialogText</span>.<span class="name">height</span> <span class="operator">+</span> <span class="number">20</span>
<span class="name">opacity</span>: <span class="number">0</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">dialogText</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;&quot;</span>
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">hide</span>();
}
}</pre>
<p>And this is how it is used in the main <code>samegame.qml</code> file:</p>
<pre class="qml">    <span class="type">Dialog</span> {
<span class="name">id</span>: <span class="name">dialog</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">z</span>: <span class="number">100</span>
}</pre>
<p>We give the dialog a <a href="QtQuick.Item.md#z-prop">z</a> value of 100 to ensure it is displayed on top of our other components. The default <code>z</code> value for an item is 0.</p>
<h4 >A dash of color</h4>
<p>It's not much fun to play Same Game if all the blocks are the same color, so we've modified the <code>createBlock()</code> function in <code>samegame.js</code> to randomly create a different type of block (for either red, green or blue) each time it is called. <code>Block.qml</code> has also changed so that each block contains a different image depending on its type:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">block</span>
property <span class="type">int</span> <span class="name">type</span>: <span class="number">0</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">img</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: {
<span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">0</span>)
<span class="keyword">return</span> <span class="string">&quot;../shared/pics/redStone.png&quot;</span>;
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">type</span> <span class="operator">==</span> <span class="number">1</span>)
<span class="keyword">return</span> <span class="string">&quot;../shared/pics/blueStone.png&quot;</span>;
<span class="keyword">else</span>
<span class="keyword">return</span> <span class="string">&quot;../shared/pics/greenStone.png&quot;</span>;
}
}
}</pre>
<h3 >A working game</h3>
<p>Now we now have a working game! The blocks can be clicked, the player can score, and the game can end (and then you can start a new one). Here is a screenshot of what has been accomplished so far:</p>
<p class="centerAlign"><img src="../../../media/declarative-adv-tutorial3.png" alt="" /></p><p>This is what <code>samegame.qml</code> looks like now:</p>
<pre class="qml">import QtQuick 2.0
import &quot;samegame.js&quot; as SameGame
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">screen</span>
<span class="name">width</span>: <span class="number">490</span>; <span class="name">height</span>: <span class="number">720</span>
<span class="type"><a href="QtQuick.SystemPalette.md">SystemPalette</a></span> { <span class="name">id</span>: <span class="name">activePalette</span> }
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="type">anchors</span> { <span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>; <span class="name">bottom</span>: <span class="name">toolBar</span>.<span class="name">top</span> }
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">background</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: <span class="string">&quot;../shared/pics/background.jpg&quot;</span>
<span class="name">fillMode</span>: <span class="name">Image</span>.<span class="name">PreserveAspectCrop</span>
}
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">gameCanvas</span>
property <span class="type">int</span> <span class="name">score</span>: <span class="number">0</span>
property <span class="type">int</span> <span class="name">blockSize</span>: <span class="number">40</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">width</span> <span class="operator">%</span> <span class="name">blockSize</span>)
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> (<span class="name">parent</span>.<span class="name">height</span> <span class="operator">%</span> <span class="name">blockSize</span>)
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">handleClick</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}
}
<span class="type">Dialog</span> {
<span class="name">id</span>: <span class="name">dialog</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">z</span>: <span class="number">100</span>
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">toolBar</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">30</span>
<span class="name">color</span>: <span class="name">activePalette</span>.<span class="name">window</span>
<span class="name">anchors</span>.bottom: <span class="name">screen</span>.<span class="name">bottom</span>
<span class="type">Button</span> {
<span class="type">anchors</span> { <span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
<span class="name">text</span>: <span class="string">&quot;New Game&quot;</span>
<span class="name">onClicked</span>: <span class="name">SameGame</span>.<span class="name">startNewGame</span>()
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">score</span>
<span class="type">anchors</span> { <span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>; <span class="name">verticalCenter</span>: <span class="name">parent</span>.<span class="name">verticalCenter</span> }
<span class="name">text</span>: <span class="string">&quot;Score: Who knows?&quot;</span>
}
}
}</pre>
<p>The game works, but it's a little boring right now. Where are the smooth animated transitions? Where are the high scores? If you were a QML expert you could have written these in the first iteration, but in this tutorial they've been saved until the next chapter - where your application becomes alive!</p>
<p>Files:</p>
<ul>
<li>tutorials/samegame/samegame3/Block.qml</li>
<li>tutorials/samegame/samegame3/Button.qml</li>
<li>tutorials/samegame/samegame3/Dialog.qml</li>
<li>tutorials/samegame/samegame3/samegame.js</li>
<li>tutorials/samegame/samegame3/samegame.qml</li>
<li>tutorials/samegame/samegame3/samegame3.qmlproject</li>
</ul>
<!-- @@@tutorials/samegame/samegame3 -->
<p class="naviNextPrevious footerNavi">
<a class="prevPage" href="QtQuick.tutorials-samegame-samegame2/">QML Advanced Tutorial 2 - Populating the Game Canvas</a>
<a class="nextPage" href="QtQuick.tutorials-samegame-samegame4/">QML Advanced Tutorial 4 - Finishing Touches</a>
</p>
