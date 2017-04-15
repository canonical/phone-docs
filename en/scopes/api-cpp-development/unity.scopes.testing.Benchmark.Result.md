---
Title: unity.scopes.testing.Benchmark.Result
---
        
Result
======

The <a href="index.html" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a> struct encapsulates all of the result gathered from one individual benchmark run consisting of multiple independent trials. [More...](#details)

`#include <unity/scopes/testing/Benchmark.h>`

nested-classes
-----------------------------------------

struct  
Timing
 
pub-methods
------------------------------------------------------

void 
<a href="#a6a5b4c13c5577319208b16f2fc6f376b">load_from</a> (std::istream &in)
 
load\_from restores a result from the given input stream. More...
 
void 
<a href="#affa8a2fa514327d6c776bb2524564683">save_to</a> (std::ostream &out)
 
save\_to stores a result to the given output stream. More...
 
void 
<a href="#a7e39e38d5459491afcad135dfc085f20">load_from_xml</a> (std::istream &in)
 
load\_from\_xml restores a result stored as xml from the given input stream. More...
 
void 
<a href="#a287d480be8dd59a705ad6d6608cb3abd">save_to_xml</a> (std::ostream &out)
 
save\_to\_xml stores a result as xml to the given output stream. More...
 
pub-attribs
------------------------------------------------

std::size\_t 
<a href="#af4afaf13e8274b469e238169e03f6709">sample_size</a>
 
unity::scopes::testing::Benchmark::Result::Timing 
timing
 
Runtime-specific sample data.
 
<span id="details"></span>
Detailed Description
--------------------

The <a href="index.html" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a> struct encapsulates all of the result gathered from one individual benchmark run consisting of multiple independent trials.

Member Function Documentation
-----------------------------

<span id="a6a5b4c13c5577319208b16f2fc6f376b" class="anchor"></span>
|                                                            |     |                 |      |     |     |
|------------------------------------------------------------|-----|-----------------|------|-----|-----|
| void unity::scopes::testing::Benchmark::Result::load\_from | (   | std::istream &  | *in* | )   |     |

load\_from restores a result from the given input stream.

Exceptions  
|                     |                    |
|---------------------|--------------------|
| std::runtime\_error | in case of issues. |

<!-- -->

Parameters  
|     |                          |
|-----|--------------------------|
| in  | The stream to read from. |

<span id="a7e39e38d5459491afcad135dfc085f20" class="anchor"></span>
|                                                                 |     |                 |      |     |     |
|-----------------------------------------------------------------|-----|-----------------|------|-----|-----|
| void unity::scopes::testing::Benchmark::Result::load\_from\_xml | (   | std::istream &  | *in* | )   |     |

load\_from\_xml restores a result stored as xml from the given input stream.

Exceptions  
|                     |                    |
|---------------------|--------------------|
| std::runtime\_error | in case of issues. |

<!-- -->

Parameters  
|     |                          |
|-----|--------------------------|
| in  | The stream to read from. |

<span id="affa8a2fa514327d6c776bb2524564683" class="anchor"></span>
|                                                          |     |                 |       |     |     |
|----------------------------------------------------------|-----|-----------------|-------|-----|-----|
| void unity::scopes::testing::Benchmark::Result::save\_to | (   | std::ostream &  | *out* | )   |     |

save\_to stores a result to the given output stream.

Exceptions  
|                     |                    |
|---------------------|--------------------|
| std::runtime\_error | in case of issues. |

<!-- -->

Parameters  
|     |                         |
|-----|-------------------------|
| out | The stream to write to. |

<span id="a287d480be8dd59a705ad6d6608cb3abd" class="anchor"></span>
|                                                               |     |                 |       |     |     |
|---------------------------------------------------------------|-----|-----------------|-------|-----|-----|
| void unity::scopes::testing::Benchmark::Result::save\_to\_xml | (   | std::ostream &  | *out* | )   |     |

save\_to\_xml stores a result as xml to the given output stream.

Exceptions  
|                     |                    |
|---------------------|--------------------|
| std::runtime\_error | in case of issues. |

<!-- -->

Parameters  
|     |                         |
|-----|-------------------------|
| out | The stream to write to. |

Member Data Documentation
-------------------------

<span id="af4afaf13e8274b469e238169e03f6709" class="anchor"></span>
|                                                                      |
|----------------------------------------------------------------------|
| std::size\_t unity::scopes::testing::Benchmark::Result::sample\_size |

Size of the sample, corresponds to number of trials.

