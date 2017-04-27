---
Title: Core scopes
---

# Core scopes

Take inspiration from how we have structured and designed some of our core scopes.


-  [Favoriting ›](#favoriting)

-  [Navigation ›](#navigation)

-  [Enabling content ›](#enabling-content)

-  [Designing layouts ›](#designing-layouts)

-  [Categories ›](#categories)

-  [Sourcing your scope ›](#sourcing-your-scope)

-  [Discover more ›](#discover-more)


##Favoriting


The user can choose the scopes they would like to appear on swipe from the App scope (default) by favoriting or unfavoriting.


##Manage screen


The user can swipe up from the Bottom Edge to manage their installed scopes. The hint appears at the bottom of every scope page.


![manage1](https://assets.ubuntu.com/v1/66a39d05-manage11-567x1024.png)


![unfavourited1](https://assets.ubuntu.com/v1/04575fa3-unfavourited11-567x1024.png)


##Unfavorited scope


When unfavorited the whole scope fades away and the scope next on the right appears, where the pagination dots are corrected.


##Favorited scope


Once favorited, the star on the right hand side of the scope header is filled, and the scope appears when the user swipes right from the App scope.


![today_filled_png1](https://assets.ubuntu.com/v1/073f30a6-today_filled_png12-567x1024.png)


![developer_links.](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)


The user is always able to remove all scopes (except the Apps scope), regardless of the initial scope configuration chosen by the operator.


##Navigation


There are a number of ways to navigate to different views inside a scope.


![Departments 3](https://assets.ubuntu.com/v1/2a544668-Departments-3.png)


1. Scope header – contains the title of your scope and optional icons that can take action or navigate to a different screen.

2. Department drop-down – is an optional feature to give the user a more targeted and narrower search.

3. Category header link – Can be placed in the header of a category to lead the user to a connected child scope.

4. Tap card to preview content – tapping on a card can take the user to a preview screen, where they can take action e.g. ‘Play’ or ‘Open’.


![link_external](https://assets.ubuntu.com/v1/9e8b37dd-link_external.png)


See more in our  [Navigation](navigation) section on how to get the best navigation experience within your scope.


##Enabling content


From the settings icon in the scope header, users can enable their geographical location to enable local data, switch certain data feeds on or off, or choose a configuration.


##No data sourced


When no data feeds are connected to the scope, the scope will appear bare.


![not_filled_today_png](https://assets.ubuntu.com/v1/20f428e2-not_filled_today_png1-567x1024.png)


![settings_today](https://assets.ubuntu.com/v1/b05bfaf5-settings_today1-567x1024.png)


##Settings


From the ‘Settings’ icon in the scope header, the user will be presented with a checklist with the data sources they wish the scope to be fed with.


##Scope is fed


Once the user goes back to the scope screen, the scope will be automatically filled with the chosen data feeds.


![today](https://assets.ubuntu.com/v1/79520fde-today1-567x1024.png)


![information-link](https://assets.ubuntu.com/v1/7024ba0f-information-link.png)


The header must always have a back button to take the user back to the previous screen, if it is invoked by an aggregator scope or through settings.


![developer_links.](https://assets.ubuntu.com/v1/0d9d7281-developer_links..png)


See how to implement  [location settings](../api-cpp-current/unity.scopes.Location.md) inside your scope in our SDK.


##Designing layouts


Scopes are made up of categories and cards that can be laid out in different ways.


##Cards


Cards can contain up to three components that can be arranged in a variety of ways: in either a vertical or horizontal template.


- Art

- Header

- Summary


##Vertical cards


Taken from our Music scope, this card is used to display a track listing. Contains: Art, Header (title and subtitle) and Price (attribute).


![screenshot20153105_173110824](https://assets.ubuntu.com/v1/61961ab1-screenshot20153105_173110824.png)


##Horizontal card


Taken from our News scope, this card is used to display a snippet of a news story. Contains: Header (mascot, title, emblem, subtitle) and emblem, Summary.


![example](https://assets.ubuntu.com/v1/fb4cd451-example.png)


![link_external](https://assets.ubuntu.com/v1/9e8b37dd-link_external.png)


See more in our  [Components](components) section on the different card sizes and layout designs.


##Categories


Choose to display your cards in a grid or horizontal-list layout.


##Grid layout


This is an example of how you can use one component to display a result.


![NearBy_](https://assets.ubuntu.com/v1/26114ef0-NearBy_.png)


##Horizontal-list layout


This is an example taken from our NearBy scope, where it shows events in the user’s local area using a header that overlays the art (image).


![nearby](https://assets.ubuntu.com/v1/96bd8412-nearby1.png)


![link_external](https://assets.ubuntu.com/v1/9e8b37dd-link_external.png)


See more in our  [Components](components) section on how to structure your categories and how both the category and scope header works.


##Sourcing your scope


Scopes can be fed by a range of different content sources; a great example of this is the NearBy scope.


![nearby-1](https://assets.ubuntu.com/v1/74adabc8-nearby-1-567x1024.png)


##How do you feel?


- Weather – from the Weather Channel

- Things to do – from TimeOut

- Landmarks – from Yelp

- Photos taken around you – from Flickr

- Interesting articles – from Wikipedia

- Concerts nearby – from Songkick


![on_the_move_png](https://assets.ubuntu.com/v1/28d548ce-on_the_move_png1-567x1024.png)

##On the move

- Weather – from the Weather Channel

- Traffic alerts

- Public transport alerts

- Local taxis, tubes, bike hire, bus stops

- Nearest parking


![I_am_hungry_png](https://assets.ubuntu.com/v1/a2ab01cc-I_am_hungry_png1-567x1024.png)

##I’m hungry

- Restaurants – from TimeOut

- Local ATMs


##Hidden gems


The NearBy scope draws in all manner of places, landmarks, and cool new bars that you may have never heard of.


Here are a few examples of some hidden gems that have been found using the NearBy scope.


