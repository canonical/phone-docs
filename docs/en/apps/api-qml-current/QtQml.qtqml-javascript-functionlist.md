---
Title: QtQml.qtqml-javascript-functionlist
---

# QtQml.qtqml-javascript-functionlist

<span class="subtitle"></span>
<!-- $$$qtqml-javascript-functionlist.html-description -->
<p>This reference contains a list of objects, functions and properties supported by the QML engine. For a detailed description, see the ECMA-262 specification.</p>
<h2 id="the-global-object">The Global Object</h2>
<h3 >Value Properties</h3>
<ul>
<li>NaN</li>
<li>Infinity</li>
<li>undefined</li>
</ul>
<h3 >Function Properties</h3>
<ul>
<li>eval(x)</li>
<li>parseInt(string, radix)</li>
<li>parseFloat(string)</li>
<li>isNaN(number)</li>
<li>isFinite(number)</li>
<li>decodeURI(encodedURI)</li>
<li>decodeURIComponent(encodedURIComponent)</li>
<li>encodeURI(uri)</li>
<li>encodeURIComponent(uriComponent)</li>
</ul>
<h3 >Constructor Properties</h3>
<ul>
<li>Object</li>
<li>Function</li>
<li>Array</li>
<li>String</li>
<li>Boolean</li>
<li>Number</li>
<li>Date</li>
<li>RegExp</li>
<li>Error</li>
<li>EvalError</li>
<li>RangeError</li>
<li>ReferenceError</li>
<li>SyntaxError</li>
<li>TypeError</li>
<li>URIError</li>
</ul>
<h3 >Other Properties</h3>
<ul>
<li>Math</li>
<li>JSON</li>
</ul>
<h2 id="the-object-object">The Object Object</h2>
<h3 >Object Constructor</h3>
<h4 >Function Properties</h4>
<ul>
<li>getPrototypeOf(O)</li>
<li>getOwnPropertyDescriptor(O, P)</li>
<li>getOwnPropertyNames(O)</li>
<li>create(O [, Properties])</li>
<li>defineProperty(O, P, Attributes)</li>
<li>defineProperties(O, Properties)</li>
<li>keys(O)</li>
<li>seal(O)</li>
<li>isSealed(O)</li>
<li>freeze(O)</li>
<li>isFrozen(O)</li>
<li>preventExtensions(O)</li>
<li>isExtensible(O)</li>
</ul>
<h3 >Object Prototype</h3>
<h4 >Function Properties</h4>
<ul>
<li>toString()</li>
<li>toLocaleString()</li>
<li>valueOf()</li>
<li>hasOwnProperty(V)</li>
<li>isPrototypeOf(V)</li>
<li>propertyIsEnumerable(V)</li>
</ul>
<h2 id="function-objects">Function Objects</h2>
<h3 >Function Prototype</h3>
<h4 >Function Properties</h4>
<ul>
<li>toString()</li>
<li>apply(thisArg, argArray)</li>
<li>call(thisArg [, arg1 [, arg2, ..&#x2e;]])</li>
<li>bind((thisArg [, arg1 [, arg2, …]])</li>
</ul>
<h2 id="array-objects">Array Objects</h2>
<h3 >Array Prototype Object</h3>
<h4 >Function Properties</h4>
<ul>
<li>toString()</li>
<li>toLocaleString()</li>
<li>concat([item1 [, item2 [, ..&#x2e;]]])</li>
<li>join(separator)</li>
<li>pop()</li>
<li>push([item1 [, item2 [, ..&#x2e;]]])</li>
<li>reverse()</li>
<li>shift()</li>
<li>slice(start, end)</li>
<li>sort(comparefn)</li>
<li>splice(start, deleteCount[, item1 [, item2 [, ..&#x2e;]]])</li>
<li>unshift([item1 [, item2 [, ..&#x2e;]]])</li>
<li>indexOf(searchElement [, fromIndex])</li>
<li>lastIndexOf(searchElement [, fromIndex])</li>
<li>every(callbackfn [, thisArg])</li>
<li>some(callbackfn [, thisArg])</li>
<li>forEach(callbackfn [, thisArg])</li>
<li>map(callbackfn [, thisArg])</li>
<li>filter(callbackfn [, thisArg])</li>
<li>reduce(callbackfn [, initialValue])</li>
<li>reduceRight(callbackfn [, initialValue])</li>
</ul>
<h2 id="string-objects">String Objects</h2>
<h3 >String Prototype Object</h3>
<h4 >Function Properties</h4>
<ul>
<li>toString()</li>
<li>valueOf()</li>
<li>charAt(pos)</li>
<li>charCodeAt(pos)</li>
<li>concat([string1 [, string2 [, ..&#x2e;]]])</li>
<li>indexOf(searchString ,position)</li>
<li>lastIndexOf(searchString, position)</li>
<li>localeCompare(that)</li>
<li>match(regexp)</li>
<li>replace(searchValue, replaceValue)</li>
<li>search(regexp)</li>
<li>slice(start, end)</li>
<li>split(separator, limit)</li>
<li>substring(start, end)</li>
<li>toLowerCase()</li>
<li>toLocaleLowerCase()</li>
<li>toUpperCase()</li>
<li>toLocaleUpperCase()</li>
<li>trim()</li>
</ul>
<p>Additionally, the QML engine adds the following functions to the <a href="QtQml.String.md">String</a> prototype:</p>
<ul>
<li><a href="QtQml.String.md#arg-method">arg()</a></li>
</ul>
<h2 id="boolean-objects">Boolean Objects</h2>
<h3 >Boolean Prototype Object</h3>
<h4 >Function Properties</h4>
<ul>
<li>toString()</li>
<li>valueOf()</li>
</ul>
<h2 id="number-objects">Number Objects</h2>
<h3 >Number Prototype Object</h3>
<h4 >Function Properties</h4>
<ul>
<li>toString(radix)</li>
<li>toLocaleString()</li>
<li>toFixed(fractionDigits)</li>
<li>toExponential(fractionDigits)</li>
<li>toPrecision(precision)</li>
</ul>
<p>Additionally, the QML engine adds the following functions to the <a href="QtQml.Number.md">Number</a> prototype:</p>
<ul>
<li><a href="QtQml.Number.md#fromLocaleString-method">fromLocaleString(locale, number)</a></li>
<li><a href="QtQml.Number.md#toLocaleCurrencyString-method">toLocaleCurrencyString(locale, symbol)</a></li>
<li><a href="QtQml.Number.md#toLocaleString-method">toLocaleString(locale, format, precision)</a></li>
</ul>
<h2 id="the-math-object">The Math Object</h2>
<h3 >Value Properties</h3>
<ul>
<li>E</li>
<li>LN10</li>
<li>LN2</li>
<li>LOG2E</li>
<li>LOG10E</li>
<li>PI</li>
<li>SQRT1_2</li>
<li>SQRT2</li>
</ul>
<h3 >Function Properties</h3>
<ul>
<li>abs(x)</li>
<li>acos(x)</li>
<li>asin(x)</li>
<li>atan(x)</li>
<li>atan2(y, x)</li>
<li>ceil(x)</li>
<li>cos(x)</li>
<li>exp(x)</li>
<li>floor(x)</li>
<li>log(x)</li>
<li>max([value1 [, value2 [, ..&#x2e;]]])</li>
<li>min([value1 [, value2 [, ..&#x2e;]]])</li>
<li>pow(x, y)</li>
<li>random()</li>
<li>round(x)</li>
<li>sin(x)</li>
<li>sqrt(x)</li>
<li>tan(x)</li>
</ul>
<h2 id="date-objects">Date Objects</h2>
<h3 >Date Prototype Object</h3>
<h4 >Function Properties</h4>
<ul>
<li>toString()</li>
<li>toDateString()</li>
<li>toTimeString()</li>
<li>toLocaleString()</li>
<li>toLocaleDateString()</li>
<li>toLocaleTimeString()</li>
<li>valueOf()</li>
<li>getTime()</li>
<li>getFullYear()</li>
<li>getUTCFullYear()</li>
<li>getMonth()</li>
<li>getUTCMonth()</li>
<li>getDate()</li>
<li>getUTCDate()</li>
<li>getDay()</li>
<li>getUTCDay()</li>
<li>getHours()</li>
<li>getUTCHours()</li>
<li>getMinutes()</li>
<li>getUTCMinutes()</li>
<li>getSeconds()</li>
<li>getUTCSeconds()</li>
<li>getMilliseconds()</li>
<li>getUTCMilliseconds()</li>
<li>getTimeZoneOffset()</li>
<li>setTime(time)</li>
<li>setMilliseconds(ms)</li>
<li>setUTCMilliseconds(ms)</li>
<li>setSeconds(sec [, ms])</li>
<li>setUTCSeconds(sec [, ms])</li>
<li>setMinutes(min [, sec [, ms]])</li>
<li>setUTCMinutes(min [, sec [, ms]])</li>
<li>setHours(hour [, min [, sec [, ms]]])</li>
<li>setUTCHours(hour [, min [, sec [, ms]]])</li>
<li>setDate(date)</li>
<li>setUTCDate(date)</li>
<li>setMonth(month [, date])</li>
<li>setUTCMonth(month [, date])</li>
<li>setFullYear(year [, month [, date]])</li>
<li>setUTCFullYear(year [, month [, date]])</li>
<li>toUTCString()</li>
<li>toISOString()</li>
<li>toJSON()</li>
</ul>
<p>Additionally, the QML engine adds the following functions to the <a href="QtQml.Date.md">Date</a> prototype:</p>
<ul>
<li><a href="QtQml.Date.md#timeZoneUpdated-method">timeZoneUpdated()</a></li>
<li><a href="QtQml.Date.md#toLocaleDateString-method">toLocaleDateString(locale, format)</a></li>
<li><a href="QtQml.Date.md#toLocaleString-method">toLocaleString(locale, format)</a></li>
<li><a href="QtQml.Date.md#toLocaleTimeString-method">toLocaleTimeString(locale, format)</a></li>
</ul>
<h2 id="regexp-objects">RegExp Objects</h2>
<h3 >RegExp Prototype Object</h3>
<h4 >Function Properties</h4>
<ul>
<li>exec(string)</li>
<li>test(string)</li>
<li>toString()</li>
</ul>
<h2 id="error-objects">Error Objects</h2>
<h3 >Error Prototype Object</h3>
<h4 >Value Properties</h4>
<ul>
<li>name</li>
<li>message</li>
</ul>
<h4 >Function Properties</h4>
<ul>
<li>toString()</li>
</ul>
<h2 id="the-json-object">The JSON Object</h2>
<h3 >Function Properties</h3>
<ul>
<li>parse(text [, reviver])</li>
<li>stringify(value [, replacer [, space]])</li>
</ul>
<!-- @@@qtqml-javascript-functionlist.html -->
