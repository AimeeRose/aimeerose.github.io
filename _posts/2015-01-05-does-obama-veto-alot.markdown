---
layout: post
title:  "Does Obama Veto a Lot?"
subtitle: "And other congressional trends"
date:   2015-01-26 22:13:37
categories: r politics statistics
---

<p>Obama has issued two vetoes, the least number of vetoes of any President in history. Upon hearing this statistic, I wondered how few vetoes this is relative to other presidents historically.</p>

<p>While investigating this question, other surprising aspects of bills surfaced:</p>
<ul style="list-style-type: decimal">
<li>81% of bills introduced into congress since 1973 maintain a state of "referred", indicating they have died in committee.</li>
<li>There is evidence to support the number of bills enacted per session is declining.</li>
<li>The congressional sessions during the Reagan presidency experienced 10 times more resolutions than the sessions before and after Reagan.</li>
</ul>
<br />

<div id="has-congress-been-busy" class="section level2">
<h4>A majority of bills stagnate in committee.</h4>
<p>To assess the number of relative vetoes, we will compare the number of vetoes with the number of bills enacted.</p>

<p>There are more than just a few states a bill can be in however: Each bill record maintains a state attributed, initiated as "introduced", and progressing into as many as 29 different states. For a complete listing of these statuses, see <strong>Appendix A: 29 Flavors of Legislative State</strong> at the bottom of this post.</p>

<p>In order to make these states digestable, I collapsed them into 9 states: introduced, referred, reported, enacted, enacted by veto override, passed, congressional stalemante, veto, and resolution.</p>
</ul>
<div id="of-bills-in-us-history-remain-in-a-referred-state" class="section level3">
<h4>81% of bills introduced since 1973 are in the “referred” state.</h4>

<p>In the <a href="https://www.govtrack.us/developers/api">govtrack.us database there are 335,487 bills</a>. While inspecting the govtrack.us database, I was interested to find how many bills stagnate in committee.</p>

<p>If only looking back to 1973 an overwhelming majority, 81%, of bills remain in the referred state. Being referred to committee and then held at that level, as opposed to being sent to subcommittee means one of two things: either the bill will be acted on quickly or it is being suppressed and will die from neglect (<a href="http://www.lexisnexis.com/help/CU/The_Legislative_Process/Stage_3.htm">source: LexisNexis</a>).</p>

<img src="/css/images/bill_statuses_pie.png" />

</div>

<h4>The total number of bills enacted by congress is declining.</h4>
<p>By visual inspection, I surmise the number of bills enacted by Congress is declining over time.</p>

<img src="/css/images/bills_enacted.png" />
</div>
<div id="reagans-congressional-sessions-introduction-of-resolutions-dwarves-those-before-and-after" class="section level3">
<h4>The number of bills introduced is also declining.</h4>
<p>I also surmise the number of bills introduced is also declining, however visual analysis is thwarted by the Reagan sessions towering over their neighbors.</p>
<img src="/css/images/bills_introduced.png" />

<br />
<br />
<p>It is impossible to ignore the 97th through 100th congressional sessions. Congressional activity, specifically new resolutions, spiked during Ronald Reagan’s presidency. Comparing the 4 sessions before, during and after the Reagan presidency revealed <strong>nearly 10 times more house resolutions from the Reagan years still exist in the introduced state as before and after the Reagan years.</strong> From those sessions, 996 house resolutions are still in the “introduced” state, whereas before and after Reagan sessions only 103 and 26 house resolutions still exist as “introduced”.</p>

<div id="does-obama-veto-a-lot" class="section level2">
<h4>Obama has issued the least total and relative number of vetoes.</h4>
<p>Obama has been president during the 111th, 112th and 113th Congressional sessions. Both in total and relative numbers, he has vetoed the least bills of any president since 1973.</p>

<img src="/css/images/proportion_vetoed.png" />

<br />
<br />
<br />
<br />
<div id="appendix-a-29-flavors-of-legislative-state" class="section level3">
<h3>Appendix A: 29 Flavors of Legislative State</h3>
<div id="identity" class="section level4">
<h4>Identity</h4>
<ul style="list-style-type: decimal">
referred
reported
introduced
enacted_veto_override
passed_bill
</ul>
</div>
<div id="congressional-stalemate" class="section level4">
<h4>Congressional Stalemate</h4>
<ul style="list-style-type: decimal">
pass_over_senate
pass_over_house
pass_back_house
pass_back_senate
fail_originating_house
fail_originating_senate
conference_passed_house
fail_second_house
failed_second_senate
conference_passed_senate
prov_kill_suspensionfailed
prov_kill_cloturefailed
</ul>
</div>
<div id="vetoed" class="section level4">
<h4>Vetoed</h4>
<ul style="list-style-type: decimal">
prov_kill_veto
vetoed_pocket
override_pass_over_house
vetoed_override_fail_second_senate
vetoed_override_fail_originating_house
vetoed_override_fail_originating_senate
vetoed_override_fail_second_house
</ul>
</div>
<div id="enacted" class="section level4">
<h4>Enacted</h4>
<ul style="list-style-type: decimal">
enacted_signed
enacted_unknown
enacted_tendayrule
</ul>
</div>
<div id="passed-resolutions" class="section level4">
<h4>Passed Resolutions</h4>
<ul style="list-style-type: decimal">
passed_concurrentres
passed_simpleres
</ul>
<p><strong><em>simple resolution:</em></strong> Designated “S. Res.,” simple resolutions are used to express nonbinding positions of the Senate or to deal with the Senate’s internal affairs, such as the creation of a special committee. They do not require action by the House of Representatives. (<a href="https://www.senate.gov/reference/glossary_term/simple_resolution.htm">source</a>)</p>
</div>
</div>
<div id="resources" class="section level3">
<h3>Resources</h3>
<p><a href="http://mathematicalcoffee.blogspot.com/2014/06/ggpie-pie-graphs-in-ggplot2.html">http://mathematicalcoffee.blogspot.com/2014/06/ggpie-pie-graphs-in-ggplot2.html</a></p>
</div>
</div>


</div>

<script>

// add bootstrap table styles to pandoc tables
$(document).ready(function () {
  $('tr.header').parent('thead').parent('table').addClass('table table-condensed');
});

</script>

<!-- dynamically load mathjax for compatibility with self-contained -->
<script>
  (function () {
    var script = document.createElement("script");
    script.type = "text/javascript";
    script.src  = "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML";
    document.getElementsByTagName("head")[0].appendChild(script);
  })();
</script>
