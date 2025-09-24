---
title: "Smart Money Concepts - Part 1: Fair Value Gaps"
date:   2025-08-31 09:00:00 +0200
published: true
excerpt: In this part, I will discuss Fair Value Gaps (FVG), which is more of a trading psychology topic, but you will see how it relates to Smart Money Concepts in the following parts.
toc: true
toc_label: "Table of Contents"
toc_sticky: true
categories:
  - Smart Money Concepts
tags:
  - "Smart Money Concepts"
  - "Fair Value Gap"
  - "Trading Psychology"
---

{% include trading-disclaimer.html %}

## Introduction

This post is the first part of a series on `Smart Money Concepts (SMC)`. Throughout the series I will go into more detail about how the institutions hunt down retail traders and how you can take advantage of it, despite sounding it strange. 

In this part, I will discuss `Fair Value Gaps (FVG)`, which is more of a trading psychology topic, but you will see how it relates to `SMC` in the following parts.

Throughout this series, I will present several examples to demonstrate market situations. I will always describe only one direction of the trade (long/buy/bullish or short/sell/bearish) to keep it concise, but you can always apply the same concept for the opposite direction too, even if I don't mention it explicitly. 

Also, I assume that you are familiar with basic trading concepts, such as candlestick charts, common indicators, position management, `Take Profit (TP)` and `Stop Loss (SL)` orders. If you are not, I will leave some links for you in [Links and further reading](#links-and-further-reading).

Lastly, there will be a [Glossary](#glossary) at the end of each post, so you can look up abbreviations if you need.

## Fair Value Gaps

`Fair Value Gaps (FVGs)` form, when there is a sudden increase (or decrease - remember, I won't point out both directions all the time) in the price of an asset. This is usually due to a market inbalance. One side is much stronger, e.g. there are many buyers, but no sellers. At the new elevated price, buyers don't want to buy any more, so sellers have to lower the price until there are buyers willing to buy again.

The `fair price` is the price at which most of the exchanges would take place as both sides (buyers and sellers) are comfortable. In other words, the market is in balance. The `FVG` is the difference between the fair price and the current ask price.

### FVGs on candlestick charts

You can recognise FVGs on the chart by looking for large bodied candles that have little to no wicks (so called `Marubozus`). They indicate strong market momentum dominated by one side. For example:

<a id="fig-fvg-1"></a>

![Figure 1: Bearish Marubozu candles on USDCAD 1h](/assets/images/trading/smc-1/fvg-1.png)
{:.text-center}
*Figure 1: Bearish Marubozu candles on USDCAD 1h*
{:.text-center}

Perfect, textbook Marubozus don't have wicks, but this is rarely the case in real life. They usually have small wicks compared to their bodies. Those wicks suggest that in that zone there has been some trading activity already (the opposite side stepped in a bit), but the rest of the bodies are untouched territories, which we are most interested in:

<a id="fig-fvg-2"></a>

![Figure 2: Drawing the FVGs](/assets/images/trading/smc-1/fvg-2.png)
{:.text-center}
*Figure 2: Drawing the FVGs*
{:.text-center}

When drawing the FVG of a Marubozu candle, you subtract the next candle's wick from its body [Figure 2](#fig-fvg-2). 

There is also a stricter way to draw. In this case you subtract the wick of the previous candle as well, because it indicates that there has been trading activity at that level recently [Figure 3](#fig-fvg-3).

None of these approaches are wrong. In trading, usually stricter (more conservative) approaches yield less, but higher quality setups. It is always a tradeoff between quality and quantity, and you have to experiment and see what yields better results in the long run.

<a id="fig-fvg-3"></a>

![Figure 3: Drawing the FVGs, stricter approach](/assets/images/trading/smc-1/fvg-3.png)
{:.text-center}
*Figure 3: Drawing the FVGs, stricter approach*
{:.text-center}

The FVGs lie to the right of the candle, because we are interested in the future, not so much in the past. Or are we?

#### Weakening factors

In fact, we cannot ignore the past completely, when determining FVGs. In [Figure 1](#fig-fvg-1), you can see that the Marubozu candles break down to a territory where the price hasn't been lately. This means that traders are not used to this price level, and the sellers will consider the price too low to sell. This makes it more likely that the FVGs will be filled in, because buyers will have to offer higher prices if they want to find sellers to buy from. This is a very nice and clean setup. 

<a id="fig-fvg-4"></a>

![Figure 4: Clean FVG and oversold RSI](/assets/images/trading/smc-1/fvg-4.png)
{:.text-center}
*Figure 4: Clean FVG and oversold RSI*
{:.text-center}

In [Figure 4](#fig-fvg-4) above, you can also see that the breakdown is paired with an oversold `Relative Strength Index (RSI)` (I used the common 14 setting for the RSI, and also depicted the aforementioned support zone around 1.367). More on the RSI in [Relation to indicators/RSI](#rsi)

Now that you have seen a very nice and clean FVG setup, let's take a look at some counter-examples.

##### 1\. Counter-example 1

In [Figure 5](#fig-fvg-5) below, you can see the same chart example as in [Figure 4](#fig-fvg-4), but a little earlier, before the big breakdown.

<a id="fig-fvg-5"></a>

![Figure 5: Counter-example 1](/assets/images/trading/smc-1/fvg-5.png)
{:.text-center}
*Figure 5: Counter-example 1*
{:.text-center}

Here, the `red zone` induced by the big red Marobuzo looks like a perfect FVG at the first glance, but it is much weaker. Notice the prior chopping price action to the left around `1.371`. This means that even after the big drop, we are still at price levels that the traders are used to. We just got back to the balance price. This is also confirmed by the RSI, which touched 70 before dropping back to 50, which is as neutral as it gets. Nothing crazy or extraordinary here, we are in balance. This is not a good setup for trading. We want `inbalanced situations` to enter trades, because there the likelihood for the price to return to balance is greater.

The same applies to the `green zones`. Even though their Marubozus and the zones themselves look good, they do not break into previously `uncharted territories`. You could still consider these valid FVGs, but they are much weaker setups.

##### 2\. Counter-example 2

In our second example ([Figure 6](#fig-fvg-6)), the `green Marubozus` indicate some decent FVGs. They are still not as clean as in [Figure 4](#fig-fvg-4), but they are good enough to explain the next concept.

<a id="fig-fvg-6"></a>

![Figure 6: Counter-example 2](/assets/images/trading/smc-1/fvg-6.png)
{:.text-center}
*Figure 6: Counter-example 2*
{:.text-center}

The `red zones` indicated by the red Marubozus also look like pretty good FVGs: 
1. The Marubozus are large, drawing nice wide zones. 
2. The price hasn't been at these levels lately. The green Marubozus on the left were 26 candles ago, which is a decent distance already (remember, the RSI uses the default period of 14)
3. Between the green upleg and red downleg, there has been `sideways chopping` for 22 bars which indicates market balance
4. We have broken down from the balance point
5. RSI turned oversold.

What is wrong then?

The problem is that the red Marubozus `fill` the FVGs opened by the `green ones`. Thus we view them `closing` existing FVGs, not `opening` new ones. You could still treat those red zones as FVGs, but they will never be as strong as freshly opened ones. If you think from the market psychology perspective: FVGs mean that the price got too far from the balance price too quickly and there is a `"tension"` (inbalance) in the market. The the Marubozus in the opposite direction just release this `"tension"` bringing back the price to balance. Weak setup again, I would avoid trading the red zones.

#### Special case: "physical" gaps

You might have heard about "gaps". They are quite famous, a notable example is the [CME gap](https://www.binance.com/en/square/post/23718589921394) for Bitcoin (BTC). In Forex, they usually form over the weekend, because trading activity is paused and the `opening price on Monday` can differ from the `closing price on Friday`. These gaps are quite easy to spot, see below:

![Figure 7: Weekend gaps](/assets/images/trading/smc-1/fvg-7.png)
{:.text-center}
*Figure 7: Weekend gaps EURUSD 1h, 2025-01-30, 2025-02-07*
{:.text-center}

In `Figure 7`, you can see two weekend gaps following each other on two consecutive weekends. As you can see, the price filled both quite convincingly. These "physical" gaps are a subset of FVGs, and can be treated the same way as "regular" FVGs. If anything, they seem even stronger setups.

### Relationship to indicators

SMC doesn't mean indicatorless trading, and it is useful to see the relation between the `price`, `market psychology` and the `indicator`. You don't want to trade an indicator without understanding its underlying mechanics, and you should use it in context. That is the difference between `retail style trading` and `applying SMC`. So let's have a look at two indicators whose mechanics are closely related to SMC.

#### Relative Strength Index (RSI)

The first one is the `RSI` which I have already mentioned in connection with [Figure 4](#fig-fvg-4), our textbook example. As we have seen already, when an FVG forms, the price gets away from the balance price with a strong momentum. This is often reflected by the RSI, because it can go to `oversold` (below 30) or `overbought` (above 70) territory. What follows usually sooner than later is an `RSI pullback`, which is exactly the beginning of filling the FVG. Now you can see the real mechanics behind the RSI, and why and how it works.

You don't have to use the RSI to identify FVGs, but it can give you a nice extra confirmation, if you like.

#### Volume Profile (VP)

In [Figure 8](#fig-fvg-8) below, you can see the `Volume Profile (VP)` indicator put on a chart. The area between the two blue horizontal lines is called the `Value Area`. This area shows where the bulk of the trading activity has happened over a given number of last bars. These parameters can be changed. I used the default setting of 68 and 200, which means that `68%` of the trading volume has happened in this area over the `past 200 bars` (default settings).

The red line is called the `Point of Control (PoC)` which indicates the price level with the highest trading volume in the given period (longest horizontal bar on the histogram on the right). This is the same as our `balance price`, just put in another way. You can think about this level as the `opposite of FVG`. It acts like a `gravitational point` that keeps pulling back the price towards itself.

<a id="fig-fvg-8"></a>

![Figure 8: Volume Profile](/assets/images/trading/smc-1/fvg-8.png)
{:.text-center}
*Figure 8: Volume Profile EURUSD 1h*
{:.text-center}

We expect FVGs to form away from the gravitational point, the further the better. We need the market to move in order to trade successfully. Up or down, it doesn't matter, we can profit from both directions, but not from sideways chopping. 

The further we are from the gravitational point, the more likely a return towards the `PoC` will occur, because the price cannot stretch forever (the buyers/sellers who have driven the price so far will run out of steam at some point). On the other hand, near the balance point, FVGs are less likely, and you can expect more sideways chopping which you cannot really trade. Better to stay away.

In extreme cases it is more likely for the chart to return to the balance point: notice the similarity to the `RSI`, which also tends to spend relatively little time in overbought/oversold territory and pull back to more neutral levels. Now you can see how all of `market psychology`, `FVGs`, the `RSI` and the `VP` are related to each other. `Market psychology` stands behind all these mechanics, and the other three are just different presentations of it.

## How to trade Fair Value Gaps?

I am going to show you some possible ways to trade FVGs based on what we have seen in the previous sections. Keep in mind that these are not carefully backtested trading strategies, so you shouldn't rely on them for trading. However, you can use these ideas to develop and backtest your own strategies.

### 1. Use the pullback to enter

As we have seen earlier, we can expect that the price will come back to fill most of the FVG. We can use the pullback as an opportunity to enter a trade aligned with the market momentum. You do not want to open right after the Marubozu(s) at a stretched price, because a correction is likely to follow, but instead place a limit order in the FVG to open your position at a better price. Let's see a step-by-step example on EURUSD 1h (at 2025-09-02 9:00).

#### 1.1. Placing the limit order

In [Figure 9](#fig-fvg-9) below, a nice FVG has formed after the price broke down to unusual price levels with a large Marubozu. We can draw the FVG as we discussed [earlier](#fig-fvg-2), and place a limit sell order (yellow line) inside it. The market has a strong bearish momentum, which we want to follow, so we want to short here. Whether you place the limit order at the top, middle or bottom of the FVG, depends on you concrete strategy. 

<a id="fig-fvg-9"></a>

![Figure 9: Limit sell in the FVG](/assets/images/trading/smc-1/fvg-9.png)
{:.text-center}
*Figure 9: Limit sell in the FVG*
{:.text-center}

A more aggressive strategy would place it at the bottom. It would enter into trades more often at less favourable prices, while a conservative strategy placing at the top would catch much less pullbacks at much better prices. It is a matter of backtesting and optimisation to see which works best in the long run. Here, I put the sell limit order in the middle for demonstration purposes. Let's see what happens next.

#### 1.2. Placing the Stop Loss and Take Profit orders

As you can see in `Figure 10`, the price wicked up to our limit order and now we are in position. 

![Figure 10: Setting the SL and TP](/assets/images/trading/smc-1/fvg-10.png)
{:.text-center}
*Figure 10: Setting the SL and TP*
{:.text-center}

- You can set the `Stop Loss` at the top of the big Marubozu handle. If the price hits this level, we consider the setup failed, the market didn't continue in the initial momentum.
- Set the `Take Profit` at the lowest point of the past candles. In this case we get a very nice `Risk Reward Ratio (RR)` of 2.

Now we are all set, we just need to sit and wait. Get some popcorn.

![Figure 11: Take Profit hit](/assets/images/trading/smc-1/fvg-11.png)
{:.text-center}
*Figure 11: Take profit hit*
{:.text-center}

It turned out to be a successful trade.

### 2. Trade the pullback itself

May be even more obvious: if we expect the price to fill the FVG anyway, why not just trade it? I could have started with this, right? It can work too, let's see an example.

Look at that a massive green candle that absolutely catapulted EURUSD to overbought territories at 16:00 22nd August 2025:

![Figure 12: Massive FVG on EURUSD 1h](/assets/images/trading/smc-1/fvg-12.png)
{:.text-center}
*Figure 12: Massive FVG on EURUSD 1h*
{:.text-center}

#### 2.1. Opening stop and closing limit orders

We can short this FVG by setting a `Sell Stop` order at the top of the FVG and a `Limit Buy` at the bottom:

![Figure 13: Sell Stop was hit](/assets/images/trading/smc-1/fvg-13.png)
{:.text-center}
*Figure 13: Sell Stop was hit*
{:.text-center}

#### 2.2. Placing the Stop Loss

As you can see in `Figure 13`, our `Sell Stop` order (depicted by the yellow line) was hit and now we are in position.
- In [2.1.](#21-opening-stop-and-closing-limit-orders) we have already placed a `Limit Buy` order at the bottom of the FVG which will act as our `Take Profit`
- Let's set the `Stop Loss` at the highest point of the past candles. This gives us a juicy `RR of 3`, see `Figure 14` below:

![Figure 14: Stop Loss and Take Profit placement](/assets/images/trading/smc-1/fvg-14.png)
{:.text-center}
*Figure 14: Stop Loss and Take Profit placement*
{:.text-center}

Let's see how the trade would have played out:

![Figure 15: Short Take Profit hit](/assets/images/trading/smc-1/fvg-15.png)
{:.text-center}
*Figure 15: Short Take Profit hit*
{:.text-center}

As you can see, it hit our `Take Profit` quite convincingly.

### 3. Combine the previous two techniques

You can also combine the previous two techniques: 
1. Ride the short position down
2. When it hits the TP, reverse your position, and follow the market momentum upwards

Let's continue our previous example by opening a `long position` at the bottom of the FVG:

![Figure 16: Reversing the position into long](/assets/images/trading/smc-1/fvg-16.png)
{:.text-center}
*Figure 16: Reversing the position into long*
{:.text-center}

As described in [Use the pullback to enter](#1-use-the-pullback-to-enter),
- I placed the `Stop Loss` at bottom of the large Marubozu
- And the `Take Profit` at the `highest point after the Marubozu`
- This gives me a dream-like `RR of 6`

Let's see what happened next:

![Figure 17: Stop Loss hit](/assets/images/trading/smc-1/fvg-17.png)
{:.text-center}
*Figure 17: Stop Loss hit*
{:.text-center}

Oops, that didn't work out as I hoped. Had I not been so greedy, a nice `2 RR Take Profit` would have been hit, but this time there was not enough strength in the market to hit my `6 RR` dream target. It is important to note a couple of things here.
1. Losing trades are part of the game. A good trader is able to win more than they loses in the long run. (see 4. for more details)
2. In trading the math is different from what most people are used to. Instead of `2 + 2 = 4`, you'll have `6 - 2 = 4`, and hopefully not `2 - 6 = -4`.
3. There is `no Saint Grail` in trading, and `SMC` and `FVGs` neither are. The point is to improve your chances of winning.
4. The previous points were quite clichéd and boring commonplaces, but here is a practical one. A `large RR` is not necessarily a problem. What matters is the combination of your `average RR` and `win percentage`. For example, if you aim at an `RR of 6` and win `20%` of the time, the expectancy is `0.2 * 6 = 1.2`. This means that, on average, you earn 1.2 units for every 1 unit you risk. That’s excellent! But this also means, that four out of five trades lose, and only one wins.

- Possible way to trade: you can also short. 
    1. Sell stop at the top of the FVG
    2. limit buy at the bottom, ride the long position

3. These techniques can be good when trading news. Clearly bullish/bearish news cause great volatility in one direction creating big FVGs
    - NFP 6th June, 14:30 CEST, 5 mins chart: 
    - NFP 3rd July, 14:30 CEST, 5 mins chart: big red marubozu. Waits 10 minutes (2 candles) for everyone to get liquidated, then opens a long expecting the FVG to be filled.





{% include smc-glossary.html %}

## Links and further reading
- Volume Profile
- RSI
- Marubozu
- SL, TP
- RR