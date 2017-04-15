---
Title: unity.scopes.testing.StudentsTTest
---
        
StudentsTTest
=============

Implements different variants of the Student's T-test (see <http://en.wikipedia.org/wiki/Student's_t-test>) [More...](#details)

`#include <unity/scopes/testing/Statistics.h>`

nested-classes
-----------------------------------------

struct  
Result
 
Executing the test returns a set of hypothesis that have to be evaluated at the desired confidence level. More...
 
pub-methods
------------------------------------------------------

Result 
one\_sample (const Sample &sample, Sample::ValueType mean, Sample::ValueType std\_dev)
 
one\_sample calculates the Student's T test for one sample and a known mean and std. dev.. More...
 
Result 
two\_independent\_samples (const Sample &sample1, const Sample &sample2)
 
two\_independent\_samples calculates the Student's T test for two samples More...
 
<span id="details"></span>
Detailed Description
--------------------

Implements different variants of the Student's T-test (see <http://en.wikipedia.org/wiki/Student's_t-test>)

<a href="unity.scopes.testing.OutOfProcessBenchmark.md" class="code">unity::scopes::testing::OutOfProcessBenchmark</a> benchmark;

<a href="unity.scopes.testing.Result.md" class="code">unity::scopes::testing::Result</a> search\_result;

<a href="unity.scopes.ActionMetadata.md" class="code">unity::scopes::ActionMetadata</a> meta\_data{default\_locale, default\_form\_factor};

<span class="keyword">static</span> <span class="keyword">const</span> std::size\_t sample\_size{10};

<span class="keyword">static</span> <span class="keyword">const</span> std::chrono::seconds per\_trial\_timeout{1};

<a href="unity.scopes.testing.Benchmark.PreviewConfiguration.md" class="code">unity::scopes::testing::Benchmark::PreviewConfiguration</a> config

{

\[search\_result, meta\_data\]() { <span class="keywordflow">return</span> std::make\_pair(search\_result, meta\_data); },

{

sample\_size,

per\_trial\_timeout

}

};

<span class="keyword">auto</span> result = benchmark.<a href="../unity.scopes.testing.OutOfProcessBenchmark.md#a397be9ae5eaca3d6ca96fa2957498c86" class="code">for_preview</a>(scope, config);

<span class="keyword">auto</span> test\_result = <a href="index.html" class="code">unity::scopes::testing::StudentsTTest</a>().<a href="#aaf584b159766a0a0e605e8365f87107f" class="code">one_sample</a>(

reference\_preview\_performance,

result);

EXPECT\_EQ(unity::scopes::testing::HypothesisStatus::not\_rejected,

test\_result.sample\_mean\_is\_eq\_to\_reference(0.05));

EXPECT\_EQ(unity::scopes::testing::HypothesisStatus::not\_rejected,

test\_result.sample\_mean\_is\_ge\_than\_reference(0.05));

EXPECT\_EQ(unity::scopes::testing::HypothesisStatus::rejected,

test\_result.sample\_mean\_is\_le\_than\_reference(0.05));

Member Function Documentation
-----------------------------

<span id="aaf584b159766a0a0e605e8365f87107f" class="anchor"></span>
|                                                                                                  |     |                                                                                                                         |             |
|--------------------------------------------------------------------------------------------------|-----|-------------------------------------------------------------------------------------------------------------------------|-------------|
| unity::scopes::testing::StudentsTTest::Result unity::scopes::testing::StudentsTTest::one\_sample | (   | const <a href="unity.scopes.testing.Sample.md">Sample</a> &                                       | *sample*,   |
|                                                                                                  |     | <a href="../unity.scopes.testing.Sample.md#a9e02cfa261b23b40c9da59cda6ab0dc8">Sample::ValueType</a>  | *mean*,     |
|                                                                                                  |     | <a href="../unity.scopes.testing.Sample.md#a9e02cfa261b23b40c9da59cda6ab0dc8">Sample::ValueType</a>  | *std\_dev*  |
|                                                                                                  | )   |                                                                                                                         |             |

one\_sample calculates the Student's T test for one sample and a known mean and std. dev..

Parameters  
|          |                                                                                                                                                                                                       |
|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| sample   | <a href="unity.scopes.testing.Sample.md" title="The Sample class models the interface to a sample of raw observations and their statistical propertie...">Sample</a> of values. |
| mean     | The known mean of the underlying distribution                                                                                                                                                         |
| std\_dev | The known std. dev. of the underlying distribution                                                                                                                                                    |

<!-- -->

Returns  

<span id="a09c7d3760d9aef4fb50131265170cbac" class="anchor"></span>
|                                                                                                                |     |                                                                                    |            |
|----------------------------------------------------------------------------------------------------------------|-----|------------------------------------------------------------------------------------|------------|
| unity::scopes::testing::StudentsTTest::Result unity::scopes::testing::StudentsTTest::two\_independent\_samples | (   | const <a href="unity.scopes.testing.Sample.md">Sample</a> &  | *sample1*, |
|                                                                                                                |     | const <a href="unity.scopes.testing.Sample.md">Sample</a> &  | *sample2*  |
|                                                                                                                | )   |                                                                                    |            |

two\_independent\_samples calculates the Student's T test for two samples

Parameters  
|         |                   |
|---------|-------------------|
| sample1 | The first sample  |
| sample2 | The second sample |

<!-- -->

Returns  
An instance of Result.

