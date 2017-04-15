---
Title: Ubuntu.Components.i18n
---
        
i18n
====

<span class="subtitle"></span>
i18n is a context property that provides internationalization support. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[domain](#domain-prop)**** : string
-   ****[language](#language-prop)**** : string

<span id="methods"></span>
Methods
-------

-   string ****[ctr](#ctr-method)****(string *context*, string *text*)
-   string ****[dctr](#dctr-method)****(string *domain*, string *context*, string *text*)
-   string ****[dtr](#dtr-method-2)****(string *domain*, string *singular*, string *plural*, int *n*)
-   string ****[dtr](#dtr-method)****(string *domain*, string *text*)
-   string ****[relativeDateTime](#relativeDateTime-method)****(datetime *dateTime*)
-   string ****[tag](#tag-method-2)****(string *context*, string *text*)
-   string ****[tag](#tag-method)****(string *text*)
-   string ****[tr](#tr-method-2)****(string *singular*, string *plural*, int *n*)
-   string ****[tr](#tr-method)****(string *text*)

<span id="details"></span>
Detailed Description
--------------------

i18n cannot be instantiated, and is already available as a context property. It is based on [gettext](https://www.gnu.org/software/gettext/), and thus the standard gettext tools can be used for translating a project. Example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 0.1
Item {
     width: units.gu(40)
     height: units.gu(50)
     Button {
         anchors.centerIn: parent
         text: i18n.tr("Press me")
     }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="domain-prop"></span><span class="name">domain</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The gettext domain to be used for the translation. The default domain is the applicationName specified in the application's [MainView](../Ubuntu.Components.MainView.md), or the empty string "" if no applicationName was given or no [MainView](../Ubuntu.Components.MainView.md) is used. Use [dtr()](#dtr-method) functions instead of [tr()](#tr-method) to use a different domain for a single translation that ignores i18n.domain.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="language-prop"></span><span class="name">language</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The language that is used for the translation. The default value is the user's locale dending on $LC\_ALL, $LC\_MESSAGES and $LANG at the time of running the application. See the gettext manual for details.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ctr-method"></span><span class="type">string</span> <span class="name">ctr</span>(<span class="type">string</span> <em>context</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Translate *text* using gettext and return the translation. *context* is only visible to the translator and helps disambiguating for very short texts

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dctr-method"></span><span class="type">string</span> <span class="name">dctr</span>(<span class="type">string</span> <em>domain</em>, <span class="type">string</span> <em>context</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Translate *text* using gettext. Uses the specified domain *domain* instead of i18n.domain. *context* is only visible to the translator and helps disambiguating for very short texts

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dtr-method-2"></span><span class="type">string</span> <span class="name">dtr</span>(<span class="type">string</span> <em>domain</em>, <span class="type">string</span> <em>singular</em>, <span class="type">string</span> <em>plural</em>, <span class="type">int</span> <em>n</em>)</p></td>
</tr>
</tbody>
</table>

Translate the given text using gettext. Should be called like this: tr(domain, "%n file", "%n files", count) Uses *domain* for the domain instead of i18n.domain, and *singular* or *plural* as input for the translation depending on the number of items *n*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dtr-method"></span><span class="type">string</span> <span class="name">dtr</span>(<span class="type">string</span> <em>domain</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Translate *text* using gettext. Uses the specified domain *domain* instead of i18n.domain.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="relativeDateTime-method"></span><span class="type">string</span> <span class="name">relativeDateTime</span>(<span class="type">datetime</span> <em>dateTime</em>)</p></td>
</tr>
</tbody>
</table>

Translate a datetime based on proximity to current time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tag-method-2"></span><span class="type">string</span> <span class="name">tag</span>(<span class="type">string</span> <em>context</em>, <span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Mark *text* for translation at a later point. Typically this allows an API to take the original string and pass it to dctr (or g\_dpgettext2). *context* is only visible to the translator and helps disambiguating for very short texts

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tag-method"></span><span class="type">string</span> <span class="name">tag</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Mark *text* for translation at a later point. Typically this allows an API to take the original string and pass it to dtr (or dgettext).

``` qml
import QtQuick 2.4
import UserMetrics 0.1
Metric {
    name: "distance"
    format: i18n.tag("Distance covered today: %1 km")
    emptyFormat: i18n.tag("No running today")
    domain: "runner.forest"
}
```

The strings tagged for localzation above are passed to the implementation of UserMetrics verbatim, as well as the domain of the app. Display and translation of the strings will happen in the lockscreen, where the same strings will be passed to i18n.tr.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tr-method-2"></span><span class="type">string</span> <span class="name">tr</span>(<span class="type">string</span> <em>singular</em>, <span class="type">string</span> <em>plural</em>, <span class="type">int</span> <em>n</em>)</p></td>
</tr>
</tbody>
</table>

Translate the given input string *singular* or *plural* (depending on the number of items *n*) using gettext. Should be called like this: tr("%n file", "%n files", count)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tr-method"></span><span class="type">string</span> <span class="name">tr</span>(<span class="type">string</span> <em>text</em>)</p></td>
</tr>
</tbody>
</table>

Translate *text* using gettext and return the translation.

