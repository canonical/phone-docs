---
Title: QtQml.qtqml-javascript-functionlist
---
        
List of JavaScript Objects and Functions
========================================

<span class="subtitle"></span>
<span id="details"></span>
This reference contains a list of objects, functions and properties supported by the QML engine. For a detailed description, see the ECMA-262 specification.

<span id="the-global-object"></span>
The Global Object
-----------------

<span id="value-properties"></span>
### Value Properties

-   NaN
-   Infinity
-   undefined

<span id="function-properties"></span>
### Function Properties

-   eval(x)
-   parseInt(string, radix)
-   parseFloat(string)
-   isNaN(number)
-   isFinite(number)
-   decodeURI(encodedURI)
-   decodeURIComponent(encodedURIComponent)
-   encodeURI(uri)
-   encodeURIComponent(uriComponent)

<span id="constructor-properties"></span>
### Constructor Properties

-   Object
-   Function
-   Array
-   String
-   Boolean
-   Number
-   Date
-   RegExp
-   Error
-   EvalError
-   RangeError
-   ReferenceError
-   SyntaxError
-   TypeError
-   URIError

<span id="other-properties"></span>
### Other Properties

-   Math
-   JSON

<span id="the-object-object"></span>
The Object Object
-----------------

<span id="object-constructor"></span>
### Object Constructor

<span id="function-properties"></span>
#### Function Properties

-   getPrototypeOf(O)
-   getOwnPropertyDescriptor(O, P)
-   getOwnPropertyNames(O)
-   create(O \[, Properties\])
-   defineProperty(O, P, Attributes)
-   defineProperties(O, Properties)
-   keys(O)
-   seal(O)
-   isSealed(O)
-   freeze(O)
-   isFrozen(O)
-   preventExtensions(O)
-   isExtensible(O)

<span id="object-prototype"></span>
### Object Prototype

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   toLocaleString()
-   valueOf()
-   hasOwnProperty(V)
-   isPrototypeOf(V)
-   propertyIsEnumerable(V)

<span id="function-objects"></span>
Function Objects
----------------

<span id="function-prototype"></span>
### Function Prototype

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   apply(thisArg, argArray)
-   call(thisArg \[, arg1 \[, arg2, ...\]\])
-   bind((thisArg \[, arg1 \[, arg2, …\]\])

<span id="array-objects"></span>
Array Objects
-------------

<span id="array-prototype-object"></span>
### Array Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   toLocaleString()
-   concat(\[item1 \[, item2 \[, ...\]\]\])
-   join(separator)
-   pop()
-   push(\[item1 \[, item2 \[, ...\]\]\])
-   reverse()
-   shift()
-   slice(start, end)
-   sort(comparefn)
-   splice(start, deleteCount\[, item1 \[, item2 \[, ...\]\]\])
-   unshift(\[item1 \[, item2 \[, ...\]\]\])
-   indexOf(searchElement \[, fromIndex\])
-   lastIndexOf(searchElement \[, fromIndex\])
-   every(callbackfn \[, thisArg\])
-   some(callbackfn \[, thisArg\])
-   forEach(callbackfn \[, thisArg\])
-   map(callbackfn \[, thisArg\])
-   filter(callbackfn \[, thisArg\])
-   reduce(callbackfn \[, initialValue\])
-   reduceRight(callbackfn \[, initialValue\])

<span id="string-objects"></span>
String Objects
--------------

<span id="string-prototype-object"></span>
### String Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   valueOf()
-   charAt(pos)
-   charCodeAt(pos)
-   concat(\[string1 \[, string2 \[, ...\]\]\])
-   indexOf(searchString ,position)
-   lastIndexOf(searchString, position)
-   localeCompare(that)
-   match(regexp)
-   replace(searchValue, replaceValue)
-   search(regexp)
-   slice(start, end)
-   split(separator, limit)
-   substring(start, end)
-   toLowerCase()
-   toLocaleLowerCase()
-   toUpperCase()
-   toLocaleUpperCase()
-   trim()

Additionally, the QML engine adds the following functions to the [String](../QtQml.String.md) prototype:

-   [arg()](../QtQml.String.md#arg-method)

<span id="boolean-objects"></span>
Boolean Objects
---------------

<span id="boolean-prototype-object"></span>
### Boolean Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   valueOf()

<span id="number-objects"></span>
Number Objects
--------------

<span id="number-prototype-object"></span>
### Number Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString(radix)
-   toLocaleString()
-   toFixed(fractionDigits)
-   toExponential(fractionDigits)
-   toPrecision(precision)

Additionally, the QML engine adds the following functions to the [Number](../QtQml.Number.md) prototype:

-   [fromLocaleString(locale, number)](../QtQml.Number.md#fromLocaleString-method)
-   [toLocaleCurrencyString(locale, symbol)](../QtQml.Number.md#toLocaleCurrencyString-method)
-   [toLocaleString(locale, format, precision)](../QtQml.Number.md#toLocaleString-method)

<span id="the-math-object"></span>
The Math Object
---------------

<span id="value-properties"></span>
### Value Properties

-   E
-   LN10
-   LN2
-   LOG2E
-   LOG10E
-   PI
-   SQRT1\_2
-   SQRT2

<span id="function-properties"></span>
### Function Properties

-   abs(x)
-   acos(x)
-   asin(x)
-   atan(x)
-   atan2(y, x)
-   ceil(x)
-   cos(x)
-   exp(x)
-   floor(x)
-   log(x)
-   max(\[value1 \[, value2 \[, ...\]\]\])
-   min(\[value1 \[, value2 \[, ...\]\]\])
-   pow(x, y)
-   random()
-   round(x)
-   sin(x)
-   sqrt(x)
-   tan(x)

<span id="date-objects"></span>
Date Objects
------------

<span id="date-prototype-object"></span>
### Date Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   toString()
-   toDateString()
-   toTimeString()
-   toLocaleString()
-   toLocaleDateString()
-   toLocaleTimeString()
-   valueOf()
-   getTime()
-   getFullYear()
-   getUTCFullYear()
-   getMonth()
-   getUTCMonth()
-   getDate()
-   getUTCDate()
-   getDay()
-   getUTCDay()
-   getHours()
-   getUTCHours()
-   getMinutes()
-   getUTCMinutes()
-   getSeconds()
-   getUTCSeconds()
-   getMilliseconds()
-   getUTCMilliseconds()
-   getTimeZoneOffset()
-   setTime(time)
-   setMilliseconds(ms)
-   setUTCMilliseconds(ms)
-   setSeconds(sec \[, ms\])
-   setUTCSeconds(sec \[, ms\])
-   setMinutes(min \[, sec \[, ms\]\])
-   setUTCMinutes(min \[, sec \[, ms\]\])
-   setHours(hour \[, min \[, sec \[, ms\]\]\])
-   setUTCHours(hour \[, min \[, sec \[, ms\]\]\])
-   setDate(date)
-   setUTCDate(date)
-   setMonth(month \[, date\])
-   setUTCMonth(month \[, date\])
-   setFullYear(year \[, month \[, date\]\])
-   setUTCFullYear(year \[, month \[, date\]\])
-   toUTCString()
-   toISOString()
-   toJSON()

Additionally, the QML engine adds the following functions to the [Date](../QtQml.Date.md) prototype:

-   [timeZoneUpdated()](../QtQml.Date.md#timeZoneUpdated-method)
-   [toLocaleDateString(locale, format)](../QtQml.Date.md#toLocaleDateString-method)
-   [toLocaleString(locale, format)](../QtQml.Date.md#toLocaleString-method)
-   [toLocaleTimeString(locale, format)](../QtQml.Date.md#toLocaleTimeString-method)

<span id="regexp-objects"></span>
RegExp Objects
--------------

<span id="regexp-prototype-object"></span>
### RegExp Prototype Object

<span id="function-properties"></span>
#### Function Properties

-   exec(string)
-   test(string)
-   toString()

<span id="error-objects"></span>
Error Objects
-------------

<span id="error-prototype-object"></span>
### Error Prototype Object

<span id="value-properties"></span>
#### Value Properties

-   name
-   message

<span id="function-properties"></span>
#### Function Properties

-   toString()

<span id="the-json-object"></span>
The JSON Object
---------------

<span id="function-properties"></span>
### Function Properties

-   parse(text \[, reviver\])
-   stringify(value \[, replacer \[, space\]\])

