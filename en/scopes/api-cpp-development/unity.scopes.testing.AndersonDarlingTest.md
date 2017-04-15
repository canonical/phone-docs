---
Title: unity.scopes.testing.AndersonDarlingTest
---
        
AndersonDarlingTest
===================

Implements the Anderson-Darling test for normality for the case of empirical mean and variance. [More...](#details)

`#include <unity/scopes/testing/Statistics.h>`

nested-classes
-----------------------------------------

struct  
Result
 
Executing the test returns a set of hypothesis that have to be evaluated at the desired confidence level. More...
 
pub-methods
------------------------------------------------------

Result 
for\_normality (const Sample &sample)
 
for\_normality evaluates a given sample to check if its underlying distribution is normal. More...
 
<span id="details"></span>
Detailed Description
--------------------

Implements the Anderson-Darling test for normality for the case of empirical mean and variance.

Member Function Documentation
-----------------------------

<span id="ab280c9c1652c8f2f7b4b011aa72db55f" class="anchor"></span>
|                                                                                                                 |     |                                                                                    |          |     |     |
|-----------------------------------------------------------------------------------------------------------------|-----|------------------------------------------------------------------------------------|----------|-----|-----|
| unity::scopes::testing::AndersonDarlingTest::Result unity::scopes::testing::AndersonDarlingTest::for\_normality | (   | const <a href="unity.scopes.testing.Sample.md">Sample</a> &  | *sample* | )   |     |

for\_normality evaluates a given sample to check if its underlying distribution is normal.

Parameters  
|        |                      |
|--------|----------------------|
| sample | The sample to check. |

<!-- -->

Returns  
A hypothesis containing the test statistics, can be evaluated at different confidence levels.

