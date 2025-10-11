---
title: "Crypto Market Indicators: Puell Multiple and Exploring Its Custom Variants"
date:   2025-10-10 09:00:00 +0200 (!update)
published: true
excerpt: We well have a look at Puell Multiple, its shortcomings and possible approaches to overcome those
toc: true
toc_label: "Table of Contents"
toc_sticky: true
categories:
  - Crypto Market Indicators
tags:
  - "Bitcoin"
  - "Crypto Market Indicator"
  - "Puell Multiple"
  - "Relative Strength Index"
  - "Pine Script"
---
{% include math-jax.html %}
{% include trading-disclaimer.html %}

## Introduction

There are so many indicators for the crypto market, and every crypto guru swears by different ones. It is just confusing! I am sure there are many different approaches that can work when it comes to long term investing in crypto assets, but one has to understand at least a few of the available indicators, narrow them down to even fewer and build a strategy on them. So I have decided to do my own research and document it. It feels like an bottomless rabbit whole!

Right off the bat, I have come across one that I have barely heard of: the `Puell Multiple`. I feel like I already got trapped in the rabbit hole, because I have spent more time on it that I should have, instead of exploring the broader indicator landscape, but here I am. In this post I will discuss what the `Puell Multiple` is, its `strengths` and `weaknesses`, `custom variants` that I have come up with to address those weaknesses and some `experimental` results. I will also make the `Pine Script` used in these experiments publicly available.

## Puell Multiple basics

The Puell Multiple indicator shows Bitcoin (BTC) miner profitability. The miners are important actors in the Bitcoin economy. They are on the supply side of the market, and can have a significant impact on BTC's price. However, they don't control the market, instead, they are affected by it as well. Miner profitability depends on two factors: 
1. BTC's price (in USD)
2. Mining difficulty. The more miners there are, the greater the difficulty is, because more miners have to share the same amount of rewards.

There are two extreme cases that we are interested in watching:
1. When miners run their operations at `very high profit` levels, they are likely to sell BTC to realise their gains, thus pushing price down. 
2. When their profit is `very low or even negative`, they struggle maintaining their operations. This usually happens when BTC's price is low. This may force weaker miners to shut down their operations, which means less mining difficulty for the surviving ones. This is very similar how markets shake out weak/overleveraged traders which leads to healthier market conditions and opens up the possibility for a market recovery.

In short: extremely high miner profitability may project a cooling off, while extremely low profitability may project a market recovery.

### Puell Multiple indicator

This miner profitability is exactly what the Puell Multiple indicator is designed to show. It was designed by David Puell in 2019 and it is calculated as [{% include link.html key="coinmarketcap_puell_multiple" text="1" %}]

{% raw %}
$$
\text{Puell Multiple} = 
\frac{
  \text{R}
}{
  \text{365-day Moving Average of R}
}
$$
{% endraw %}

Where
{% raw %}
$$
R = \text{Daily USD value of BTC issuance (block rewards + fees)}
$$
{% endraw %}

Which means that the indicator shows how to current miner revenue compares to the long term average, and it looks like this:

{% include image.html src="/assets/images/trading/puell-multiple/puell-1.png"
   alt="Figure 1: Puell Multiple plot"
   id="fig-fvg-1" %}

### Bitcoin cycles

Before further analysing the Puell Multiple and what suggests to us, we need to understand Bitcoin cycles as well. Bitcoin, since its existence, has shown cyclic market behaviour which is heavily driven (although not exclusively) by its `halving events`. Halving events occur about every four years, and it halves the global BTC block rewards for miners. It sounds quite bad for miners, but it also means, that less new BTC will enter the market, thus it is a supply shock, which eventually drives prices up. Now let's take another look at the Puell Multiple chart with the halving events marked, using a logarithmic* scale this time:

{% include image.html src="/assets/images/trading/puell-multiple/puell-2.png"
   alt="Figure 2: Puell Multiple and halving events"
   id="fig-puell-2" %}

*The logarithmic scale allows me to draw a straight trend line instead of a 1/(2^k) exponential decay function, where k is the number of halvings in the past. Every time, mining rewards are cut in half, so it will be 1/2, 1/4, 1/8... etc of the initial block rewards. I also use the monthly chart to reduce noise
{: .notice}

In [Figure 2](#fig-puell-2), you can see how miner revenues and bitcoin halvings are closely related. The peaks in the Puell Multiple marked with 1,3,5,7 indicate extreme high revenues. Historically, they have always followed a halving event (with the exception of 9, see later). As discussed earlier, halvings press down miner revenues, which is clearly visible as local bottoms right after the halvings (purple lines), but they cause a supply shortage in the longer term, which leads to subsequent peaks (1,3,5,7). Then the peaks in Puell Multiple have indicated overheated market conditions which was followed by a reversal and has lead to the dreaded `crypto bear market` until BTC's prices (and thus miner revenues) bottomed (2,4,6,8).

### Puell Multiple and Bitcoin's price

Now let's have a look at Bitcoin's historical price in the context of the Puell Multiple indicator. `Figures 3/a` and `3/b` show the same concept, the only difference is that in `3/a`, BTC's price is plotted on a logarithmic scale. This allows us to see the early price action better, while `3/b` uses the linear scale to show the second half of BTC's history better.

{% include image.html src="/assets/images/trading/puell-multiple/puell-3a.png"
   alt="Figure 3/a: Puell Multiple and BTC price, logarithmic scale"
   id="fig-puell-3a" %}

{% include image.html src="/assets/images/trading/puell-multiple/puell-3b.png"
   alt="Figure 3/b: Puell Multiple and BTC price, linear scale"
   id="fig-puell-3b" %}

I have highlighted the values on the price chart that correspond to the occasions the Puell Multiple showed extreme revenue levels. As you can see, they have indicated market cycle tops and bottoms pretty accurately. There are two caveats, however:
1. At `5`, the Puell Multiple didn't hit our downward trendline, even though it was a cycle top. If one relied solely on the Puell Multiple, they would have missed the selling opportunity. 
2. At `9`, the indicator did hit the trendline, although it wasn't a cycle top. The cycle top has already happened earlier in April 2021, and we would expect the next one after the next halving event, which happened in April 2024.

### The big question

As you can see at `10`, the indicator is approaching the trendline, and the Bitcoin cycle is also at a phase where we can expect a cycle top. The question is if we are really at the top? Is it happening soon? Or maybe we have already passed it similar to how `5` only approached the trendline, but never touched it?

## Strengths

1. The Puell Multiple has historically indicated cycle tops and bottoms pretty accurately.
    1. Especially market bottoms. When it reached `0.5`, it has proven to signal good buying opportunities
    2. With a little bit of extra consideration (timing in the Bitcoin cycle) it also indicated cycle tops relatively well.
2. Has strong fundamentals. Even if the market is maturing and may start behave differently (see Weaknesses), miner profitability is always going to be a factor.

## Weaknesses

1. Some people don't believe in the 4-year cycle any more, and that would question the usefulness and accuracy of the Puell Multiple as well. The reasons:
    1. ETFs and institutions: the crypto market is maturing as more and more institutional players enter, which represent significant demand on the market. They may hoover up the dips
    2. Treasury companies: basically the same effect as above
2. Historical behaviour doesn't guarantee future success. It is not specific to the Puell Multiple, but any indicator
3. This one is not a problem with the Puell Multiple itself, but {% include link.html key="coinmarketcap_puell_multiple" text="CoinMarketCap" %} stated that 
> When the indicator reaches levels between 3.5 and 10, it enters what’s called the "red zone" – a territory that has often coincided with Bitcoin price peaks

While this is certainly true, I don't understand why they determine a constant `3.5` value, despite the diminishing nature of the $\frac{1}{2^k}$ block reward function. If you acted by this rule, you would have completely missed [peaks 7,9 and 10](#fig-puell-3a) as they don't even stand a chance reaching `3.5` after all those halvings. This made me thinking of other solutions, and while switching the chart to logarithmic scale and drawing a trendline seems to work well, I have come up with some other approaches.

## Experiments and custom variants

If you have read up until this point, congratulations. You have all the necessary information to understand and apply the Puell Multiple in your trading/investing decisions. From now on, it will get a bit nerdy so I won't resent if you stop here. However, if you are open to a bit of exploration and possibly unusual, new findings, you are more than welcome to stay with me.

### Puell Multiple halving corrected

As we have seen earlier, the overvalued peaks of the Puell Multiple follow an $\frac{1}{2^k}$ function, but `CoinMarketCap` wrote about a constant value at `3.5`. This gave me the idea to compensate the BTC halvings by multiplying the Puell Multiple value by $2^k$ after each halving. It turned out that multiplying by $2^k$ was an overcompensation, and the peaks (1,3,5,7) were rising. After some experimentation I found an appeoximate value: `1.63` which brings the trendline to a horizontal position at `12.49` (see below).

{% include image.html src="/assets/images/trading/puell-multiple/puell-4.png"
   alt="Figure 4: Puell Multiple compensated for BTC halvings"
   id="fig-puell-4" %}

This means that in the long run, miner revenues are not cut in half by the halvings, but instead reduced to `61.34%`. This makes sense, since block rewards are only one part of their income, the other part consists of transaction fees (as mentioned [earlier](#puell-multiple-indicator)), so miners' lives are not so miserable afterall. :)

In [Figure 4](#fig-puell-4), you can also see how the original Puell Multiplier (white) and the corrected one (yellow) relate to each other. Before the first halving, they are identical, since no compensation has happened. After each halving, the Original Puell Multiplier is multiplied by $1.63^k$ to produce the corrected value. After the most recent halving, it is $1.63^4 = 7.059$. 

This representation makes it possible to assign a constant, horizontal value to the overvalued levels, but the drawback is that you lose the possibility to see the undervalued levels. Nevertheless, you have many months to switch between the two views if you wish. :)

## Conclusion
- Problem with custom indicators: no one watches them

## Glossary
- BTC: Bitcoin

## Links
- {% include link.html key="coinmarketcap_puell_multiple" text="Puell Multiple" %}