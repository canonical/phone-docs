---
title: "Scopes guides - integration with aggregator scopes"
---

# Scopes guides - integration with aggregator scopes

Here you can find information about some specific aggregator scopes. This
information helps scope developers understand how to make their scopes fit
into aggregators seamlessly.

There are two parts to this integration process:

  * Picking the right keywords (see the [scope keywords guide](scope-keywords.md))
  * Returning the right components

## Returning the right components

An aggregator scope may have specific expectations for results aggregated by
any particular keyword.

For example, news results might be expected to contain an art component, a
title, a subtitle, and an emblem.

There may also be specific ways those result components are used. For example,
the emblem might be the icon of the source providing thee news item. The
subtitle might contain date and time.

Returning the components the aggregator expects for the specific keyword makes
the scope fit into the aggregated context perfectly, providing an excellent
user experience.



## Aggregator definitions

The following section documents specific keywords and components of main
aggregators scopes, this list will tend to be as exhaustive as possible.

### News Aggregator

  * **ID:** `com.canonical.scopes.news_unity-scope-news`
  * **Starting with click version:** 3.3.1
  * **Description:** Aggregates news items.
  * **Keywords:**
    * `news.headlines` (general interest news)
    * `news.finance` (financial news)
    * `news.technology` (technology news)
    * `news.sports` (sports news)
    * `news.international` (international news)
    * `news.national` (news for any single country.)
  * **Result components:**
    * `art`: the image for the news item
    * `emblem`: the icon that identifies the source of the news item
    * `title`: the news headline
    * `subtitle`: time and date
    * `summary`: the news item text

### NearBy Aggregator

  * **ID:** `com.canonical.unity-scope-nearby`
  * **Starting with click version:** 0.9.0
  * **Description:** All results should use location awareness and be relevant to the user's location.
  * **Keywords:**
    * `nearby.howdoyoufeel` (aggregated scopes placed in the "How do you feel?" department)
    * `nearby.bored` (aggregated scopes placed in the "I'm Bored" department)
    * `nearby.onthemove` (aggregated scopes placed in the "On The Move" department)
    * `nearby.hungry` (aggregated scopes placed in the "I'm Hungry" department)
    * `nearby.thirsty` (aggregated scopes placed in the "I'm Thirsty" department)
    * `nearby.stressed` (aggregated scopes placed in the "I'm Stressed" department)
  * **Result components:**

There are no result component expectations. Each scope is displayed as a new
category using components and renderer template provided by the first received
result.
