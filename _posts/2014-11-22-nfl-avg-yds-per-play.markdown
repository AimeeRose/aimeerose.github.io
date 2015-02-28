---
layout: post
title:  "The end of the NFL"
date:   2014-11-22 20:28:45
categories: nfl d3 statistics
customjs:
  - /javascripts/d3.v3.min.js
---

# The end of the NFL driven by head injuries

Journalists predicting [the end of the NFL][grantland] cite lawsuits by
current and former players suffering [concussions][wiki-concussions] and head
injuries. Alongside these lawsuits are reports of violent controversies in
players' personal lives.

What's worse is these two trends are related: according to [vice sports][vice-sports], 
doctors examining former players at Boston University linked
their football-related brain injuries to depression and impulse control.
Heeding these injuries, parents of potential NFL players are forbidding
participation in the sport, and conscientious fans  are second-guessing their
devotion to the game.

However, in spite of all this, I continue to watch football, as do an
increasing number of Americans (and the English! American football is
enjoyed by the mayor of London, [Boris Johnson][nbc-sports]).

# Ever-more powerful players

An aspect of sports that as always been of interest is the continuous
advancement of athletes in the same sport over time. Athletes, over time with
advances in nutrition and training seem to get better and better. How good
they get and how long will it take to get there?

In American Football, players are getting ever more powerful. This has translated
into a greater probability of conversion for any given play over time. This is
shown in the scatterplot below, using data from [pro-football-reference.com
][pro-football-reference]. If you take this to its extreme where every play
results in a first down, the game itself becomes too predictable to enjoy. One
of the reasons sports (and sports betting) is so popular is because of the
high degree of unpredictability.

**If players are getting more and more powerful over time, they could become
so powerful they are able to drive the ball to the endzone every possession.**

The evidence agrees with the theory offensive plays are gaining more yards per
play than the year prior. This relationship has a high degree of statistical
signifance (the probability the relationship is random being 2.183e-07).
Admittedly, the advancement is very small, about 0.026 yards per year.

Correspondingly, a strong and positive relationship was found between the likelihood
of a play resulting in a conversion over time. The likelihood a play results
in a first down, year over year, is increasing by 0.128% (in 2013, the
percentage of plays resulting in a first down was 27.8%). Again, this is a
rather trivial quantity, but the relationship shows a high degree of
statistical significance (the likelihood this relationship is actually random
is 1.782e-06).

So, long term, as football players get better and better, the game will get more and
more predictable and less fun to watch.

<style>

  .axis path,
  .axis line {
    fill: none;
    stroke: #000;
    shape-rendering: crispEdges;
  }

</style>

<script type="text/javascript">
  
  var margin = {top: 20, right: 20, bottom: 30, left: 40},
          width = document.getElementsByClassName('wrapper')[0].clientWidth - margin.left - margin.right,
          height = 500 - margin.top - margin.bottom;

      /* 
       * value accessor - returns the value to encode for a given data object.
       * scale - maps value to a visual display encoding, such as a pixel position.
       * map function - maps from data value to display value
       * axis - sets up axis
       */ 

      // setup x 
      var xValue = function(d) { return d.Year; }, // data -> value
          xScale = d3.scale.linear().range([0,width])
          xMap = function(d) { return xScale(xValue(d));}, // data -> display
          xAxis = d3.svg.axis().scale(xScale).orient("bottom");

      // setup y
      var yValue = function(d) { return d.Yds;}, // data -> value
          yScale = d3.scale.linear().range([height, 0]), // value -> display
          yMap = function(d) { return yScale(yValue(d));}, // data -> display
          yAxis = d3.svg.axis().scale(yScale).orient("left");

      // add the graph canvas to the body of the webpage
      var svg = d3.select(".post-content").append("svg")
          .attr("width", width + margin.left + margin.right)
          .attr("height", height + margin.top + margin.bottom)
        .append("g")
          .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

      // load data
      d3.csv("/data/NFL-YrAggregates.csv", function(error, data) {
        // change string (from CSV) into number format
        data.forEach(function(d) {
          d.Yds = +d.Yds;
          d.Year = +d.Year;
        });

        // don't want dots overlapping axis, so add in buffer to data domain
        xScale.domain([d3.min(data, xValue)-1, d3.max(data, xValue)+1]);
        yScale.domain([d3.min(data, yValue)-.05, d3.max(data, yValue)+.05]);

        // x-axis
        svg.append("g")
            .attr("class", "x axis")
            .attr("transform", "translate(0," + height + ")")
            .call(xAxis.tickFormat(d3.format("j")))
          .append("text")
            .attr("class", "label")
            .attr("x", width)
            .attr("y", -6)
            .style("text-anchor", "end")
            .text("Year");

        // y-axis
        svg.append("g")
            .attr("class", "y axis")
            .call(yAxis)
          .append("text")
            .attr("class", "label")
            .attr("transform", "rotate(-90)")
            .attr("y", 6)
            .attr("dy", ".71em")
            .style("text-anchor", "end")
            .text("Avg offensive yards per play");


        // draw dots
        svg.selectAll(".dot")
            .data(data)
          .enter().append("circle")
            .attr("class", "dot")
            .attr("r", 3.5)
            .attr("cx", xMap)
            .attr("cy", yMap)
            .style("fill", "rgb(102,163,217)")
      });

</script>


<br />
<br />

[nbc-sports]:             http://profootballtalk.nbcsports.com/2014/11/13/mayor-says-london-is-overjoyed-to-have-nfl-games/
[grantland]:              http://grantland.com/features/cte-concussion-crisis-economic-look-end-football/
[wiki-concussions]:       http://en.wikipedia.org/wiki/Concussions_in_American_football
[vice-sports]:            https://sports.vice.com/article/the-nfl-concussion-settlement-is-pure-evil
[pro-football-reference]: http://www.pro-football-reference.com/play-index/play_finder.cgi

