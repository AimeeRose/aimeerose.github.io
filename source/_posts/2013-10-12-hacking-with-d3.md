title: Hacking with D3
date: 2013-10-12 10:12:07
tags: [programming, javascript]
---
My first time hacking with D3.js coincided with a 3-day beercation in Colorado during the Great American Beer Festival. As I wanted to accomplish some D3 hacking while I was in Colorado, I missed some breweries to do so! 

Even after skipping breweries and trying to work through my sobriety with beer-related hacking, this project still isn't where I would I like it to be. However, I give myself some slack as returning to the front end world through the lens of an entirely foreign library presented a number of practical obstacles* 

\* *Loading local json files in a browser is prohibited by [Cross-Origin XMLHttpRequest](http://developer.chrome.com/extensions/xhr.html), I learned, after stubbornly trying different things for hours. Also, linting a huge json file was its own class of fun.*

### Why I am obssessed with D3

D3 stands for data-driven documents. It is a simple, beautiful and ultimately very powerful concept. Further, its popularity corresponds has generated a base of continued support and a growing list of supplementary libraries. It is also reassuring to see the author responding and conversing on Google groups with users directly, and with examples.

In the below example, the map of US states is drawn using a TopoJSON file which uses line segments, or arcs, to create svg paths. The points representing breweries are composed from another TopoJSON.

D3 enables any DOM object to have bound data, in this case US State geo data or brewery data. It is also the common objective to bind this data to svg objects for visualizations but svg is not a requirement.

I give credit for this code to [Mike Bostock](http://bost.ocks.org/mike/), author of D3.js and TopoJSON, along with many other libraries. The brewery data is taken from [Open Beer Database](http://openbeerdb.com/) (and full disclosure, is out of date).

## Map of breweries
**This is a WIP.** I fully realize there are issues and hope to continue work on a more functional (and fun!) map in the future.

Click to zoom in and out. Hover for names, click points for descriptions
