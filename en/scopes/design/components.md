---
Title: Components
table_of_contents: true
---

# Components

These are the building blocks that allow you to create a consistent and structured scope.

##Scope header

We use the scope header for navigation purposes and placing actions.


##Scope title

The scope title can be represented in two ways.

![Scope title 1](https://assets.ubuntu.com/v1/6dbb7d61-Scope-title-1-1024x179.png)

**Text: Scope title**

![Scope title 2](https://assets.ubuntu.com/v1/b18881d5-Scope-title-2-1024x179.png)

**Artwork: Scope logo**

##Placing actions

The header consists of one text string and optional monochromatic icons.

![Scope header nav](https://assets.ubuntu.com/v1/4008e9d9-Scope-header-nav-1024x179.png)

####Actions

1. Back – used if the scope is opened via tap from an installed aggregator scope.

2. Search – allows the user to search across the scope and connected branded (single service) scopes for a specific query. It should always appear first after the scope title.

3. Settings – enables persistent settings for simple customizations, such as enabling the user’s geographical location to receive local content sources.

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|Arrange your header to maximize the important actions inside your scope, such as using a search icon for users to reach a specific result.|
|----|----|

![placing actions 2](https://assets.ubuntu.com/v1/c29fc303-placing-actions-22-1024x179.png)

####Burger menu
1. When more than three actions are placed in the scope header e.g. favorite, settings and search – a burger  menu is used on the right to store two of the actions.

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|We recommend you use the burger menu sparingly, as it hides away views and actions from the user.|
|----|----|

##Header search

On a search results page, the returned results should be ordered by relevance, which is defined by the scope author.

![Header search 1](https://assets.ubuntu.com/v1/87a4ff83-Header-search-12-618x1024.png)

####Search icon

The user can search for a query via the scope header.

![Header search 2](https://assets.ubuntu.com/v1/047480d2-Header-search-22-618x1024.png)

####Suggestions

Once the user starts to write a query, suggestions will appear in a drop-down menu with related results.

![Header search 3](https://assets.ubuntu.com/v1/2799a9c0-Header-search-32-618x1024.png)

####Results page

Once the user has committed to a search, they will be presented with results taken from connected single service scopes.

The user can tap the cross in the header or the back chevron to be taken back to the scope home screen.

|![no alt text](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)|Implement the  [SearchReply](../api-cpp-current/unity.scopes.SearchReply.md) element from our SDK, which allows the results of a search query to be sent to the query source. Also see:  [SearchListenerBase](../api-cpp-current/unity.scopes.SearchListenerBase.md),  [SearchMetadata](../api-cpp-current/unity.scopes.SearchMetadata.md) and  [SearchQueryBase](../api-cpp-current/unity.scopes.SearchQueryBase.md) elements.|
|----|----|

##Categories

Categories are used to group together related content in a readable and manageable way.

-  [Structure ›](#structure)

-  [Category header ›](#category-header)

-  [Designing categories ›](#designing-categories)

-  [Category expansion ›](#category-expansion)

|![no alt text](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)|To implement the  [Category](../api-cpp-current/unity.scopes.Category.md) and  [Categorised Result](../api-cpp-current/unity.scopes.CategorisedResult.md) element in your scope see our SDK.|
|----|----|

##Structure

Structure your scope according to the user’s activities, and group cards in categories to help them find related results.

![Structure-1](https://assets.ubuntu.com/v1/4d85b0ab-Structure-11-722x1024.png)

1. Personal data – this displays the user’s local data on their device. For example, it could display the user’s ‘Recently Played’ music from their personally stored music.

2. Online service accounts – this displays the user’s connected online service accounts. For example, the Music Scope will display the user’s likes from their SoundCloud account.

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|Think about what the user will first expect to see at the top of your scope. If your scope is selling products, for instance, you may want to use the top category as a promotional banner.|
|----|----|

|![no alt text](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)|Implement a JSON formatted template with the  [Category Renderer](../api-cpp-current/unity.scopes.CategoryRenderer.md) from our SDK.|
|----|----|

##Category header

Headers can let the user know what is available inside any given category.

![Category header](https://assets.ubuntu.com/v1/6f72d662-Category-header-1-1024x538.png)

##Header

A category header can consist of one text string and optional monochromatic icons. They can also link elsewhere in the scope or to a branded (single service) scope.

![Category header (Header-less)](https://assets.ubuntu.com/v1/abe9c898-Category-header-Header-less-1024x538.png)

##No header

No header categories can be used for in-scope promotions – aka “banners”. They still have header titles that are shown in the index/collapsed view.

####Header links

Where we use links inside a category header, the header should be clear as to where the user will be taken.

![Header link 1](https://assets.ubuntu.com/v1/13ea4bb0-Header-link-12-618x1024.png)

![Header link 2](https://assets.ubuntu.com/v1/7794773a-Header-link-21-618x1024.png)

||![no alt text](https://assets.ubuntu.com/v1/9e8b37dd-link_external.png)||See more ways in which the header can link to either a website or an app in the  [Navigation](navigation.md) section.|
|-----|-----|

|![no alt text](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)|Implement a  [Hyperlink](../api-cpp-current/unity.scopes.Link.md)(label and canned query) from our SDK.|
|----|----|

##Designing categories

![Card size 4](https://assets.ubuntu.com/v1/24e0ebe2-Card-size-4-1024x693.png)

####Grid

The cards are shown in a grid form where they are fixed at the same height.

![Card size 5](https://assets.ubuntu.com/v1/d6a21b64-Card-size-5-1024x693.png)

####Horizontal-list

The horizontal-list layout allows users to scroll horizontally to view more results.

##Category expansion

A category header can assume a collapsed or expanded state; without a header, it is not expandable.

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|It is useful to condense the amount of content on the screen, so the user can browse content in other categories.|
|----|----|

![Category Expansion 1](https://assets.ubuntu.com/v1/6002b078-Category-Expansion-1-618x1024.png)

In a full expanded view, all cards are presented on the screen.

![Category Expansion 2](https://assets.ubuntu.com/v1/27bd3678-Category-Expansion-2-618x1024.png)

In its collapsed state, ‘See all’ displays more cards.

![Category Expansion 3](https://assets.ubuntu.com/v1/5af46eaf-Category-Expansion-3-618x1024.png)

When the category is in the expanded state, ‘See less’ closes the category back to its original collapsed state. In the expanded state, only the ‘See less’ button is visible.

##Cards

A card is a visual representation of a content result; you can design them in different layouts and use the given components to enhance their readability.

-  [Card components ›](#card-components)

-  [Card size ›](#card-size)

-  [Designing cards ›](#designing-cards)

|![no alt text](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)|Implement the  [Result](../api-cpp-current/unity.scopes.Result.md) element from our SDK, which contains the attributes of a result returned by a Scope.|
|----|----|

##Card components

There are three components available to create your card, these can be arranged to best suit how you want your results to be displayed.

-  [Card art ›](#card-art)

-  [Card header ›](#card-header)

-  [Card summary ›](#card-summary)

![card components](https://assets.ubuntu.com/v1/d2174751-card-components2.png)

##Card art

The art can be an icon or a thumbnail.

##Art size

The art mask defines the maximum size of the art (image) within a card.

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|Depending on the context of your card, you might want the art to take centre stage, or just be a visual aid to the content.|
|----|----|

##Horizontal

![Card art 1-2-1](https://assets.ubuntu.com/v1/56a33d9c-Card-art-1-2-1.png)

####1.2

The art-mask width equals art-mask height.

![Card art 1-3-1](https://assets.ubuntu.com/v1/e92f38bb-Card-art-1-3-1.png)

####1.3

You can define the art-mask height to the width, within a range from of 3:1 or 2:1.

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|By default, the art-mask width equals the art-mask height on a 1:1 ratio.|
|----|----|

##Vertical
![Card art 1-1](https://assets.ubuntu.com/v1/4c414a17-Card-art-1-1-162x300.png)

####Vertical

The art-mask width = card width.

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|By default, the art-mask height equals the art-mask width on a 1:1 ratio.|
|----|----|

####Crop your art within the art-mask

If your art does not fit in the mask, it will be cropped.

![Art and mask 1](https://assets.ubuntu.com/v1/3147fdb2-Art-and-mask-11.png)

![Art and mask 2](https://assets.ubuntu.com/v1/90384075-Art-and-mask-2.png)

![Art and mask 3](https://assets.ubuntu.com/v1/44372687-Art-and-mask-3.png)

1. Image cropped area

2. Image fills art-mask

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|You may choose to scale the art proportionally with the largest aspect of the art scaled to fill the art-mask.|
|----|----|

##Card header

The header can display up to seven elements. You can configure the header to best represent the content displayed. However, you cannot change the ordering of elements or redefine element formatting in any way (i.e. font style or size).

![Card header](https://assets.ubuntu.com/v1/8171d661-Card-header1.png)

##Elements

1. Mascot/Avatar – You can use a mascot (avatar) to accompany your title; it acts like a thumbnail.

2. Emblem – An emblem can be displayed to the right of a title where it is fixed to the height of the title row.

3. Title – A title is the only element that has a possible variation, as it can flow onto two lines. If it should go over two lines, then it will be cut off with an ellipsis.

4. Subtitle – A subtitle can only use up one line.

5. Attributes – These include price, rating and scale, which should fit in the allocated space provided.

##Attributes

An attribute can either be an icon or text, or both.

![atribute price](https://assets.ubuntu.com/v1/4bcc755a-atribute-price1.png)

##Price

Is a text string with a predefined star icon.

![atribute rating](https://assets.ubuntu.com/v1/74a80fc6-atribute-rating1.png)

##Rating

Is a text string with a predefined star icon.

![atribute scale](https://assets.ubuntu.com/v1/a57af743-atribute-scale1.png)

##Scale

Can be a text string with an icon that you can provide, or you can choose from our predefined set of icons.

##Placement

The three attributes can be arranged and combined in a number of ways.

##1. attribute

![Placement 1 atribute landscape](https://assets.ubuntu.com/v1/fd53e522-Placement-1-atribute-landscape.png)

![Placement 1 atribute](https://assets.ubuntu.com/v1/e43fe443-Placement-1-atribute.png)

##2. attributes

![Placement 2 atribute](https://assets.ubuntu.com/v1/6cf37138-Placement-2-atribute-.png)

![Placement 2 attributes landscape](https://assets.ubuntu.com/v1/02607578-Placement-2-attributes-landscape-.png)

##3. attributes

![Placement 2 atribute landscape copy](https://assets.ubuntu.com/v1/6b72a0e5-Placement-2-atribute-landscape-copy.png)

![Placement 3 atribute](https://assets.ubuntu.com/v1/359babad-Placement-3-atribute-.png)

##Headers can overlay art

![Header overlay art](https://assets.ubuntu.com/v1/27050a6c-Header-overlay-art-300x251.png)

The header will have a dark overlay and the text will be white.

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|When a header is an overlay, it should not include a mascot.|
|----|----|

##Header text styles

The title, subtitle and attribute can be shown in certain font weights and sizes.

![header text 1](https://assets.ubuntu.com/v1/af1a2bf4-header-text-1.png)

####1

![header text 2](https://assets.ubuntu.com/v1/df517f05-header-text-2.png)

####2

![header text 3](https://assets.ubuntu.com/v1/beabcdcf-header-text-3.png)

####3

![header text 4](https://assets.ubuntu.com/v1/c75cad8a-header-text-4.png)

####4

![header text 6](https://assets.ubuntu.com/v1/2e6d7b35-header-text-6.png)

####5

||Font weight|Font size|Padding between text baselines|Alignment|
|---|---|---|---|---|
|1|Regular|Small|n/a|Left/Middle|
|2|Regular|Small|n/a|Left/Middle|
|3|1.Title: Medium, 2.Subtitle: Light|1.Title: Small, 2.Subtitle: Extra small|>1.5GU|Left|
|4|1.Title: Medium, 2.Subtitle: Light, 3.Attribute(s): Regular|1.Title: Small, 2.Subtitle: Extra small, 3.Attribute(s): Small|1.Title: >1.5GU, 2.Subtitle: 2GU|Left|
|5|1.Title: Medium, 2.Subtitle: Light|n/a|1.Title: >1.5GU, 2.Subtitle: 2GU|Left|

##Card summary

Text can be split into paragraphs.

- If the text is up to 5 lines, than the last line of text will be replaced with ‘See More’, where it will show in the preview – which appears once the user has tapped the card.

- Up to 5 lines of text can be placed in the summary component.

- When a card includes a summary text, then the background to the header and summary should be white.

|![no alt text](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)|You cannot redefine the summary text formatting in any way, and it cannot be used with a small card template.|
|----|----|

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|Summaries are great for showing glimpses of news stories or reviews.|
|----|----|

##Card size

![Card size 1](https://assets.ubuntu.com/v1/679b7421-Card-size-1-1024x537.png)

##Large

One card is 38GU in a 40GU device – leaving a 1GU margin. It is also available on phone, tablet and desktop.

Useful for banners or displaying previews.

![Card size 2](https://assets.ubuntu.com/v1/ec5c4254-Card-size-2-1024x537.png)

##Medium

Two cards are 18GU each on a 40GU device – leaving a 1GU margin on a narrow space of a device with 40GU – each card is 18GU with a 2GU margin.

It is also available on phone, tablet and desktop.

Useful in displaying previews of a news stories.

![Card size 3](https://assets.ubuntu.com/v1/51eaa5db-Card-size-3-1024x537.png)

##Small

Three cards are 12GU each on a 40GU device – with a 1GU margin. It is available on devices smaller than 60GU width.

Useful in displaying music art and track titles.

|![no alt text](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)|On bigger form factors, a small size is automatically converted to a medium size.|
|----|----|

##Designing cards

There are two classes of card template: vertical and horizontal.

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|You must choose a card template that is compatible with the category layout. In case of layout errors, we try to gracefully fall back to defaults.|
|----|----|

##Vertical

![Art header sum vertical](https://assets.ubuntu.com/v1/44ed1866-Art-header-sum-vertical-204x300.png)

####Art, Header and Attribute

![art](https://assets.ubuntu.com/v1/f1015804-art2-204x300.png)

####Art

![Header Summary Vertical](https://assets.ubuntu.com/v1/6e25a59e-Header-Summary-Vertical-204x300.png)

####Header, Attribute and Summary

![Art header summary vertical](https://assets.ubuntu.com/v1/cfb398b5-Art-header-summary-vertical2-204x300.png)

####Art, Header, Attribute and Summary

![sm art header vertical](https://assets.ubuntu.com/v1/0e3d6c05-sm-art-header-vertical3-204x300.png)

####Small Art, Header and Attribute

|Category layout|Header overlay|Grid size|
|---|---|---|
|Grid|No|S. M. L|
|Horizontal-list||Yes|S. M. L|

##Horizontal

![Card design horizontal header 1](https://assets.ubuntu.com/v1/02804161-Card-design-horizontal-header-1.png)

####Art, Header (Emblem on the right) and Attribute

![Card design horizontal header 2](https://assets.ubuntu.com/v1/e808b305-Card-design-horizontal-header-2.png)

####Art, Header (Emblem on the right), Attribute and Summary

|Category layout|Header overlay|Grid size|Inside a shape|
|---|---|---|---|
|Grid|No|L|No|
|Horizontal-list|No|L|No|


##Placing components

One card displays one result (data/content item). It is made up of a maximum of three components:

- Art (of varying types and sizes)

- Header (one or more title text fields)

- Summary (additional info, ratings, associated buttons, etc)

|![no alt text](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)|One component must be present in any given card.|
|----|----|

![Placing components 2](https://assets.ubuntu.com/v1/1eeb84a0-Placing-components-2-1024x855.png)

##One configuration

You can have the art on its own e.g. a promotional banner.

![Placing components 1](https://assets.ubuntu.com/v1/b9322b6f-Placing-components-1.png)

##Maximum configurations

Can be the art, header and summary together.
