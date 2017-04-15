---
Title: QtQuick.qtquick-modelviewsdata-topic
---
        
Important Concepts In Qt Quick - Data - Models, Views and Da...
===============================================================

<span class="subtitle"></span>
<span id="details"></span>
Most applications will have data that needs to be displayed to the user. That data might come from a variety of sources: network sources, local files, and databases are all common sources of data.

<span id="models-and-views"></span>
Models and Views
----------------

It is often advantageous to show similar data in a similar manner, within an application, and this gives rise to the idea of having a model which contains data, and a view which displays the data. The view will display a delegate for every datum in the model.

For information about how the Model/View paradigm is implemented in Qt Quick, see the page titled [Models and Views in Qt Quick](../QtQuick.qtquick-modelviewsdata-modelview.md).

<span id="data-storage-and-access"></span>
Data Storage and Access
-----------------------

Databases are commonly used to store information in applications. Qt Quick provides simplified access to relational databases via the [QtQuick.LocalStorage](../QtQuick.qtquick-releasenotes.md#qtquick-localstorage) module.

