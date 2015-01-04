# Bill States

#### Identity
* **referred:** The bill was introduced and referred to a committee, but never reported.
* **reported:** The bill was adressed in a hearing by its committee, but was never enacted by Congress.
* **introduced:** The bill was introduced.
* **enacted_veto_override:** The bill was enacted after a congressional override of the Presidential veto.
* **passed_bill:** The bill passed Congress but was never enacted before the end of the session.

#### Congressional Stalemate
* **pass_over_senate:** The bill passed the Senate but not the House.
* **pass_over_house:** The bill passed the House but not Senate.
* **pass_back_house:** The bill passed by both chambers but was passed in non-identical forms and the differences were never resolved.
* **pass_back_senate:** The bill passed by both chambers but was passed in non-identical forms and the differences were never resolved.
* **fail_originating_house:** The bill failed in the House.
* **fail_originating_senate:** The bill failed in the Senate.
* **conference_passed_house:** The bill was introduced in a previous session of Congress. It was passed by both chambers but it passed in non-identical forms.
* **fail_second_house:** The bill passed in senate, failed in house.
* **failed_second_senate:** The bill was passed in the House but failed in the Sentate.
* **conference_passed_senate:** The bill was introduced in a previous session of Congress. It was passed in non-identical form and only one chamber approved a conference report to resolve the differences.
* **prov_kill_suspensionfailed:** A catch-all for random ways for a bill to die in Congress. The bill was introduced but was killed due to a failed vote for cloture (placing a time limit on the debate), under a fast-track vote called 'suspension' (meant to quickly pass non-controversial bills), or while resolving differences.
* **prov_kill_cloturefailed:** Same as description above for 'prov_kill_suspensionfailed'.

#### Vetoed
* **prov_kill_veto:** The bill was vetoed by the President and Congress did not attempt an override.
* **vetoed_pocket:** The bill was pocket vetoed. A bill is pocket vetoed when the President does not sign the bill and Congress adjourns before the ten-day period expires.
* **override_pass_over_house:** The bill was vetoed by the President and Congress did not finish an override before the end of the Congressional session.
* **vetoed_override_fail_second_senate:** The bill was vetoed. The Senate attempted to override the veto but failed.
* **vetoed_override_fail_originating_house:** The bill was vetoed. The House attempted to override the veto but failed.
* **vetoed_override_fail_originating_senate:** The bill was vetoed by the President and Senate did not finish an override before the end of the Congressional session.
* **vetoed_override_fail_second_house:** The bill was vetoed by the President and the House did not finish an override before the end of the Congressional session.

#### Enacted
* **enacted_signed:** The bill was enacted after being signed.
* **enacted_unknown:** The bill was enacted.
* **enacted_tendayrule:** The bill became enacted after ten days elapsed after being presented to the President.

#### Passed Resolutions
* **passed_concurrentres:** The concurrent resolution was agreed to by both Chambers, which is the end of the legislative process for concurrent resolutions.
* **passed_simpleres:** The bill is a simple resolution and was passed^.









***simple resolution:*** Designated "S. Res.," simple resolutions are used to express nonbinding positions of the Senate or to deal with the Senate's internal affairs, such as the creation of a special committee. They do not require action by the House of Representatives. ([source](https://www.senate.gov/reference/glossary_term/simple_resolution.htm))