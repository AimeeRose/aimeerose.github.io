---
layout: post
title:  "MLB Salary Trend, 1874 to 2013"
subtitle: ""
date: 2015-06-16 14:01:50
categories: r baseball
---

<div id="linechart">
  <!-- Line chart goes here! -->
</div>

Even in real terms, top professional baseball players' salaries have grown nearly 3000% in the past 40 years. In 1973, Dick Allen made $200,000 which equates to $1,065,178 in 2014 dollars. In 2013, Alex Rodriguez made $29,000,000, or $29,470,054 in 2014 dollars.

In the early years of baseball, even top players were paid little more than the median income. [According to Google](https://www.google.lt/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=median+income+united+states+2014), in 2014 the median income was $51,759. Fergus Malone made just a little over that median income, earning a salary of $2800 in 1874, or $60,041 in 2014 dollars.

### Compiled Data

Data was compiled from the following sources:

* [CPI data from Measuring Worth](http://www.measuringworth.com/datasets/uscpi/) and the [US Inflation Calculator](http://www.usinflationcalculator.com/inflation/consumer-price-index-and-annual-percent-changes-from-1913-to-2008/).
* [Salary data from Society for American Baseball Research](http://sabr.org/research/mlbs-annual-salary-leaders-1874-2012)

Adjusted salary was calculated in R (although no reason it couldn't have been done in a regular spreadsheet) using the formula: `Adjusted Salary = (Salary / (CPI/100)) * (236.736/100)`.

| Year | CPI Value | Salary | Player(s) | 2014 Adjusted Salary |
| ---- | --------- | ------ | --------- | --------------- |
| 1874 | 11.04 | 2800 | Fergus Malone (Chi NA) | 60041.74 |
| 1875 | 10.64 | 2200 | Rich Higham (Chi NL) | 48949.17 |
| 1876 | 10.39 | 4000 | Al Spalding (Chi NL) | 91139.94 |
| 1877 | 10.15 | 2900 | Al Spalding (Chi NL) | 67638.86 |
| 1878 | 9.67 | 3700 | Bob Ferguson (Chi NL) | 90581.51 |
| 1879 | 9.67 | 1800 | Frank Flint (Chi NL) | 44066.68 |
| 1880 | 9.91 | 1800 | Adrian Anson (Chi NL) | 42999.48 |
| 1881 | 9.91 | 2000 | Jim O'Rourke (Buf NL) | 47777.19 |
| 1882 | 9.91 | 2400 | Monte Ward (Prov NL) | 57332.63 |
| 1883 | 9.71 | 3100 | Buck Ewing (NY NL) | 75579.98 |
| 1884 | 9.51 | 3100 | Buck Ewing (NY NL) | 77169.46 |
| 1885 | 9.32 | 4500 | Jim O'Rourke (NY NL) | 114303.86 |
| 1886 | 9.12 | 4500 | Fred Dunlap (StL/Det NL) | 116810.53 |
| 1887 | 9.22 | 4500 | Fred Dunlap (Det NL), Charles Radbourne (Bos NL) | 115543.6 |
| 1888 | 9.22 | 5000 | Fred Dunlap (Pit NL), Buck Ewing (NY NL) | 128381.78 |
| 1889 | 8.92 | 5000 | Fred Dunlap (Pit NL), Buck Ewing (NY NL) | 132699.55 |
| 1890 | 8.82 | 4000 | Hardy Richardson (Bos PL) | 107363.27 |
| 1891 | 8.82 | 2000 | Paul Cook (Lou/StL AA) | 53681.63 |
| 1892 | 8.82 | 2800 | Joe Gunson (Bal NL) | 75154.29 |
| 1895 | 8.14 | 2400 | Jack Glasscock (Lou/Was NL) | 69799.31 |
| 1899 | 8.04 | 1800 | Victor Willis (Bos NL) | 53000.6 |
| 1904 | 8.63 | 5000 | Joe McGinnity (NY NL) | 137158.75 |
| 1906 | 8.72 | 8500 | Nap Lajoie (Cle AL) | 230763.3 |
| 1907 | 9.11 | 8500 | Nap Lajoie (Cle AL) | 220884.3 |
| 1908 | 8.92 | 8500 | Nap Lajoie (Cle AL) | 225589.24 |
| 1909 | 8.82 | 9000 | Nap Lajoie (Cle AL) | 241567.35 |
| 1910 | 9.21 | 9000 | Ty Cobb (Det AL) | 231338.11 |
| 1911 | 9.21 | 9000 | Ty Cobb (Det AL), Nap Lajoie (Cle AL) | 231338.11 |
| 1912 | 9.4 | 10000 | Roger Bresnahan (StL NL), Jimmy Callahan (Chi AL), Hugh Jennings (Det AL), Honus Wagner (Pit NL) | 251846.81 |
| 1913 | 9.6 | 15000 | Fred Clarke (Pit NL) | 369900 |
| 1914 | 9.69 | 15000 | Ty Cobb (Det AL) | 366464.4 |
| 1915 | 9.74 | 15050 | Fred Clarke (Pit NL) | 365798.44 |
| 1916 | 10.64 | 20000 | Ty Cobb (Det AL) | 444992.48 |
| 1917 | 12.82 | 20000 | Ty Cobb (Det AL) | 369322.93 |
| 1918 | 15.06 | 20000 | Ty Cobb (Det AL) | 314390.44 |
| 1919 | 17.3 | 20000 | Ty Cobb (Det AL) | 273683.24 |
| 1920 | 20.04 | 20000 | Ty Cobb (Det AL), Babe Ruth (NY AL), Tris Speaker (Cle AL) | 236263.47 |
| 1921 | 17.9 | 25000 | Ty Cobb (Det AL) | 330636.87 |
| 1922 | 16.77 | 52000 | Babe Ruth (NY AL) | 734065.12 |
| 1923 | 17.07 | 52000 | Babe Ruth (NY AL) | 721164.15 |
| 1924 | 17.1 | 52000 | Babe Ruth (NY AL) | 719898.95 |
| 1925 | 17.53 | 52000 | Babe Ruth (NY AL) | 702240.27 |
| 1926 | 17.7 | 52000 | Babe Ruth (NY AL) | 695495.59 |
| 1927 | 17.37 | 70000 | Babe Ruth (NY AL) | 954031.09 |
| 1928 | 17.13 | 70000 | Babe Ruth (NY AL) | 967397.55 |
| 1929 | 17.13 | 70000 | Babe Ruth (NY AL) | 967397.55 |
| 1930 | 16.7 | 80000 | Babe Ruth (NY AL) | 1134064.67 |
| 1931 | 15.23 | 80000 | Babe Ruth (NY AL) | 1243524.62 |
| 1932 | 13.66 | 75000 | Babe Ruth (NY AL) | 1299795.02 |
| 1933 | 12.96 | 52000 | Babe Ruth (NY AL) | 949866.67 |
| 1934 | 13.39 | 35000 | Babe Ruth (NY AL) | 618802.09 |
| 1935 | 13.73 | 31000 | Lou Gehrig (NY AL) | 534509.54 |
| 1936 | 13.86 | 36000 | Mickey Cochrane (Det AL) | 614898.7 |
| 1937 | 14.36 | 36000 | Mickey Cochrane (Det AL), Lou Gehrig (NY AL) | 593488.58 |
| 1938 | 14.09 | 39000 | Lou Gehrig (NY AL) | 655266.43 |
| 1939 | 13.89 | 35000 | Lou Gehrig (NY AL), Hank Greenberg (Det AL) | 596527 |
| 1940 | 14.03 | 35000 | Hank Greenberg (Det AL) | 590574.48 |
| 1941 | 14.73 | 55000 | Hank Greenberg (Det AL) | 883942.97 |
| 1942 | 16.3 | 43750 | Joe DiMaggio (NY AL) | 635411.04 |
| 1943 | 17.3 | 27000 | Joe Cronin (Bos AL) | 369472.37 |
| 1944 | 17.6 | 27000 | Joe Cronin (Bos AL) | 363174.55 |
| 1945 | 18 | 25000 | Lou Boudreau (Cle AL), Joe Cronin (Bos AL) | 328800 |
| 1946 | 19.54 | 55000 | Hank Greenberg (Det AL) | 666350.05 |
| 1947 | 22.34 | 70000 | Hal Newhouser (Det AL) | 741786.93 |
| 1948 | 24.08 | 65000 | Joe DiMaggio (NY AL), Ted Williams (Bos AL) | 639029.9 |
| 1949 | 23.85 | 100000 | Joe DiMaggio (NY AL) | 992603.77 |
| 1950 | 24.08 | 100000 | Joe DiMaggio (NY AL) | 983122.92 |
| 1951 | 25.98 | 90000 | Joe DiMaggio (NY AL), Ted Williams (Bos AL) | 820101.62 |
| 1952 | 26.55 | 85000 | Ted Williams (Bos AL) | 757911.86 |
| 1953 | 26.75 | 85000 | Ted Williams (Bos AL) | 752245.23 |
| 1954 | 26.88 | 85000 | Ted Williams (Bos AL) | 748607.14 |
| 1955 | 26.78 | 67500 | Ted Williams (Bos AL) | 596702.02 |
| 1956 | 27.18 | 58000 | Yogi Berra (NY AL) | 505176.16 |
| 1957 | 28.15 | 65000 | Yogi Berra (NY AL) | 546637.3 |
| 1958 | 28.92 | 65000 | Mickey Mantle (NY AL) | 532082.99 |
| 1959 | 29.16 | 75000 | Willie Mays (SF NL) | 608888.89 |
| 1960 | 29.62 | 80000 | Willie Mays (SF NL) | 639395 |
| 1961 | 29.92 | 85000 | Willie Mays (SF NL) | 672545.45 |
| 1962 | 30.26 | 90000 | Mickey Mantle (NY AL), Willie Mays (SF NL) | 704105.75 |
| 1963 | 30.62 | 105000 | Willie Mays (SF NL) | 811798.82 |
| 1964 | 31.03 | 105000 | Willie Mays (SF NL) | 801072.51 |
| 1965 | 31.56 | 105000 | Willie Mays (SF NL) | 787619.77 |
| 1966 | 32.46 | 130000 | Sandy Koufax (LA NL) | 948110.91 |
| 1967 | 33.4 | 125000 | Willie Mays (SF NL) | 885988.02 |
| 1968 | 34.8 | 125000 | Willie Mays (SF NL) | 850344.83 |
| 1969 | 36.67 | 135000 | Willie Mays (SF NL) | 871539.68 |
| 1970 | 38.84 | 135000 | Willie Mays (SF NL) | 822846.55 |
| 1971 | 40.51 | 167000 | Carl Yastrzemski (Bos AL) | 975929.7 |
| 1972 | 41.85 | 167000 | Carl Yastrzemski (Bos AL) | 944681.29 |
| 1973 | 44.45 | 200000 | Dick Allen (Chi AL) | 1065178.85 |
| 1974 | 49.33 | 250000 | Dick Allen (Chi AL) | 1199756.74 |
| 1975 | 53.84 | 240000 | Hank Aaron (Mil AL) | 1055286.78 |
| 1976 | 56.94 | 240000 | Hank Aaron (Mil AL) | 997833.51 |
| 1977 | 60.61 | 560000 | Mike Schmidt (Ph NL) | 2187298.47 |
| 1978 | 65.22 | 560000 | Mike Schmidt (Ph NL) | 2032691.81 |
| 1979 | 72.57 | 800000 | Rod Carew (Cal AL) | 2609739.56 |
| 1980 | 82.38 | 1000000 | Nolan Ryan (Hou NL) | 2873707.21 |
| 1981 | 90.93 | 1400000 | Dave Winfield (NY AL) | 3644896.07 |
| 1982 | 96.5 | 1500000 | Mike Schmidt (Ph NL) | 3679834.2 |
| 1983 | 99.6 | 1652333 | Mike Schmidt (Ph NL) | 3927376.56 |
| 1984 | 103.9 | 1989875 | Mike Schmidt (Ph NL) | 4533927.31 |
| 1985 | 107.6 | 2096967 | Mike Schmidt (Ph NL) | 4613639.22 |
| 1986 | 109.6 | 1964423 | Jim Rice (Bos AL) | 4243153.68 |
| 1987 | 113.6 | 2412500 | Jim Rice (Bos AL) | 5027514.08 |
| 1988 | 118.3 | 2340000 | Ozzie Smith (StL NL) | 4682690.11 |
| 1989 | 124 | 2766667 | Orel Hershiser (LA NL), Frank Viola (Min/NY AL/NL) | 5282013.54 |
| 1990 | 130.7 | 3200000 | Robin Yount (Mil AL) | 5796137.72 |
| 1991 | 136.2 | 3800000 | Darryl Stawberry (LA NL) | 6604969.16 |
| 1992 | 140.3 | 6100000 | Bobby Bonilla (NY NL) | 10292869.57 |
| 1993 | 144.5 | 6200000 | Bobby Bonilla (NY NL) | 10157530.8 |
| 1994 | 148.2 | 6300000 | Bobby Bonilla (NY NL) | 10063676.11 |
| 1995 | 152.4 | 9237500 | Cecil Fielder (Det AL) | 14349401.57 |
| 1996 | 156.9 | 9237500 | Cecil Fielder (Det AL) | 13937850.86 |
| 1997 | 160.5 | 10000000 | Albert Belle (Chi AL) | 14749906.54 |
| 1998 | 163 | 14936667 | Gary Sheffield (Fla/LA NL) | 21693538.64 |
| 1999 | 166.6 | 11949794 | Albert Belle (Bal AL) | 16980470.78 |
| 2000 | 172.2 | 15714286 | Kevin Brown (LA NL) | 21603584.27 |
| 2001 | 177.1 | 22000000 | Alex Rodriguez (Tex AL) | 29408198.76 |
| 2002 | 179.9 | 22000000 | Alex Rodriguez (Tex AL) | 28950483.6 |
| 2003 | 184 | 22000000 | Alex Rodriguez (Tex AL) | 28305391.3 |
| 2004 | 188.9 | 21726881 | Alex Rodriguez (NY AL) | 27228877.19 |
| 2005 | 195.3 | 26000000 | Alex Rodriguez (NY AL) | 31516313.36 |
| 2006 | 201.6 | 21680727 | Alex Rodriguez (NY AL) | 25459367.99 |
| 2007 | 207.34 | 23428571 | Jason Giambi (NY AL) | 26750198.63 |
| 2008 | 215.3 | 28000000 | Alex Rodriguez (NY AL) | 30787775.2 |
| 2009 | 214.54 | 33000000 | Alex Rodriguez (NY AL) | 36414132.56 |
| 2010 | 218.06 | 33000000 | Alex Rodriguez (NY AL) | 35826323.03 |
| 2011 | 224.94 | 32000000 | Alex Rodriguez (NY AL) | 33678100.83 |
| 2012 | 229.59 | 30000000 | Alex Rodriguez (NY AL) | 30933751.47 |
| 2013 | 232.96 | 29000000 | Alex Rodriguez (NY AL) | 29470054.95 |

<style>

.axis path,
.axis line {
  fill: none;
  stroke: #000;
  shape-rendering: crispEdges;
}

.line {
  fill: none;
  stroke: steelblue;
  stroke-width: 1.5px;
}

.overlay {
  fill: none;
  pointer-events: all;
}

svg:not(:root) {
  overflow: visible;
}

svg {
  font: 10px sans-serif;
}

</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
<script>

var margin = {top: 20, right: 20, bottom: 30, left: 80},
    width = 960 - margin.left - margin.right,
    height = 500 - margin.top - margin.bottom;

var parseDate = d3.time.format("%Y").parse,
    bisectDate = d3.bisector(function(d) { return d.date; }).left,
    formatValue = d3.format(",.2f"),
    formatCurrency = function(d) { return "$" + formatValue(d); };

var x = d3.time.scale()
    .range([0, width]);

var y = d3.scale.linear()
    .range([height, 0]);

var xAxis = d3.svg.axis()
    .scale(x)
    .orient("bottom");

var yAxis = d3.svg.axis()
    .scale(y)
    .orient("left")
    .tickFormat(function(d) { return formatCurrency(d); });

var line = d3.svg.line()
    .x(function(d) { return x(d.date); })
    .y(function(d) { return y(d['Adjusted Salary']); });

var svg = d3.select("#linechart").insert("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

d3.csv("/data/baseball-salaries.csv", function(error, data) {
  if (error) throw error;

  data.forEach(function(d) {
    d.date = parseDate(d.Year);
    d.adjustedSalary = +d['Adjusted Salary'];
  });

  x.domain(d3.extent(data, function(d) { return d.date; }));
  y.domain(d3.extent(data, function(d) { return d.adjustedSalary; }));

  svg.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + height + ")")
      .call(xAxis);

  svg.append("g")
      .attr("class", "y axis")
      .call(yAxis)
    .append("text")
      .attr("transform", "rotate(-90)")
      .attr("y", 6)
      .attr("dy", ".71em")
      .style("text-anchor", "end")
      .text("Salary in 2014 Dollars ($)");

  svg.append("path")
      .datum(data)
      .attr("class", "line")
      .attr("d", line);

  var focus = svg.append("g")
        .attr("class", "focus")
        .style("display", "none");

    focus.append("circle")
        .attr("r", 4.5);

    focus.append("text")
        .attr("x", 9)
        .attr("dy", ".35em");

    svg.append("rect")
        .attr("class", "overlay")
        .attr("width", width)
        .attr("height", height)
        .on("mouseover", function() { focus.style("display", null); })
        .on("mouseout", function() { focus.style("display", "none"); })
        .on("mousemove", mousemove);

    function mousemove() {
      var x0 = x.invert(d3.mouse(this)[0]),
          i = bisectDate(data, x0, 1),
          d0 = data[i - 1],
          d1 = data[i],
          d = x0 - d0.date > d1.date - x0 ? d1 : d0;
      focus.attr("transform", "translate(" + x(d.date) + "," + y(d.adjustedSalary) + ")");
      focus.select("text").text(formatCurrency(d.adjustedSalary) + " - " + d['Player(s)'] + " in " + d.Year);
    }
});

</script>