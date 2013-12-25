title: The composition formula
date: 2013-07-28 11:54:03
tags: [statistics, notes]
---
I am 100% obsessed with statistics. As I write this, I am in the process of relearning statistics (first studied in college) and the R statistical programming language. This endeavor is motivated by  an opportunity provided by my employer to propose and undertake an innovation project and a subsequent realization I should combine two things I'm totally obsessed with: programming and statistics.

This is the first in (I hope) a series of posts to relay what I am learning.

## The composition formula

The **composition formula** provides an alternative way to calculate, as well as interpret, the mean of some collection of values. When asked to calculate the mean of a collection of values, I think most people, including myself, would divide the sum of all values in the collection by the size of the collection.

The composition formula takes advantage of the fact that combined values in the collection compose some proportion of the total number of values. For example:

``` ruby
array = [1,3,5,8,9,10]

# Standard way to calculate mean
(1 + 3 + 5 + 8 + 9 + 10)/6
=> 6

# Using an (arbitrary) composition formula
((1 + 3 + 5)/3 * (3/6)) + ((8 + 9)/2 * (2/6)) + (10/1 * (1/6)) 
=> 6
```

In the composition formula above, I have arbitrarily selected proportions of one-half, one-third and one-sixth. Here, these proportions mean nothing, but in the real world these proportions may represent some cohort of interest of a total sample, like age groups.

So let's take another thing I am totally obsessed with, **beer**, to demonstrate an example of how the composition formula may be useful.

Let's say I am at a party with three varieties of beer, proportions and alcohol by volume (ABV) as detailed in the table below:

| Beer                               | % of total beer volume at party | ABV   |
| ---------------------------------- |:------------------------------: | -----:|
| Bud Light                          | 75%                             | 4.2%  |
| Harpoon IPA                        | 20%                             | 5.9%  |
| G.I.'s Bourbon Barrel County Stout |  5%                             | 15.0% |

If I want to know the average ABV of all the beer at the party, instead of going around and counting all the beer bottles, further complicated because some hot shot I'm totally not mad at brought Bud Light tall boys, I can use the composition formula:

``` R
0.042*0.75 + 0.059*0.2 + 0.15*0.05
=> 0.0508 
```
The beer at the party has an average ABV of 5.08%.

Ain't no party like a statistics party.

