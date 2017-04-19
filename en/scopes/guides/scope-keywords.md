---
title: "Scopes guides - keywords"
---

# Scopes guides - keywords

So you have written a scope? Great! Now how do you get your scope noticed?
Although “CoolScope” is a pretty awesome name, often simply giving something a
name is not good enough to describe what it is.

Let's say your scope is a “cooking lessons” scope. Wouldn’t it be awesome if
users could see results from your scope in the Food aggregator? What if your
scope included instructional videos on cooking, these could show up in the
Videos scope. What you want is for your scope to be easily identifiable and
discoverable, both to aggregators and to the user. To achieve this, your scope
needs to describe its content in some way. What you also want is a way of
telling what content an aggregator is interested in when it calls your scope
(e.g. returning video results when queried by the Videos scope).

Here is where scope keywords come in...

## What are scope keywords?

You could think of scope keywords like you would keywords for a website. On
the web, keywords are used by search engines to find relevant web pages. In
the context of scopes there are at least two “search engines” that are
interested in your content: users searching for scopes on the store, and
aggregators looking for child scopes. You need to add keywords to your scope
in order to improve its discoverability in these searches.

In the case of our “cooking lessons” example, we could add the keywords “food”
and “video”. This way, aggregators looking for scopes with “food” (e.g. the
Food scope) or “video” (e.g. the Videos scope) content can find our scope and
aggregate its results accordingly. We can also add some conditional logic to
our scope to return only the results relevant to the keyword(s) used by an
aggregator. Returning results about the latest cookbooks to the Videos scope
is not a great user experience (lets try not have our scope uninstalled by
unhappy users).

## How do I use keywords?

### Step 1: add keywords to your scope

Adding keywords to your scope is really easy. All you need to do is add a
“Keywords” key to the `[ScopeConfig]` group of your scope’s `.ini` file. The
value of the “Keywords” key must be a semicolon separated list of keywords
that identify your scope. For example: a scope with one keyword looks like
this:

```
[ScopeConfig]
DisplayName = human readable name of scope
Description = description of scope
Author = author
Keywords = music
```

A scope with multiple keywords looks like this:

```
[ScopeConfig]
DisplayName = human readable name of scope
Description = description of scope
Author = author
Keywords = music;video;news
```

### Step 2: return results according to the keywords requested

In order for your scope to return results relevant to the keyword[s) used by
an aggregator, you need a way of telling what keywords were used to discover
your scope. Your scope’s `ScopeBase::search()` method is called once for each
search query. This method receives two arguments: a `CannedQuery` object, and a
`SearchMetadata` object. `SearchMetadata` contains a bunch of additional
information about the search requests you receive, including the methods:

  * **is_aggregated()** - true if the request was initiated by an aggregator,
  * **aggregated_keywords()** - the list of keywords used to discover your scope.

`ScopeBase::search()` is a factory method, so be sure to store the
`SearchMetadata` object into the instance of `SearchQueryBase` you return for
later use:

```
class MyQuery : public SearchQueryBase { ... };
SearchQueryBase::UPtr MyScope::search(CannedQuery const& query, SearchMetadata const& metadata)
{
    SearchQueryBase::UPtr q(new MyQuery(query, metadata));
    return q;
}
```

Now that you have instantiated a SearchQueryBase object containing the
request’s SearchMetadata, you can use the `is_aggregated()` and
aggregated_keywords() methods from within `SearchQueryBase::run()` to return the
appropriate results:

```
void MyQuery::run(SearchReplyProxy const& reply)
{
    if (metadata_.is_aggregated())
    {
        auto keywords = metadata_.aggregated_keywords();
        if (keywords.find("food") != keywords.end())
        {
            auto category = reply->register_category("food",
                                                     "CoolScope Food",
                                                     food_icon);
            do_food_search(reply, category);
        }
        else if (keywords.find("video") != keywords.end())
        {
            auto category = reply->register_category("video",
                                                     "CoolScope Videos",
                                                     videos_icon);
            do_video_search(reply, category);
        }
    }
    else
    {
        do_normal_search(reply);
    }
}
```

You may notice in the code snippet above that for each keyword-related search
we receive, we register a specific results category. Although aggregators may
be willing to accept more than one category from its child scopes, they are
only required to accept the first.

Thereafter, an aggregator may choose to ignore any additional categories the
child scope registers. It is therefore recommended that scope authors follow
the above method of handling aggregated searches. It is also recommended that
your scope provide a decent category title (e.g. “CoolScope Food” / “CoolScope
Videos”). An aggregator is likely to display this category title as is within
its result set, so try to keep it clean and descriptive.

### Returning the right components

To fit in well, a child scope should take care return the result components
expected by aggregators for that keyword. Please see the [aggregator scopes integration guide](integration-aggregator-scopes.md).

## What keywords should I use?

### Namespaced keywords

In some cases, a list of keywords is not specific enough. For example, if a
scope has "sports" and "news" keywords, does that mean it includes only sports
news? or does it mean it includes some news and some sports. Also, what
components should the returned results contain: those appropriate to sports or
to news?

Some scopes use **namespaced keywords** to clarify this. This allows scope
developers to pick the right keywords and to understand what is expected of
results under that keyword.

For example, the "`news.sports`" keyword clearly indicates its a news item about
sports. There could also be a "videos.sports" keyword that clearly indicates
that the scope returns sports videos.

For details about specific aggregator scopes, the keywords they listen for,
and their expectations for results, please see the [aggregator scopes integration guide)(../guides/integration-aggregator-scopes).

### General keywords

Below is a table of general keywords to use. Obviously this table doesn’t aim
to cover every type of scope imaginable, nor are scopes limited to using only
the keywords listed here, however it is best to try stick to these as much as
possible in order for your scope to be visible to aggregators.

Keyword | Description | Example scopes | Other example sources
------- | ----------- | -------------- | ---------------------
apps | A resource for finding and installing applications | Ubuntu Store | - | art | The visual form of art such as drawing, painting, sculpture, etc. | Imgur, TimeOut | DeviantArt, OpenClipArt
audio | Any audio that isn't "music", such as podcasts or audio sample libraries | Jupiter Broadcasting | TWiT, podcasts
books | Either a digital or hard copy provider of books | Amazon, OpenLibrary | AbeBooks, The Book Depository
business | A directory for finding local or international businesses | Google Places, Kickstarter, Yahoo Finance, Yelp | Glassdoor, YellowPages
career | Any source that provides career opportunities or listings | Ars Technica, Kickstarter, Techfunder | SimplyHired, Linkedin
comics | Anything comic-related from online comics to comic-based films | Evert Kwok, Marvel Entertainment, XKCD | comiXology, DC Comics
data | Referring to any local or remote storage of data such as file-sharing, email, etc. | GMail | Google Drive
design | Any visual design that doesn’t fall under “art”, such as architecture, logos, etc. | Free CAD Videos | 99designs
developer | Resources specific to software development | Jupiter Broadcasting, NoobsLab, Softpedia Linux | AskUbuntu, DevHelp
diy | General do-it-yourself guides that don’t fall under “developer” or
“educational” | - | Lifehacker, Instructables
drink | Any info about drinks, general or specific, alcoholic or nonalcoholic | 8coupons, Google Places, TimeOut, Untappd | Mixology
educational | A provider of learning materials to furthering one’s education | Free CAD Videos, NoobsLab, OpenLibrary | Coursera
finance | Money related info such as banking, investments, stocks, etc. | Yahoo Finance | Bloomberg, Forbes
fitness | A resource that promotes, details, or assists in one’s physical fitness | My Activity, Runkeeper | Fitbit, Jawbone
food | Anything to do with food, be it preparation, consumption, or nutrition facts | 8coupons, Google Places, Nutritionix, TimeOut | AllRecipes, theKitchn
gaming | Video game info, news, reviews, previews, trailers, cheats, etc. | Jupiter Broadcasting | IGN, Zynga
health | A resource that promotes healthy living that isn’t necessarily "fitness" related | My Activity, Nutritionix, Runkeeper | WebMD, WeightWatchers
humor | Anything funny in any format, be it books, comics, audio, video, etc. | Evert Kwok, The Shovel, XKCD | 9GAG
info | The type of factual information you’d find in an encyclopaedia | Stellar, Wikipedia | Britannica
interests | Any general and special interests that don’t quite fit into a common category | 8coupons, OpenLibrary, Stellar, TimeOut, uBrick | Autoblog, CyclingWeekly, Pinterest
kids | Kid friendly resources such as toys, cartoons, media, games, etc. | uBrick | Yahoo! Kids, Nickelodeon
lifestyle | Info or advice on home and garden, outdoor living, fashion, beauty, etc. | InStyle | houzz, GoodHousekeeping
magazines | Either a digital or hard copy provider of magazines | OpenLibrary | Time, WIRED
movies | Referring to full length films, either on cinema or personal media formats | Cinema, Films, Hot New Trailers, TimeOut, YouTube | IMDB, TMDB, Netflix, Hulu
music | Anything music-related such as songs, artists, interviews, etc. | 7digital, Grooveshark, SoundCloud, YouTube | LastFM, Spotify
nearby | Any service that utilises the user’s location in order to show nearby results | Google Places, Meetup, The Weather Channel, Yelp | Bandsintown, Yahoo Local
news | A provider of information about recent events or happenings | BBC News, euronews, Hacker News, Ubuntu News | Google News, CNN
personal | Referencing the user’s personal data such as files, messages, online profiles, etc. | GMail, Kodi, My Music, My Videos, Tasks, Telegram | Calls, Contacts, Notes
photos | Referring to a resource of still photographs | Flickr, Imgur, Instagram, Kodi, Your Shot | Picasa | poi | A service that assists in discovering local or international points of interest | Google Places, TimeOut | Garmin, TomTom
reference | The type of reference information you’d find in a dictionary or atlas | Dictionary, Stellar, Urban Dictionary, Wikipedia | Google Maps
science | Any resource on science and / or mathematics that doesn’t fall under “tech”. | Ars Technica, Stellar, XKCD | PopSci
shopping | A store (online or physical) from which users can buy merchandise | Amazon, eBay, Etsy | Orange
social | Any service that allows users to interact and share with each other | Flickr, Meetup, Reddit, Telegram, Twitter Trending | Facebook, Google+
sports | Any sports-related resources about any type of sport | BBC Sport, Formula One, La Liga, Premier League | ESPN, FOX Sports
tech | Any resource on technology that doesn't fall under “developer” or “science” | Ars Technica, CNET, engadget, Triple Tremelo | TechCrunch
traffic | A resource for providing details on local or international road traffic conditions | Boston MBTA | INRIX
travel | Information on any form of travelling, whether by foot, car, train, aircraft, etc. | 8coupons, Boston MBTA, London Tube, TimeOut | TripAdvisor, trivago
trending | A resource for what is currently popular in fashion, media, news, etc. | InStyle, Twitter Trending | E!, TrendHunter
tv | Referring to TV in general not “movies”, such as TV series, live broadcasts, etc. | EZTV, Hot New Trailers, PBS Video, TimeOut | Netflix, Hulu
video | Any video resource that doesn’t necessarily fall under “movies” or “tv” | Evert Kwok, Free CAD Videos, Kodi, Vimeo, YouTube | Dailymotion, Vevo
weather | A resource for providing details on local or international weather conditions | The Weather Channel | OpenWeatherMap
web | General web services such as search engines, crawlers, scrapers, etc. | Discerning Duck | Google, Bing
