---
title: "Scopes tutorials - unit testing"
table_of_contents: true
---

# Scopes tutorials - unit testing

In this tutorial you will learn how to write a unit test to strengthen the
quality of your Ubuntu scope. It builds upon the scopes development tutorials.

## Requirements

  * **Ubuntu 14.10 or later**  
[Get Ubuntu](http://www.ubuntu.com/download/desktop/)
  * **The scopes development tutorial**  
If you haven't already, [complete the scopes tutorials.](index.md)
  * **googletest**  
Since you need to build the library from source, you'll notice we install make
and cmake. Open a terminal with `Ctrl+Alt+T` and run these commands to install
all required packages:

```
$ sudo apt-get install libgtest-dev google-mock make cmake
```

## What are unit tests?

To help ensure your application performs as expected it’s important to have a
nice suite of unit tests. Unit tests are the foundation of a good testing
story for your application. Let’s learn more about them.

A unit test should generally **test a specific unit of code**. It should be
able to pass or fail in only one way. This means you should generally have one
and only one assertion or assert for short. An assertion is a statement about
the expected outcome of a series of actions. By limiting yourself to a single
statement about the expected outcome, it is clear why a test fails.

Unit tests are the base of the . The testing pyramid describes the three
levels of testing an application, going from low level tests at the bottom and
increasing to high level tests at the top. As unit tests are the lowest level,
they should represent the largest number of tests for your project.

In Ubuntu, unit tests for your scope:

  * Are written in C++, just like the scope
  * Utilize googletest and googlemock

## Testing with googletest and googlemock

Before we can begin writing tests we need to build the googletest library and
copy it for usage. Run the following commands one line at a time from the
terminal:

```
$ mkdir /tmp/build && cd /tmp/build
$ cmake -DCMAKE_BUILD_TYPE=RELEASE /usr/src/gtest/
$ make
$ sudo cp libg*.a /usr/lib/
```

This will take a minute to build on your machine and should complete without
error.

### An example testcase

A basic testcase is very simple.

  * Declare a `TEST()` function. It shouldn't return a value.
  * Add some C++ code to perform actions
  * Use assertions to check the values

``` C+
TEST(testcase, test) {
    ACTION . . .
    EXPECT . . .
}
```

The list of valid assertions includes asserting for true or false, equals or
not equals, etc. Googletest has the full [list ofassertions](https://code.google.com/p/googletest/wiki/Primer#Assertions).

For example, here's a simple test suite for a function which reverses a string:

``` C+
void reverse(std::string &string) {
    std::reverse(string.begin(), string.end());
}
TEST(test_reverse, reverse_single_character) {
    EXPECT_EQ('t', 't');
}
TEST(test_reverse, reverse_word) {
    EXPECT_EQ('at', 'ta');
}
```

### Test Helpers

The testing helper classes are in the `unity::scopes::testing` namespace. The
most important ones are:

  * `unity::scopes::testing::TypedScopeFixture`
    * A template class that takes your scope class name as a template argument and creates a test fixture that can be used in tests.
  * `unity::scopes::testing::MockSearchReply`
    * A mock of `unity::scopes::SearchReply` that makes it possible to intercept responses to search request sent from the scope to a client, so you can test if your scope returns the expected data.
  * `unity::scopes::testing::MockPreviewReply`
    * A mock of `unity::scopes::PreviewReply` that makes it possible to intercept and test responses to preview request sent from the scope to a client.
  * [`unity::scopes::testing::Result`](../../apps/api-autopilot-current/index.md)
    * A simple Result class derived from `unity::scopes::Result` that provides a default constructor, so you can create dummy results (without attributes) for testing purposes.
  * [`unity::scopes::testing::category`](../../apps/api-autopilot-current/index.md)
    * A simple class derived from `unity::scopes::Category` that makes it possible to create dummy categories (which otherwise would require an instance of SearchReply and a call to `register_category()`).

### Test Template

For scope unit tests, most will share a basic structure, as follows:

``` C+
TEST_F(TestScope, empty_search_string) {
   const unity::scopes::CategoryRenderer renderer;
   NiceMock reply;

   // Build a query with an empty search string
   unity::scopes::CannedQuery query(SCOPE_NAME, "", "");

   // Tests will typically go here //
   unity::scopes::SearchReplyProxy reply_proxy(&reply, [](sc::SearchReply*) {});     
   unity::scopes::SearchMetadata meta_data("en_US", "phone");

   // Create a query object
   auto search_query = scope->search(query, meta_data);
   ASSERT_NE(nullptr, search_query);

   // Run the search
   search_query->run(reply_proxy);

   // Google Mock will make assertions when the mocks are destructed.
}
```

This template sets up a mocked `SearchReply` object which will be our primary
way of getting test results (see below). It then creates and runs a query
using our scope and query code. Test assertions will be evaluated once
everything is finished.

### EXPECT_CALL

The first thing to do when writing a unit test is to decide what conditions
describe success. When testing scopes using the Google Test framework this is
most commonly done using the `EXPECT_CALL` assertion.

`EXPECT_CALL` is a macro which returns success or a nonfatal failure (meaning
the test will continue and potentially multiple failures can be reported in a
single run) depending on whether a certain function call is made.

Typically, an `EXPECT_CALL` invocation will look like the following:

``` C+
EXPECT_CALL(reply, register_category("A", "", "", _)).Times(1)
.WillOnce(Return(make_shared("A", "", "", renderer)));
```

Here we are saying that our mocked reply (see above) should receive a call to
register_category once (`Times(1)`) with the first parameter "A", the second and
third empty strings, and a fourth with any value ('`_`' in this case means the
value doesn't matter, don't consider it when determining whether this test
passes or fails).

The second line is necessary because the scope will expect a return value from
this call so we need to specify something for the `MockSearchReply` to return
(in this case a mock Category). WillOnce is used because we expect only one
call to this function with these parameters. You can also use `WillRepeatedly`
if you expect that this function will be called multiple times (with the same
unignored parameters).

## Advanced Usage

### Mocked classes

When writing a scope unit test you will want to exercise as much actual code
in a scope as you can while mocking outside code to set up the conditions of
the test. Google Mock provides a framework to do so easily and quickly.
Additionally, the Unity Scopes API provides some very useful mock classes in
the `unity::scopes::testing` namespace. In there you will find mock classes for
Scope, Registry, SearchReply, and many others.

There is also a convenient scope test fixture class (`TypedScopeFixture`) which
accepts your scope class as a template parameter and does much of the test
setup for you:

```
typedef unity::scopes::testing::TypedScopeFixture<MyScope> TestScopeFixture;
```

If you need to do any additional setup, such as setting the scope directory to
allow data files to be read, you can inherit from this class and override the
`SetUp()` method:

``` C+
class TestScope: public TypedScopeFixture {
   protected:
   void SetUp() override
   {
     TypedScopeFixture::set_scope_directory(TEST_SCOPE_DIRECTORY);      
     TypedScopeFixture::SetUp();
   }
};
```

**Note**: Be sure to call the parent class `SetUp()` method as well!

### Using Test Fixtures

Once your test fixture is set up you can begin writing tests that make use of
it. There are two macros to use when writing tests, one for normal tests using
the fixture (`TEST_F`) and one for parameterized tests (`TEST_P`).

Defining either one is simple, just specify the name of your fixture class and
a name for the test:

``` C+
TEST_F(TestScope, empty_search_string) { }
```

For a parameterized test, the definition is similar:

``` C+
TEST_P(TestScope, all_the_things) { }
```

with the addition that you can run that test repeatedly with different
parameters. To run the above example with every integer between 0 and 1023 you
would use the following:

``` C+
INSTANTIATE_TEST_CASE_P(all_the_things, TestScope,
                        ::testing::Range((unsigned int)0,
                        (unsigned int)(pow(2, 10))));
```

from within your test, use `GetParam()` to access the current value of the
parameter for that run.

More examples of the types of parameters you can pass can be found in the [Google Test documentation)(https://code.google.com/p/googletest/wiki/AdvancedGuide#Value_Parameterized_Tests).

### Custom Matchers

In order to facilitate checking that results and departments contain the data
they should you can define custom “matchers” which can verify result
properties or department structures.

A result matcher might look like the following:

``` C+
MATCHER_P2(ResultProp, prop, value, "") {
   if (arg.contains(prop)) {
       *result_listener << "result[" << prop << "] is " << arg[prop].serialize_json();
   } else {
       *result_listener << "result[" << prop << "] is not set";
   }
   return arg.contains(prop) && arg[prop] == Variant(value);
}
```

You can make use of this matcher as part of an EXPECT_CALL invocation:

``` C+
EXPECT_CALL(reply, push(Matcher(AllOf(
       ResultProp("title", "Super awesome title"),
       ResultProp("uri", "http://awesome.ubuntu.com")
       )))).WillOnce(Return(true));
```

This call will match the “title” and “uri” fields of a result against the
supplied values. A department matcher could be defined like so:

``` C+
MATCHER_P(IsDepartment, department, "") {
   return arg->serialize() == department->serialize();
}
```

To use this you would define a department structure using `Department::create`
and add_subdepartment to match what you expect from your scope and use
`EXPECT_CALL` to verify the match:

``` C+
EXPECT_CALL(reply, register_departments(IsDepartment(departments))).Times(1);
```

## Special Scopes

### Aggregator Scopes

#### Mock Registry

The test fixture provided by the scopes SDK conveniently includes a mock scope
registry. It is empty, however, which makes it less useful when testing
aggregator scopes.

Since the leaf scopes won’t actually be running in the test environment we
have to create mock scopes for each of them. This can be done easily with a
function using `unity::scopes::testing::ScopeMetadataBuilder:`

``` C+
unity::scopes::ScopeMetadata build_scope_metadata(string id)
{
   unity::scopes::testing::ScopeMetadataBuilder builder;
   builder.scope_id(id)
          .proxy(std::make_shared())
          .display_name("display_name")
          .description("description")
          .author("author")
          .art(std::string("art"))
          .icon(std::string("icon"))
          .search_hint(std::string("search_hint"))
          .hot_key(std::string("hot_key"));;
   return builder();
}
```

To populate your mock registry you can create a member in your scope fixture
class of type `unity::scopes::MetadataMap` and fill it using:

``` C+
registry_scopes_.insert(pair(SCOPE_ID,
      build_scope_metadata(SCOPE_ID)));
```

  For each scope you want in the registry. Then in your test have the `list()`
method return your “filled” registry:

``` C+
EXPECT_CALL(registry, list()).Times(1)
           .WillOnce(Return(registry_scopes_));
```

You can respond similarly to a `get_metadata()` call:

``` C+
EXPECT_CALL(registry, get_metadata(SCOPE_ID)).Times(1)
          .WillOnce(Return(registry_scopes_.at(SCOPE_ID)));
```

### Code Modifications to Support Mock Settings

The Scopes SDK is not set up to allow overriding of settings in a testing
environment, so a bit of cheating is necessary to allow testing against
different combinations of settings.

One simple way to do so is to add a test settings variable to your query (or
scope if that’s where you access them) along with a setter method:

``` C+
void MyQuery::set_test_settings(VariantMap const& settings)
{
   this->test_settings_ = settings;
}
```

Then you can “override” the `settings()` function to return the mock settings if
they exist (which should only be true in a test environment) or the real
settings otherwise:

``` C+
VariantMap MyQuery::settings()
{
   if (test_settings_.empty())
       return QueryBase::settings();
   else
       return test_settings_;
}
```

Since SearchQueryBase doesn’t have a `set_test_settings()` method, you can
simply cast the search_query pointer’s target to your query class.

``` C+
// Tell the query to use our mock settings
MyQuery *qry = static_cast(search_query.get());
qry->set_test_settings(settings);
```

### Testing Settings Combinations

The simplest way to test every combination of settings is to set up a bit mask
containing each of your settings and use a parameterized test to verify the
behavior of your scope.

You’ll need your test fixture class to inherit from
`::testing::WithParamInterface`. As a concrete example let’s look at the News
scope settings test. In this case I have an existing fixture class which does
most of the setup for me, so I can inherit from that as well as the parameter
interface class.

``` C+
class SettingsTestScope : public TestScope,
                          public ::testing::WithParamInterface {
protected:
   void SetUp() override
   {
       TestScope::SetUp();
       settings_bits_[FUN_ID] = 1;
       settings_bits_[CHEESE_ID]       = 1<<1;
       settings_bits_[NEWS_ID]  = 1<<2;
       settings_bits_[CHANNEL_ID]   = 1<<3;
       settings_bits_[SPORTS_ID]    = 1<<4;
       settings_bits_[SCOPE_ID] = 1<<5;
       settings_bits_[HOROSCOPE_ID]  = 1<<6;
       settings_bits_[BUSINESS_ID]      = 1<<7;
       settings_bits_[CONTENT_ID] = 1<<8;
       settings_bits_[FINANCE_ID]  = 1<<9;
   }
```

You can see the bitmap with each subscope ID (which corresponds to whether
each subscope is activated), and notice that we’ve set the parameter type to
unsigned int.

Writing tests is as before, only you will use the `TEST_P` macro when defining
them, telling Google Test that an extra parameter needs to be added to each
test.

To access that parameter you can unsurprisingly use the `GetParam()` call. In
our settings tests we will bitwise-AND our parameter with the bitmap we set up
earlier to determine whether a scope should be accessed during this run. For
example:

``` C+
if (GetParam() & settings_bits_[FINANCE_ID]) {
    settings[FINANCE_ID] = true;
    // … tests for FINANCE_ID go here
} else {
    settings[FINANCE_ID] = false;
}
```

Repeat for each setting bit value.

Now to actually run these tests with different parameter values you can use
the `INSTANTIATE_TEST_CASE_P` call shown above.

### Testing Special Behavior [Online/Offline)

Some scope behavior depends on whether or not the device is online. In a
normal running environment the online/offline state is set in the
`SearchMetadata` by the shell. In a test environment this is not the case, so if
your scope behaves differently with or without internet connectivity you need
to specify which state you are testing by calling
`SearchMetadata::set_internet_connectivity` before running your search.

You can set the connectivity state to connected:

``` C+
meta_data.set_internet_connectivity(sc::QueryMetadata::Connected);
```

or disconnected:

``` C+
meta_data.set_internet_connectivity(sc::QueryMetadata::Disconnected);
```

## Generic Leaf Scopes

### Mock Data Store

If your scope consumes data from some local storage you can use a similar
technique to mock this data as in the settings. Add a field to your query
along with a setter method, and conditionally use the mock data if it exists.

## Conclusion

You've just learned how to write unit tests for a Ubuntu scope for the phone.
But there is more information to be learned about how to write scope testing.
Check out the links below for more documentation and help.

### Resources

 * [Google Mock cookbook](https://code.google.com/p/googlemock/wiki/CookBook)
 * [Google Test primer](https://code.google.com/p/googletest/wiki/Primer)
 * [Scope SDK documentation](../api-cpp-current/index.md)
 * [Scope Testing headers)(../api-cpp-current/unity-scopes.md)
