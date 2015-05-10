---
layout: post
title:  "Strata + Hadoop Session Popularity on Twitter"
subtitle: ""
date: 2015-05-09 18:52:26
categories: r shiny strata+hadoop conferences spark
---

I just got back from [Strata + Hadoop World 2015 in London](http://strataconf.com/big-data-conference-uk-2015). I attended a lot of great sessions, but felt I wanted to be in two or three or four places at once. I got session envy overhearing attendees discussing sessions I had missed and reviewing the #StrataHadoop twitter stream.

The conference was 3 days long, with 10 tutorials and over 72 sessions. According to the site, in 3 weeks a link to a full set of recordings will appear in my email inbox. I wanted to know which sessions I should watch when the recordings become available. I also wanted to practice what I learned during the Spark Camp tutorial I attended with Paco Nathan. In a perfect convergence of problem meets tool, I installed [Apache Spark](https://spark.apache.org/docs/latest/quick-start.html) and developed some ruby and pyspark scripts to pull #StrataHadoop and perform a simplistic text analysis to determine which talks were popular on twitter.

I also used this opportunity use [RStudio's Shiny](http://shiny.rstudio.com/) web application framework and deployed the result via [shinyapps.io](https://www.shinyapps.io). I highly recommend this combination. Using the tutorial, the entire effort of building and deploying on shinyapps.io was painless.

The code is on github: [strata-hadoop-twitter-spark](https://github.com/AimeeRose/strata-hadoop-twitter-spark).

And here is a really awesome iframe of [aimeeb.shinyapps.io/shiny-strata-titles](https://aimeeb.shinyapps.io/shiny-strata-titles/):

<iframe src="https://aimeeb.shinyapps.io/shiny-strata-titles/" style="width: 100%; height: 820px; border: none"></iframe>
