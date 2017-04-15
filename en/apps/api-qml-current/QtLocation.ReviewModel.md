---
Title: QtLocation.ReviewModel
---
        
ReviewModel
===========

<span class="subtitle"></span>
Provides access to reviews of a Place. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[batchSize](../../sdk-15.04.1/QtLocation.ReviewModel.md#batchSize-prop)**** : int
-   ****[place](../../sdk-15.04.1/QtLocation.ReviewModel.md#place-prop)**** : Place
-   ****[totalCount](../../sdk-15.04.1/QtLocation.ReviewModel.md#totalCount-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The [ReviewModel](../../sdk-15.04.1/QtLocation.ReviewModel.md) is a read-only model used to fetch reviews about a [Place](../../sdk-15.04.1/QtLocation.location-cpp-qml.md#place). The model incrementally fetches. The number of reviews which are fetched at a time is specified by the [batchSize](../../sdk-15.04.1/QtLocation.ReviewModel.md#batchSize-prop) property. The total number of reviews available can be accessed via the [totalCount](../../sdk-15.04.1/QtLocation.ReviewModel.md#totalCount-prop) property.

To use the [ReviewModel](../../sdk-15.04.1/QtLocation.ReviewModel.md) we need a view and a delegate. In this snippet we see the setting up of a ListView with a [ReviewModel](../../sdk-15.04.1/QtLocation.ReviewModel.md) model and a delegate.

``` qml
    ListView {
        anchors.fill: parent
        model: place.reviewModel
        delegate: ReviewDelegate { }
    }
```

The model returns data for the following roles:

| Role        | Type                                                         | Description                                                                                                                     |
|-------------|--------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| dateTime    | datetime                                                     | The date and time that the review was posted.                                                                                   |
| text        | string                                                       | The review's textual description of the place. It can be either rich (HTML based) text or plain text depending on the provider. |
| language    | string                                                       | The language that the review is written in.                                                                                     |
| rating      | real                                                         | The rating that the reviewer gave to the place.                                                                                 |
| reviewId    | string                                                       | The identifier of the review.                                                                                                   |
| title       | string                                                       | The title of the review.                                                                                                        |
| supplier    | [Supplier](../../sdk-15.04.1/QtLocation.Supplier.md) | The supplier of the review.                                                                                                     |
| user        | [User](../../sdk-15.04.1/QtLocation.User.md)         | The user who contributed the review.                                                                                            |
| attribution | string                                                       | Attribution text which must be displayed when displaying the review.                                                            |

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="batchSize-prop"></span><span class="name">batchSize</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the batch size to use when fetching more reviews.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="place-prop"></span><span class="name">place</span> : <span class="type"><a href="../../sdk-15.04.1/QtLocation.Place.md">Place</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the Place that the reviews are for.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="totalCount-prop"></span><span class="name">totalCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the total number of reviews for the place.

