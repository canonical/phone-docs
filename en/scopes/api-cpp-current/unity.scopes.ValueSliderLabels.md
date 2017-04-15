---
Title: unity.scopes.ValueSliderLabels
---
        
ValueSliderLabels
=================

Labels used by a <a href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. [More...](#details)

`#include <unity/scopes/ValueSliderLabels.h>`

pub-methods
------------------------------------------------------

 
<a href="#aee36eeedc9ec3d756e4b093575a5431e">ValueSliderLabels</a> (std::string const &<a href="#a199d67722ee50d4eec47c2f089670cf2">min_label</a>, std::string const &<a href="#a5f471aecdaa04dbdf13112a74f524a86">max_label</a>)
 
Create a ValueSliderLabels instance with labels for minimum and maximum values only. More...
 
 
<a href="#a6b31441606d8e090cad12908800fb409">ValueSliderLabels</a> (std::string const &<a href="#a199d67722ee50d4eec47c2f089670cf2">min_label</a>, std::string const &<a href="#a5f471aecdaa04dbdf13112a74f524a86">max_label</a>, <a href="../unity.scopes.md#aa2ccb5d7acadeb38f44e9405f1b55c6b">ValueLabelPairList</a> const &<a href="#adcd0e3d956206f272b6fec704b87a386">extra_labels</a>)
 
Create a ValueSliderLabels instance with labels for minimum and maximum, as well as extra labels. More...
 
std::string 
<a href="#a199d67722ee50d4eec47c2f089670cf2">min_label</a> () const
 
Get the label for the minimum value of the filter. More...
 
std::string 
<a href="#a5f471aecdaa04dbdf13112a74f524a86">max_label</a> () const
 
Get the label for the maximum value of the filter. More...
 
<a href="../unity.scopes.md#aa2ccb5d7acadeb38f44e9405f1b55c6b">ValueLabelPairList</a> 
<a href="#adcd0e3d956206f272b6fec704b87a386">extra_labels</a> () const
 
Get the labels for intermediate values of the filter.
 
Copy and assignment

Copy and assignment (move and non-move versions) have the usual value semantics.

 
**ValueSliderLabels** (<a href="index.html">ValueSliderLabels</a> const &other)
 
 
**ValueSliderLabels** (<a href="index.html">ValueSliderLabels</a> &&)
 
<a href="index.html">ValueSliderLabels</a> & 
**operator=** (<a href="index.html">ValueSliderLabels</a> const &other)
 
<a href="index.html">ValueSliderLabels</a> & 
**operator=** (<a href="index.html">ValueSliderLabels</a> &&)
 
 
**~ValueSliderLabels** ()
 
<span id="details"></span>
Detailed Description
--------------------

Labels used by a <a href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.

The <a href="index.html" title="Labels used by a ValueSliderFilter. ">ValueSliderLabels</a> class holds labels for a <a href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. Labels for the minimum and maximum values must be provided. In addition, an arbitrary number of extra labels can be defined; these labels mark intermediate values between the minimum and maximum value.

Constructor & Destructor Documentation
--------------------------------------

<span id="aee36eeedc9ec3d756e4b093575a5431e" class="anchor"></span>
|                                                     |     |                      |               |
|-----------------------------------------------------|-----|----------------------|---------------|
| unity::scopes::ValueSliderLabels::ValueSliderLabels | (   | std::string const &  | *min\_label*, |
|                                                     |     | std::string const &  | *max\_label*  |
|                                                     | )   |                      |               |

Create a <a href="index.html" title="Labels used by a ValueSliderFilter. ">ValueSliderLabels</a> instance with labels for minimum and maximum values only.

Exceptions  
|                                 |                                           |
|---------------------------------|-------------------------------------------|
| unity::InvalidArgumentException | for invalid (empty or duplicated) labels. |

<span id="a6b31441606d8e090cad12908800fb409" class="anchor"></span>
|                                                     |     |                                                                                                                   |                  |
|-----------------------------------------------------|-----|-------------------------------------------------------------------------------------------------------------------|------------------|
| unity::scopes::ValueSliderLabels::ValueSliderLabels | (   | std::string const &                                                                                               | *min\_label*,    |
|                                                     |     | std::string const &                                                                                               | *max\_label*,    |
|                                                     |     | <a href="../unity.scopes.md#aa2ccb5d7acadeb38f44e9405f1b55c6b">ValueLabelPairList</a> const &  | *extra\_labels*  |
|                                                     | )   |                                                                                                                   |                  |

Create a <a href="index.html" title="Labels used by a ValueSliderFilter. ">ValueSliderLabels</a> instance with labels for minimum and maximum, as well as extra labels.

Note that any extra labels act only as a guidance for the user (i.e. they do not limit the available choices). The Unity shell is free to omit some or all of the labels depending on the available screen space.

Parameters  
|               |                                                                                                                                                                                                                                      |
|---------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| min\_label    | The label for minimum value of the associated <a href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> filter. |
| max\_label    | The label for maximum value of the associated <a href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> filter. |
| extra\_labels | Additional labels for values between minimum and maximum values.                                                                                                                                                                     |

<!-- -->

Exceptions  
|                                 |                                                                       |
|---------------------------------|-----------------------------------------------------------------------|
| unity::InvalidArgumentException | on invalid labels (empty or duplicate labels, non-increasing values). |

Member Function Documentation
-----------------------------

<span id="a5f471aecdaa04dbdf13112a74f524a86" class="anchor"></span>
|                                                          |     |     |     |       |
|----------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ValueSliderLabels::max\_label | (   |     | )   | const |

Get the label for the maximum value of the filter.

Returns  
The label for the maximum value

<span id="a199d67722ee50d4eec47c2f089670cf2" class="anchor"></span>
|                                                          |     |     |     |       |
|----------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::ValueSliderLabels::min\_label | (   |     | )   | const |

Get the label for the minimum value of the filter.

Returns  
The label for the minimum value

