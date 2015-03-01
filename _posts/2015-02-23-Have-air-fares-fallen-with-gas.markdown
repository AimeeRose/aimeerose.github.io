---
layout: post
title:  "Have air fares fallen with gas?"
date:   2015-02-23 20:11:02
categories: r statistics economics gas transportation
---

<p>Driving through suburban New Jersy, signs advertising $1.97 unleaded gas evoke memories of learning to drive my first car. That was when I was in high school, 12 years ago. Even to chronic pedestrians, the gas price collapse is an inescapable curiosity. Like my mother's home-cooked purple chicken, gas prices below $2 remind us of not-so-recent times past.</p>
<p>Purchasing a plane ticket, in contrast, is still a big purchase. Drawing a relationship with gas prices is difficult: gas prices, ubiquotously and regularly displayed, cannot be ignored, while air fares must be sought out and can vary across suppliers. Gas price volatility further obscures change comparison. To get an empirical answer to the question “Have air fares fallen?”, I turned to the Bureau of Labor Statistics, the Bureau of Transportation Statistics and the West Texas Intermediate crude oil benchmark for the Consumer Price Index (CPI), air fare and gas prices from 1995 throuh 2014.</p>
<div id="air-fares-have-fallen-relatively-but-not-due-to-the-cost-of-gas" class="section level4">
<h4>Air fares have fallen relatively, but not due to the cost of gas</h4>
<p>The data confirmed air fares have not fallen with the price of gas recently or historically, while they have fallen relative to other goods. Reporting on this topic explains why:</p>
<ul>
<li>For most of recent history, airlines have suffered from ridiculously low profit margins, as low as 1% in 2012 (source: <a href="http://www.businessinsider.com/airlines-have-a-small-profit-margin-2012-6">businessinsider.com</a>).</li>
<li>Airlines purchase gas with long-term contracts, locking in a current price. Gas price volatility is not reflected in short-term price changes (sources: <a href="http://www.slate.com/articles/news_and_politics/politics/2014/12/fuel_prices_and_airfares_airlines_are_making_record_profits_don_t_bet_on.html">slate</a>, <a href="http://www.washingtonpost.com/blogs/wonkblog/wp/2015/01/20/airlines-could-slash-ticket-prices-as-fuel-costs-plummet-heres-why-they-wont/">washingtonpost.com</a>).</li>
<li>Unless demand falls, there is no reason to lower prices, and airlines are selling a record 85.1% of seats (source: <a href="http://www.bostonglobe.com/business/2014/11/17/fuel-prices-are-lower-why-aren-airline-tickets-cheaper/6IO8Hkcy4Norm71MzAvfaJ/story.html">bostonglobe.com</a>).</li>
<li>Compounding inelastic demand for air travel, recent consolidations have reduced intra-industry competition: “In a strong demand environment,” American Airlines Group president Scott Kirby said on a conference call in October, “we don’t plan to go off and just proactively cut fares” (source: <a href="http://www.washingtonpost.com/blogs/wonkblog/wp/2015/01/20/airlines-could-slash-ticket-prices-as-fuel-costs-plummet-heres-why-they-wont/">washingtonpost.com</a>).</li>
</ul>
<p>And although consumers may not be eager to realize it, air travel is a relative bargain.</p>

<img src="/css/images/cum_change_price_index_1995.png" />

<p>The overall CPI increased by 55.3% since 1995 and the average cost of air travel has risen by 33.8%. So, while the real cost of air fare has fallen, the cost of gas had increased 406% since 1995 in 2011. And even following the recent price collapse, gas prices have still risen nearly 175% since 1995.</p>
<p>A visual comparison of air and gas price changes quarter over quarter is difficult to evaluate, but a scatter plot and linear model sustains gas prices do not affect air fares.</p>

<img src="/css/images/quarterly-price-changes.png" />
<br />
<br />
<br />
<br />
<img src="/css/images/quarterly-change-air-v-gas.png" />
<br />
<br />
<br />
<p>A linear model in R reports positive correlation but was not statistically significant. The probability there is no relationship in reality is nearly 50%, so we confidently reject the hypothesis quarterly changes in are fares are indepdendent of quarterly changes in gas prices.</p>
<pre style="border: 1px solid grey; border-radius: 5px;"><p style="padding: 20px">Call:
lm(formula = bothChanges$quarter_change_air ~ bothChanges$quarter_change_gas)

Residuals:
    Min      1Q  Median      3Q     Max 
-9.7008 -1.8318  0.0702  2.1982  6.5770 

Coefficients:
                               Estimate Std. Error t value Pr(&gt;|t|)
(Intercept)                      0.3671     0.3725   0.986    0.327
bothChanges$quarter_change_gas   0.0164     0.0230   0.713    0.478

Residual standard error: 3.218 on 76 degrees of freedom
Multiple R-squared:  0.006648,   Adjusted R-squared:  -0.006423 
F-statistic: 0.5086 on 1 and 76 DF,  p-value: 0.4779</p></pre>


