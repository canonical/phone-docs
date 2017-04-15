---
Title: previewwidgets
---
        
Preview widget types
====================

Recognized preview widget types
==============================================================================

The following widget types are recognized by Unity:

-   `audio`
-   `video`
-   `image`
-   `gallery`
-   `header`
-   `actions`
-   `icon-actions`
-   `progress`
-   `text`
-   `rating-input`
-   `rating-edit`
-   `reviews`
-   `comment-input`
-   `comment`
-   `expandable`
-   `table`

audio widget
----------------------------------------------------

The audio widget displays a list of tracks with play/pause controls.

List of attributes:

-   `tracks` A composite attribute containing an array of tuples, where each tuple has up to four fields: `title` (mandatory string), `subtitle` (optional string), `source` (mandatory URI), and `length` (optional integer specifying the track length in seconds)

You can construct composite attributes with <a href="unity.scopes.VariantBuilder.md" title="Helper class for creating and populating Variant containers. ">unity::scopes::VariantBuilder</a>:

{

PreviewWidget w1(<span class="stringliteral">"tracks"</span>, <span class="stringliteral">"audio"</span>);

VariantBuilder builder;

builder.add\_tuple({

{<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Track \#1"</span>)},

{<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"file:///tmp/song1.mp3"</span>)},

{<span class="stringliteral">"length"</span>, Variant(194)}

});

builder.add\_tuple({

{<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Track \#2"</span>)},

{<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"file:///tmp/song2.mp3"</span>)},

{<span class="stringliteral">"length"</span>, Variant(207)}

});

w1.add\_attribute\_value(<span class="stringliteral">"tracks"</span>, builder.end());

...

}

video widget
----------------------------------------------------

The video widget displays a still from a video and allows playing the video.

List of attributes:

-   `source` A URI pointing to the video
-   `screenshot` A URI pointing to a screenshot of the video (optional)
-   `share-data` An optional dictionary for making this video shareable with Content Hub. See <a href="#contentsharing">content sharing</a> below.

{

PreviewWidget w1(<span class="stringliteral">"video1"</span>, <span class="stringliteral">"video"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"file:///tmp/video1.mp4"</span>));

...

}

image widget
----------------------------------------------------

The image widget displays a single image.

List of attributes:

-   `source` A URI pointing to the image
-   `zoomable` A boolean specifying whether the image is zoomable (default: `false`)
-   `fallback` A fallback image to be used if the image URI is empty or cannot be retrieved (default: none)
-   `share-data` An optional dictionary for making this image shareable with Content Hub. See <a href="#contentsharing">content sharing</a> below.

{

PreviewWidget w1(<span class="stringliteral">"img1"</span>, <span class="stringliteral">"image"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"http://example.com/image.jpg"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"fallback"</span>, Variant(<span class="stringliteral">"file:///tmp/image.jpg"</span>));

...

}

gallery widget
--------------------------------------------------------

The gallery widget displays a set of images.

List of attributes:

-   `sources` An array of image URIs
-   `fallback` A fallback image to be used if an image URI is empty or cannot be retrieved (default: none)

{

PreviewWidget w1(<span class="stringliteral">"gal"</span>, <span class="stringliteral">"gallery"</span>);

<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934" class="code">VariantArray</a> arr;

arr.push\_back(Variant(<span class="stringliteral">"http://example.com/image1.jpg"</span>));

arr.push\_back(Variant(<span class="stringliteral">"file:///tmp/image2.jpg"</span>));

arr.push\_back(Variant(<span class="stringliteral">"file:///tmp/image3.jpg"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"sources"</span>, Variant(arr));

w1.add\_attribute\_value(<span class="stringliteral">"fallback"</span>, Variant(<span class="stringliteral">"file:///tmp/fallback.png"</span>));

...

}

header widget
------------------------------------------------------

The header widget displays basic infomation about the result.

List of attributes:

-   `title` A string specifying the title
-   `subtitle` A string specifying the subtitle
-   `mascot` A URI specifying the mascot
-   `fallback` A fallback image to be used if the mascot URI is empty or cannot be retrieved (default: none)
-   `emblem` A URI specifying the emblem

{

PreviewWidget w1(<span class="stringliteral">"hdr"</span>, <span class="stringliteral">"header"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Result item"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"mascot"</span>, Variant(<span class="stringliteral">"http://example.com/image.png"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"fallback"</span>, Variant(<span class="stringliteral">"file:///tmp/fallback\_mascot.png"</span>));

...

}

actions widget
--------------------------------------------------------

The actions widget displays one or more buttons.

List of attributes:

-   `actions` A composite attribute containing an array of tuples, where each tuple has at least these fields: `id` (a mandatory string that is passed to unity::scopes::ScopeBase::activate\_preview\_action()), `label` (mandatory string), and `icon` (optional URI).

You can construct composite attributes with <a href="unity.scopes.VariantBuilder.md" title="Helper class for creating and populating Variant containers. ">unity::scopes::VariantBuilder</a>:

{

PreviewWidget w1(<span class="stringliteral">"buttons"</span>, <span class="stringliteral">"actions"</span>);

VariantBuilder builder;

builder.add\_tuple({

{<span class="stringliteral">"id"</span>, Variant(<span class="stringliteral">"open"</span>)},

{<span class="stringliteral">"label"</span>, Variant(<span class="stringliteral">"Open"</span>)}

});

builder.add\_tuple({

{<span class="stringliteral">"id"</span>, Variant(<span class="stringliteral">"download"</span>)},

{<span class="stringliteral">"label"</span>, Variant(<span class="stringliteral">"Download"</span>)}

});

w1.add\_attribute\_value(<span class="stringliteral">"actions"</span>, builder.end());

...

}

icon-actions widget
------------------------------------------------------------------

The icon-actions widget displays one or more buttons represented by icons and/or labels. It's similar to actions widget, but uses different layout. Every button can provide an optional temporary icon to be displayed immediately after user taps it.

List of attributes:

-   `actions` A composite attribute containing an array of tuples, where each tuple has at least these fields: `id` (a mandatory string that is passed to unity::scopes::ScopeBase::activate\_preview\_action()), `label` (optional string), `icon` (optional URI, required if label is missing), `temporaryIcon` (optional URI).

progress widget
----------------------------------------------------------

The progress widget displays the progress of an action, such as download progress.

On completion, the scope receives a preview action activation with the id `"finished"` or `"failed"`, depending on the outcome of the operation.

List of attributes:

-   `source` A tuple with keys understood by a progress provider

{

PreviewWidget w1(<span class="stringliteral">"download"</span>, <span class="stringliteral">"progress"</span>);

<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="code">VariantMap</a> tuple;

tuple\[<span class="stringliteral">"dbus-name"</span>\] = <span class="stringliteral">"com.canonical.DownloadManager"</span>;

tuple\[<span class="stringliteral">"dbus-object"</span>\] = <span class="stringliteral">"/com/canonical/download/obj1"</span>;

w1.add\_attribute\_value(<span class="stringliteral">"source"</span>, Variant(tuple));

...

}

text widget
--------------------------------------------------

A text widget can be used for text of any length (without formatting).

List of attributes:

-   `title` Optional string
-   `text` A string containing the text

{

PreviewWidget w1(<span class="stringliteral">"summary"</span>, <span class="stringliteral">"text"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"text"</span>, Variant(<span class="stringliteral">"Lorem Ipsum ..."</span>));

...

}

rating-input widget
------------------------------------------------------------------

The rating-input widget allows users to rate content. It consists of two types of widget: a star-based rating and an input field for the user to enter his/her review. It is possible to hide each widget as well as to require them to be filled in.

When a user presses the "Send" button, the scope receives a preview action activation with the id `"rated"`. The actual rating and/or review can be accessed via <a href="../unity.scopes.ActionMetadata.md#a34777e687ce700a7b6313f3dad6d3340" title="Get data attached to this ActionMetadata. ">unity::scopes::ActionMetadata::scope_data</a>. The scope data will be a VariantMap with the following keys:

-   `"rating"` - a double holding the number of stars the user selected (1 to 5)
-   `"review"` - a string holding the free text review

List of attributes:

-   `rating-label` String for the star-based rating (default: "Rate this")
-   `review-label` String for the review input (default: "Add a review")
-   `submit-label` String for the confirmation button (default: "Send")
-   `rating-icon-empty` URI for an empty rating icon
-   `rating-icon-full` URI for a full rating icon
-   `visible` String specifying which of the two widgets are visible (`"rating"`, `"review"` or default:`"both"`)
-   `required` String specifying which of the two widgets are required to be filled in (`"rating"`, `"review"` or default:`"both"`)

{

PreviewWidget w1(<span class="stringliteral">"rating"</span>, <span class="stringliteral">"rating-input"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"visible"</span>, Variant(<span class="stringliteral">"rating"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"required"</span>, Variant(<span class="stringliteral">"rating"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"rating-icon-empty"</span>, Variant(<span class="stringliteral">"file:///tmp/star-empty.svg"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"rating-icon-full"</span>, Variant(<span class="stringliteral">"file:///tmp/star-full.svg"</span>));

...

}

rating-edit widget
----------------------------------------------------------------

The rating-edit widget allows users to edit an existing review and rating. When used in a preview, the widget displays an existing review and a small "pen" icon; user can update the review and/or rating after tapping the "pen" icon.

This widget supports all the attributes of rating-input widget, plus three extra attributes (`"review"`, `"rating"`, `"author"`) to pre-fill the widget with data of an existing review.

List of attributes:

-   `rating-label` String for the star-based rating (default: "Rate this")
-   `review-label` String for the review input (default: "Add a review")
-   `submit-label` String for the confirmation button (default: "Send")
-   `rating-icon-empty` URI for an empty rating icon
-   `rating-icon-full` URI for a full rating icon
-   `visible` String specifying which of the two widgets are visible (`"rating"`, `"review"` or default:`"both"`)
-   `required` String specifying which of the two widgets are required to be filled in (`"rating"`, `"review"` or default:`"both"`)
-   `author` String for the name of the reviewer (optional)
-   `review` String for the text of existing review (optional)
-   `rating` Number for the rating value (optional)

Note: The rating-edit widget may not be supported by older versions of unity8 shell.

reviews widget
--------------------------------------------------------

The reviews widget is used to display previously-rated content.

List of attributes:

-   `rating-icon-empty` URI for an empty rating icon
-   `rating-icon-half` URI for an half-full rating icon
-   `rating-icon-full` URI for a full rating icon
-   `reviews` A composite attribute containing an array of tuples, where each tuple has up to three fields: `rating` (optional integer specifying the number of stars), `author` (mandatory string) and `review` (optional string).

You can construct composite attributes with <a href="unity.scopes.VariantBuilder.md" title="Helper class for creating and populating Variant containers. ">unity::scopes::VariantBuilder</a>:

{

PreviewWidget w1(<span class="stringliteral">"summary"</span>, <span class="stringliteral">"reviews"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"rating-icon-empty"</span>, Variant(<span class="stringliteral">"file:///tmp/star-empty.svg"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"rating-icon-full"</span>, Variant(<span class="stringliteral">"file:///tmp/star-full.svg"</span>));

VariantBuilder builder;

builder.add\_tuple({

{<span class="stringliteral">"author"</span>, Variant(<span class="stringliteral">"John Doe"</span>)},

{<span class="stringliteral">"rating"</span>, Variant(3)}

});

builder.add\_tuple({

{<span class="stringliteral">"author"</span>, Variant(<span class="stringliteral">"Mr. Smith"</span>)},

{<span class="stringliteral">"rating"</span>, Variant(5)}

});

w1.add\_attribute\_value(<span class="stringliteral">"reviews"</span>, builder.end());

...

}

comment-input widget
--------------------------------------------------------------------

The comment-input widget allows users to add comments. It displays an input box along with "Send" button.

When a user presses the "Send" button, the scope receives a preview action activation with the id `"commented"`. The actual comment can be accessed via <a href="../unity.scopes.ActionMetadata.md#a34777e687ce700a7b6313f3dad6d3340" title="Get data attached to this ActionMetadata. ">unity::scopes::ActionMetadata::scope_data</a>. The scope data will be a VariantMap with the `"comment"` field holding the text entered by the user.

List of attributes:

-   `submit-label` String for the label of the submit button (optional, uses "Submit" by default).

{

PreviewWidget w1(<span class="stringliteral">"cmt"</span>, <span class="stringliteral">"comment-input"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"submit-label"</span>, Variant(<span class="stringliteral">"Comment it!"</span>));

...

}

comment widget
--------------------------------------------------------

The comment widget shows an avatar, author name, subtitle and a comment text.

List of attributes:

-   `source` URI for an avatar icon (optional)
-   `author` A string specifying the author of the comment (mandatory)
-   `subtitle` A string for the subtitle (optional)
-   `comment` A string for the comment text (mandatory)

expandable widget
--------------------------------------------------------------

The expandable widget is used to group several widgets into an expandable pane.

List of attributes:

-   `title` A string specifying the title
-   `collapsed-widgets` Optional number of collapsed widgets (0 makes all of them visible)

PreviewWidget expandable(<span class="stringliteral">"exp"</span>, <span class="stringliteral">"expandable"</span>);

expandable.add\_attribute\_value(<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"This is an expandable widget"</span>));

expandable.add\_attribute\_value(<span class="stringliteral">"collapsed-widgets"</span>, Variant(0));

PreviewWidget w1(<span class="stringliteral">"w1"</span>, <span class="stringliteral">"text"</span>);

w1.add\_attribute\_value(<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Subwidget 1"</span>));

w1.add\_attribute\_value(<span class="stringliteral">"text"</span>, Variant(<span class="stringliteral">"A text"</span>));

PreviewWidget w2(<span class="stringliteral">"w2"</span>, <span class="stringliteral">"text"</span>);

w2.add\_attribute\_value(<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"Subwidget 2"</span>));

w2.add\_attribute\_value(<span class="stringliteral">"text"</span>, Variant(<span class="stringliteral">"A text"</span>));

expandable.add\_widget(w1);

expandable.add\_widget(w2);

...

table widget
----------------------------------------------------

The table widget is used to show a table with labels and values. When used inside an Expandable widget, the topmost 3 rows are shown until it's expanded.

List of attributes:

-   `title` A string specifying the title to be shown on top
-   `values` An array with one element per row. Each element is an array of two strings: label and value

PreviewWidget table(<span class="stringliteral">"details"</span>, <span class="stringliteral">"table"</span>);

table.add\_attribute\_value(<span class="stringliteral">"title"</span>, Variant(<span class="stringliteral">"This is a table widget"</span>));

<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934" class="code">VariantArray</a> values {

Variant{<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934" class="code">VariantArray</a>{Variant{\_(<span class="stringliteral">"Version number"</span>)}, Variant{<span class="stringliteral">"0.83b"</span>}}},

Variant{<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934" class="code">VariantArray</a>{Variant{\_(<span class="stringliteral">"Last updated"</span>)}, Variant{<span class="stringliteral">"2015-01-15"</span>}}},

Variant{<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934" class="code">VariantArray</a>{Variant{\_(<span class="stringliteral">"First released"</span>)}, Variant{<span class="stringliteral">"2013-12-16"</span>}}},

Variant{<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934" class="code">VariantArray</a>{Variant{\_(<span class="stringliteral">"Size"</span>)}, Variant{<span class="stringliteral">"11.3 MiB"</span>}}},

};

table.add\_attribute\_value(<span class="stringliteral">"values"</span>, Variant(values));

...

Content sharing
----------------------------------------------------------------

Some widgets support content sharing with the special share-data attribute. When the widget is tapped (clicked), data (image, video etc.) can be shared with Content Hub.

The share-data attribute is a dictionary (VariantMap) that needs to contain the following keys:

-   `uri` A single URI to share or an array of URIs.
-   `content-type` A name of the content type known to Content Hub, e.g. "links", "pictures", "videos". Please refer to Content Hub documentation for information on supported content types.

Here is an example of a shareable image:

PreviewWidget image(<span class="stringliteral">"img"</span>, <span class="stringliteral">"image"</span>);

image.add\_attribute\_value(<span class="stringliteral">"source"</span>, Variant(<span class="stringliteral">"http://www.example.org/graphics.png"</span>));

<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10" class="code">VariantMap</a> share\_data;

share\_data\[<span class="stringliteral">"uri"</span>\] = Variant(<span class="stringliteral">"http://www.example.org/graphics\_big.png"</span>);

share\_data\[<span class="stringliteral">"content-type"</span>\] = Variant(<span class="stringliteral">"pictures"</span>);

image.add\_attribute\_value(<span class="stringliteral">"share-data"</span>, share\_data);

