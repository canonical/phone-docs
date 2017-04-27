---
title: "Scopes tutorials"
---

# Scopes tutorials






# Go scopes development

This document describes how to start developing go scopes from a Vivid system
installed from scratch.

It lists packages you need to install to build go applications using the `go-
unityscopes` library and how to cross compile for an ARM device.

## Preparing the system for development

### Pre-requisites

Install required packages

    $ sudo apt-get install unity-scope-tool golang git bzr python3-scope-harness mercurial

Create a development directory for the go files

    $ mkdir ~/dev-go

Export and/or set `GOPATH` environment variable

    $ export GOPATH=~/dev-go

You can also set permanently the environment variable in your .bashrc file

    GOPATH=~/dev-go

### Get the go-scopes bindings base code

    $ go get launchpad.net/go-unityscopes/v2

This will download all source files needed to implement scopes in Go to your
`GOPATH`. The source files will be located at `$GOPATH/src`

## Developing a scope in Go

Create a developement directory under `$GOPATH/src`

    $ mkdir $GOPATH/src/my-goscope

Change to the my-goscope directory, and create a new go file

    $ gedit my-goscope.go

Fill the base go-scope template with your own code

    package main
    import (
        "launchpad.net/go-unityscopes/v2"
        "log"
    )
    const searchCategoryTemplate = `{
      "schema-version": 1,
      "template": {
        "category-layout": "grid",
        "card-size": "small"
      },
      "components": {
        "title": "title",
        "art":  "art",
        "subtitle": "username"
      }
    }`
    // SCOPE ***********************************************************************
    var scope_interface scopes.Scope
    type MyScope struct {
        base *scopes.ScopeBase
    }
    func (s *MyScope) Preview(result *scopes.Result, metadata *scopes.ActionMetadata, reply *scopes.PreviewReply, cancelled <-chan bool) error {
        // FILL WITH YOUR CODE
    }
    func (s *MyScope) Search(query *scopes.CannedQuery, metadata *scopes.SearchMetadata, reply *scopes.SearchReply, cancelled <-chan bool) error {
        // FILL WITH YOUR CODE
    }
    func (s *MyScope) SetScopeBase(base *scopes.ScopeBase) {
        s.base = base
    }
    // MAIN ************************************************************************
    func main() {
        if err := scopes.Run(&MyScope{}); err != nil {
            log.Fatalln(err)
        }
    }

### Example

**This is an example returning 2 simple items with their preview.**

You can find this example under `$GOPATH/src/launchpad.net/go-
unityscopes/v2/tests/goscope`

    package main
    import (
        "launchpad.net/go-unityscopes/v2"
        "log"
    )
    const searchCategoryTemplate = `{
      "schema-version": 1,
      "template": {
        "category-layout": "grid",
        "card-size": "small"
      },
      "components": {
        "title": "title",
        "art":  "art",
        "subtitle": "username"
      }
    }`
    // SCOPE ***********************************************************************
    var scope_interface scopes.Scope
    type MyScope struct {
        base *scopes.ScopeBase
    }
    func (s *MyScope) Preview(result *scopes.Result, metadata *scopes.ActionMetadata, reply *scopes.PreviewReply, cancelled <-chan bool) error {
        layout1col := scopes.NewColumnLayout(1)
        layout2col := scopes.NewColumnLayout(2)
        layout3col := scopes.NewColumnLayout(3)
        // Single column layout
        layout1col.AddColumn("image", "header", "summary", "actions")
        // Two column layout
        layout2col.AddColumn("image")
        layout2col.AddColumn("header", "summary", "actions")
        // Three cokumn layout
        layout3col.AddColumn("image")
        layout3col.AddColumn("header", "summary", "actions")
        layout3col.AddColumn()
        // Register the layouts we just created
        reply.RegisterLayout(layout1col, layout2col, layout3col)
        header := scopes.NewPreviewWidget("header", "header")
        // It has title and a subtitle properties
        header.AddAttributeMapping("title", "title")
        header.AddAttributeMapping("subtitle", "subtitle")
        // Define the image section
        image := scopes.NewPreviewWidget("image", "image")
        // It has a single source property, mapped to the result's art property
        image.AddAttributeMapping("source", "art")
        // Define the summary section
        description := scopes.NewPreviewWidget("summary", "text")
        // It has a text property, mapped to the result's description property
        description.AddAttributeMapping("text", "description")
        // build variant map.
        tuple1 := make(map[string]interface{})
        tuple1["id"] = "open"
        tuple1["label"] = "Open"
        tuple1["uri"] = "application:///tmp/non-existent.desktop"
        tuple2 := make(map[string]interface{})
        tuple1["id"] = "download"
        tuple1["label"] = "Download"
        tuple3 := make(map[string]interface{})
        tuple1["id"] = "hide"
        tuple1["label"] = "Hide"
        actions := scopes.NewPreviewWidget("actions", "actions")
        actions.AddAttributeValue("actions", []interface{}{tuple1, tuple2, tuple3})
        var scope_data string
        metadata.ScopeData(scope_data)
        if len(scope_data) > 0 {
            extra := scopes.NewPreviewWidget("extra", "text")
            extra.AddAttributeValue("text", "test Text")
            reply.PushWidgets(header, image, description, actions, extra)
        } else {
            reply.PushWidgets(header, image, description, actions)
        }
        return nil
    }
    func (s *MyScope) Search(query *scopes.CannedQuery, metadata *scopes.SearchMetadata, reply *scopes.SearchReply, cancelled <-chan bool) error {
        root_department := s.CreateDepartments(query, metadata, reply)
        reply.RegisterDepartments(root_department)
        // test incompatible features in RTM version of libunity-scopes
        filter1 := scopes.NewOptionSelectorFilter("f1", "Options", false)
        var filterState scopes.FilterState
        // for RTM version of libunity-scopes we should see a log message
        reply.PushFilters([]scopes.Filter{filter1}, filterState)
        return s.AddQueryResults(reply, query.QueryString())
    }
    func (s *MyScope) SetScopeBase(base *scopes.ScopeBase) {
        s.base = base
    }
    // RESULTS *********************************************************************
    func (s *MyScope) AddQueryResults(reply *scopes.SearchReply, query string) error {
        cat := reply.RegisterCategory("category", "Category", "", searchCategoryTemplate)
        result := scopes.NewCategorisedResult(cat)
        result.SetURI("http://localhost/" + query)
        result.SetDndURI("http://localhost_dnduri" + query)
        result.SetTitle("TEST" + query)
        result.SetArt("https://pbs.twimg.com/profile_images/1117820653/5ttls5.jpg.png")
        result.Set("test_value_bool", true)
        result.Set("test_value_string", "test_value"+query)
        result.Set("test_value_int", 1999)
        result.Set("test_value_float", 1.999)
        if err := reply.Push(result); err != nil {
            return err
        }
        result.SetURI("http://localhost2/" + query)
        result.SetDndURI("http://localhost_dnduri2" + query)
        result.SetTitle("TEST2")
        result.SetArt("https://pbs.twimg.com/profile_images/1117820653/5ttls5.jpg.png")
        result.Set("test_value_bool", false)
        result.Set("test_value_string", "test_value2"+query)
        result.Set("test_value_int", 2000)
        result.Set("test_value_float", 2.100)
        // add a variant map value
        m := make(map[string]interface{})
        m["value1"] = 1
        m["value2"] = "string_value"
        result.Set("test_value_map", m)
        // add a variant array value
        l := make([]interface{}, 0)
        l = append(l, 1999)
        l = append(l, "string_value")
        result.Set("test_value_array", l)
        if err := reply.Push(result); err != nil {
            return err
        }
        return nil
    }
    // DEPARTMENTS *****************************************************************
    func SearchDepartment(root *scopes.Department, id string) *scopes.Department {
        sub_depts := root.Subdepartments()
        for _, element := range sub_depts {
            if element.Id() == id {
                return element
            }
        }
        return nil
    }
    func (s *MyScope) GetRockSubdepartments(query *scopes.CannedQuery,
        metadata *scopes.SearchMetadata,
        reply *scopes.SearchReply) *scopes.Department {
        active_dep, err := scopes.NewDepartment("Rock", query, "Rock Music")
        if err == nil {
            active_dep.SetAlternateLabel("Rock Music Alt")
            department, _ := scopes.NewDepartment("60s", query, "Rock from the 60s")
            active_dep.AddSubdepartment(department)
            department2, _ := scopes.NewDepartment("70s", query, "Rock from the 70s")
            active_dep.AddSubdepartment(department2)
        }
        return active_dep
    }
    func (s *MyScope) GetSoulSubdepartments(query *scopes.CannedQuery,
        metadata *scopes.SearchMetadata,
        reply *scopes.SearchReply) *scopes.Department {
        active_dep, err := scopes.NewDepartment("Soul", query, "Soul Music")
        if err == nil {
            active_dep.SetAlternateLabel("Soul Music Alt")
            department, _ := scopes.NewDepartment("Motown", query, "Motown Soul")
            active_dep.AddSubdepartment(department)
            department2, _ := scopes.NewDepartment("New Soul", query, "New Soul")
            active_dep.AddSubdepartment(department2)
        }
        return active_dep
    }
    func (s *MyScope) CreateDepartments(query *scopes.CannedQuery,
        metadata *scopes.SearchMetadata,
        reply *scopes.SearchReply) *scopes.Department {
        department, _ := scopes.NewDepartment("", query, "Browse Music")
        department.SetAlternateLabel("Browse Music Alt")
        rock_dept := s.GetRockSubdepartments(query, metadata, reply)
        if rock_dept != nil {
            department.AddSubdepartment(rock_dept)
        }
        soul_dept := s.GetSoulSubdepartments(query, metadata, reply)
        if soul_dept != nil {
            department.AddSubdepartment(soul_dept)
        }
        return department
    }
    // MAIN ************************************************************************
    func main() {
        if err := scopes.Run(&MyScope{}); err != nil {
            log.Fatalln(err)
        }
    }

### Compiling the scope

Change to the directory containing your go scope code

    $ cd $GOPATH/src/my-goscope

Build the scope

    $ go build

You will find the binary in the current directory.

### Installing the scope to the GOPATH

    $ go install my-goscope

You will find the binary at `$GOPATH/bin`.

Note that you can just install the scope without the compilation step.
Installing forces a previous compilation.

## Running the scope

You can run the scope on your desktop with the `unity-scope-tool` command that
we installed previously.

You need to provide an `.ini` file indicating to `unity-scope-tool` where to
find your scope binary, similar to what you have to do for a C++ scope.

This is a sample ini file for the example above.

    [ScopeConfig]
    ScopeRunner=$GOPATH/bin/my-goscope --runtime %R --scope %S
    DisplayName = mock.DisplayName
    Description = mock.Description
    Author = test
    Art = mock.Art
    Icon = /mock.Icon
    SearchHint = mock.SearchHint
    HotKey = mock.HotKey
    [Appearance]
    PageHeader.Logo = http://assets.ubuntu.com/sites/ubuntu/1110/u/img/logos/logo-ubuntu-orange.svg
    PageHeader.ForegroundColor = white
    PageHeader.Background = color://black
    ShapeImages = false

To run the scope with unity-scope-tool run the following command:

    $ unity-scope-tool ./my-goscope.ini

## Cross Compiling Go scopes

In this section we will cross compile our Go scope for ARM architecture using
a chroot.

First, install the required packages to setup a chroot

    $ sudo apt-get install click-dev schroot

### Create a chroot to cross-compile

In this case we are using version 15.04 (Vivid), if you use a different
distribution the names of packages and/or version may change.

Note that you can also create a click chroot [from the UbuntuSDK](../../platform/sdk/tutorials-click-targets-and-device-kits.md).

    $ sudo click chroot -a armhf -f ubuntu-sdk-15.04 -s vivid create

This will setup yout chroot. It will download all the required packages for
the base system

Then, install all necessary packages in the chroot

    $ sudo click chroot -a armhf -f ubuntu-sdk-15.04 -s vivid maint apt-get install golang-go golang-go-linux-arm libglib2.0-dev:armhf crossbuild-essential-armhf

### Cross-compile your scope

Change to the scope directory

    $ cd $GOPATH/src/my-goscope

Cross-compile with the following command

    $ click chroot -a armhf -f ubuntu-sdk-15.04 -s vivid run CGO_ENABLED=1 GOARCH=arm GOARM=7 PKG_CONFIG_LIBDIR=/usr/lib/arm-linux-gnueabihf/pkgconfig:/usr/lib/pkgconfig:/usr/share/pkgconfig GOPATH=/usr/share/gocode/:~/dev-go CC=arm-linux-gnueabihf-gcc CXX=arm-linux-gnueabihf-g++ go build -ldflags '-extld=arm-linux-gnueabihf-g++'

You will find the ARM binary in the $GOPATH/src/my-goscope directory.

## Going further

Now that you have a working scope, you can learn how to make it shine by
changing its appearance and making its content feel at home.

Get started with our [customization and brandingguide](https://developer.ubuntu.com/en/scopes/guides/scopes-customization-branding/).
