





## Linking queries in scopes

Scopes come with a flexible mechanism to link different objects, launching a
different query when you click on one object. This gives us the possibility to
navigate through the results and to get deeeper in level of detail when
obtaining information from any source available.

> In this article you will learn how to link queries in scopes

When programming scopes you can link objects generated to trigger other
queries. Your main query can generate objects that, when clicked, trigger
another search. Those queries could be addressed to the same scope or to any
other scope existing in the system.

All you have to do is to follow a specific convention to define your query and
set the URI field in your object.

One simple way to do this is using an existing CannedQuery from your scope,
overwriting the needed fields. From your Query class you can obtain a
CannedQuery calling the query() method.

For example, if you want to trigger a query to the same scope, but for a
specific department you can proceed as follows:

    sc::CategorisedResult res(items_template);
    sc::CannedQuery second_query(query());
    second_query.set_department_id("second_query_department");
    res.set_uri(second_query.to_uri());

That will execute the run() method at your class derived from
unity::scopes::SearchQueryBase. This happens when the query is activated, when
the user taps the search result.

As you can see we are using in the example the query() method to obtain the
CannedQuery object and then we just modify the department id. The returned by
second_query would be:

    scope://com.ubuntu.scopes.myscope?q=&dep=second_query_department

Please, avoid setting the URI manually; always use a CannedQuery to create it.
The URI is here provided just to show the final result. CannedQuery may
support further functionalities that you'll lose when setting the URI
manually.





