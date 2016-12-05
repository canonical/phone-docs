





Scopes come with a very flexible customization system. From picking the text
color to rearranging how results are laid out, a scope can easily look like a
generic RSS feeds reader, a music library or even a store front… If you have
an Ubuntu device, you can already have a look at some of your options by
swiping to the right and browse the default scopes.

**In this article, you will learn how to customize and brand your scope.**

The examples below are using the SoundCloud scope created using [thistutorial](/scopes/tutorials/write-a-json-scope-in-cpp/).

## Header and background

There are two places where you can customize your scope. One is the code of
the scope itself where you define your categories and cards, we will talk
about it in a moment, the other is the .ini file of your scope, registered by
the Dash even when your scope has not been started or has been paused by the
system.

![](/static/devportal_uploaded/a894f058-78e8-4f28-946f-71048f603ad6-cms_page_media/140/soundcloud_cat1.png)

The [<scope>.ini](http://bazaar.launchpad.net/%7Edavidc3/ubuntu-sdk-tutorials/scope-tutorial-soundcloud-cpp/view/head:/data/com.ubuntu.developer.davidcalle.soundcloud-scope_soundcloud.ini) file allows you to set several keys to change the look
of your scope header, background and text color.

You can add the following keys to the [Appearance] group of this file :

  * **ForegroundColor** = default text color (defaults to theme-provided foreground color)
  * **BackgroundColor** = color of scope background (default is transparent)
  * **ShapeImages** = whether to use Ubuntu-shape (rounded corners) for all cards and artwork (defaults to true)
  * **CategoryHeaderBackground** = background scheme of the results categories
  * **PreviewButtonColor** = color of preview buttons (defaults to theme-provided color)
  * **LogoOverlayColor** = color for the overlay in scopes overview (defaults to semi-transparent black)
  * **PageHeader.Logo** = image containing scope’s logo
  * **PageHeader.ForegroundColor** = default header text color (defaults to the overall foreground color)
  * **PageHeader.Background** = background scheme of the header
  * **PageHeader.DividerColor** = color of the header divider
  * **PageHeader.NavigationBackground** = background scheme of the navigation bar

All appearance keys are optional. Some of them (like
**PageHeader.Background**) require _background scheme URIs_, valid URIs for
these keys include:

  * color:///#aarrggbb
  * color:///black
  * gradient:///#aarrggbb/#aarrggbb
  * /absolute/path/to/image
  * [http://remote-server.com/path/to/image](http://remote-server.com/path/to/image)

Here are a few examples of color customization :

![](/static/devportal_uploaded/27071f53-c3e0-4f38-a090-359561c3fb8d-cms_page_media/140/cb2.png)

![](/static/devportal_uploaded/915dbd2f-f263-4d51-88f3-fdcb6a36dc47-cms_page_media/140/cb1.png)

![](/static/devportal_uploaded/0605ddd8-2d13-4198-97fc-fdd3c63337f0-cms_page_media/140/cb3.png)

## Categories templates

Each category (group of result) of your scope can use its own layout and
rendering style using a template declared in your scope code. These templates
need to be provided in JSON format and adhere to some simple rules.

Here is a standard template :

1

2

3

4

5

6

7

8

9

10

11

12

13

14

15

16

17

18

`{`

` ``"schema-version"``: 1,`

` ``"template"``: {`

` ``"category-layout"``: ``"grid"``,`

` ``"card-layout"``: ``"vertical"``,`

` ``"card-size"``: ``"medium"`

` ``},`

` ``"components"``: {`

` ``"title"``: ``"title"``,`

` ``"subtitle"``: ``"artist"``,`

` ``"mascot"` `: ``"user_avatar"``,`

` ``"emblem"` `: ``"source_logo"``,`

` ``"art"` `: {`

` ``"field"``: ``"cover"``, ``"aspect-ratio"``:1.6`

` ``},`

` ``"attributes"``: ``"attributes"`

` ``}`

`}`

The “template” part defines how result cards will be laid out within the
category. The “components” keys represent each piece of information your cards
will display. How to attach information to a field is explained in [theSoundCloud tutorial](/scopes/tutorials/write-a-json-scope-in-cpp/).

### Template keys

  * **category-layout**: Specifies renderer type; possible values: “grid” (default), “carousel”, “horizontal-list”, “vertical-journal”
  * **card-layout**: Specifies layout of the individual result cards; possible values: “vertical” (default), “horizontal”
  * **card-size**: Size of the result cards; possible values: “small”, “medium” (default), “large”; when using “category-layout”: “vertical-journal” any integer between 12 and 38
  * **overlay**: Overlay text data on top of the art; boolean, default false
  * **collapsed-rows**: Number of result rows displayed while the category is collapsed; possible values: any non-negative integer, where 0 fully expands the category (only affects grid and journal)
  * **card-background**: Background color for the cards; string; URI in the format color:///#rrggbb or color:///color_name or gradient:///#rrggbb/#rrggbb or an image URI (will be stretched)

### Components keys

  * **title**: String specifying card’s title
  * **art**: URI specifying card’s art (primary graphics), can contain subkeys: “aspect-ratio” (double specifying the aspect ratio of the graphics, default: 1.0)
  * **subtitle**: String specifying subtitle of a card
  * **mascot**: URI specifying card’s mascot (secondary graphics)
  * **emblem**: URI specifying card’s emblem
  * **summary**: String specifying text summary
  * **background**: Card background URI, can override the default specified in the card-background field of the template section (same format as for card-background)
  * **attributes**: Array of dictionaries specifying text and an optional icon (keys: “value”, “icon”)
  * **overlay-color**: Color of overlay for templates with overlay in the format #aarrggbb.

Here are a few examples of category layouts :

![](/static/devportal_uploaded/5daddbf5-fe1b-4cac-9864-8eb8c7b93905-cms_page_media/140/cb5.png)

![](/static/devportal_uploaded/4563884d-227c-48e5-b22c-096673468e20-cms_page_media/140/cb4.png)

![](/static/devportal_uploaded/e3fe5bf8-4f9f-411b-a111-b196eee39ace-cms_page_media/140/cb10.png)

## Anatomy of a card

Cards themselves are also very flexible and will adapt their layout to the
amount of components you want them to display.

As seen before, a number of predefined components can be used. Here is an
example of a result card using most of them :

![](/static/devportal_uploaded/c5c3fdcf-1dbf-4032-aa70-c893fa96b3df-cms_page_media/140/cb7_crop.png)

  * **Art** : Image file, local or remote
  * **Mascot** : Image file, local or remote
  * **Title** : Up to two lines of text
  * **Subtitle** : One line of text
  * **Emblem** : Image file, local or remote
  * **Attributes** : Text and/or icon. Up to six attributes laid out on two lines.
  * **Summary** : Up to five lines of text

Here is the same card with a different layout : “horizontal” with a “summary”
component and no “mascot”.

![](/static/devportal_uploaded/658c0f13-05bd-420e-a0ce-e0f6c373097e-cms_page_media/140/cb8_crop.png)

For emblems and attribute icons, symbolic svg icons will use the
**ForegroundColor** of the scope.

![](/static/devportal_uploaded/7581f1f0-462f-4213-8588-6094cb8b69f7-cms_page_media/140/cb9.png)

## Going further

Scope flexibility is here to unlock your creativity : try to push the
customization to its maximum and make your scope unique. Have a look at
default scopes such as Ebay, Wikipedia or Youtube to get some design ideas !

You can dive into the [API documentation](/api/scopes/cpp/current/) if you
need more details on tweaking cards and categories to your needs.





