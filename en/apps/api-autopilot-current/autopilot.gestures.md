---
Title: autopilot.gestures
---

# autopilot.gestures

<!-- Start Namespace Content -->
<span id="autopilot-gestures-gestural-and-multi-touch-support"></span>
<p>Gestural support for autopilot.</p>
<p>This module contains functions that can generate touch and multi-touch gestures
for you. This is a convenience for the test author - there is nothing to
prevent you from generating your own gestures!</p>
<dl class="function">
<dt id="autopilot.gestures.pinch">
<tt class="descclassname">autopilot.gestures.</tt><tt class="descname">pinch</tt><big>(</big><em>center</em>, <em>vector_start</em>, <em>vector_end</em><big>)</big><a class="headerlink" href="#autopilot.gestures.pinch" title="Permalink to this definition"></a></dt>
<dd><p>Perform a two finger pinch (zoom) gesture.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>center</strong> &#8211; The coordinates (x,y) of the center of the pinch gesture.</li>
<li><strong>vector_start</strong> &#8211; The (x,y) values to move away from the center for the
start.</li>
<li><strong>vector_end</strong> &#8211; The (x,y) values to move away from the center for the
end.</li>
</ul>
</td>
</tr>
</tbody>
</table>
<p>The fingers will move in 100 steps between the start and the end points.
If start is smaller than end, the gesture will zoom in, otherwise it
will zoom out.</p>
</dd></dl>
<!-- End Namespace Content -->
