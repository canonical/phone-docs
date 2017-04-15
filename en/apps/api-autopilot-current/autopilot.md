---
Title: autopilot
---
        
<span id="autopilot-global-stuff"></span>
 `autopilot.``get_test_configuration`()<a href="#autopilot.get_test_configuration" class="headerlink" title="Permalink to this definition"></a>  
Get the test configuration dictionary.

Tests can be configured from the command line when the `autopilot` tool is invoked. Typical use cases involve configuring the test suite to use a particular binary (perhaps a locally built binary or one installed to the system), or configuring which external services are faked.

This dictionary is populated from the `--config` option to the `autopilot run` command. For example:

`autopilot run --config use_local some.test.id`

Will result in a dictionary where the key `use_local` is present, and evaluates to true, e.g.-:

    from autopilot import get_test_configuration
    if get_test_configuration['use_local']: print("Using local binary")

Values can also be specified. The following command:

`autopilot run --config fake_services=login some.test.id`

...will result in the key ‘fake\_services’ having the value ‘login’.

Autopilot itself does nothing with the conents of this dictionary. It is entirely up to test authors to populate it, and to use the values as they see fit.

<!-- -->

 `autopilot.``get_version_string`()<a href="#autopilot.get_version_string" class="headerlink" title="Permalink to this definition"></a>  
Return the autopilot source and package versions.

<!-- -->

 `autopilot.``have_vis`()<a href="#autopilot.have_vis" class="headerlink" title="Permalink to this definition"></a>  
Return true if the vis package is installed.

