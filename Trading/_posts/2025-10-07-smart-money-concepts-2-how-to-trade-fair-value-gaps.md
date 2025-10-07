---
title: "Smart Money Concepts - Part 2: How to Trade Fair Value Gaps"
date:   2025-10-07 07:00:00 +0200
published: true
excerpt: In this post I am going to show you some possible ways to trade Fair Value Gaps (FVGs) based on what we have seen in the previous post.
toc: true
toc_label: "Table of Contents"
toc_sticky: true
categories:
  - Smart Money Concepts
tags:
  - "Smart Money Concepts"
  - "Fair Value Gap"
  - "Trading Strategy"
  - "Risk Reward Ratio"
  - "Nonfarm Payrolls"
---

{% include trading-disclaimer.html %}

## Introduction

This is `part 2` in my `Smart Money Concepts` series. If you haven't yet, I recommend reading {% include link.html key="trading_smc_1" text="part 1" %}, as in this part, I am going to show you some possible ways to trade `Fair Value Gaps (FVGs)` based on what we have seen in the previous one. Keep in mind that these are not fully fledged trading strategies, but you can use them to develop and backtest your own strategies.

## 1. Use the pullback to enter

As we have seen earlier, price often tends to revisit or partially fill FVGs. We can use this opportunity to enter a trade along the market momentum (i.e. the direction of the {% include link.html key="investopedia_marubozu" text="Marubozu" %}s). You do not want to open right after the Marubozu(s) at a stretched price, because a correction is likely to follow, but instead place a {% include link.html key="investopedia_limit_order" text="limit order" %} in the FVG to enter a trade at a better price. Let's see a step-by-step example on `EURUSD 1h at 9:00 2025-09-02`.

### 1.1. Placing the limit order

In [Figure 1](#fig-fvg-1) below, a nice FVG has formed after the price broke down to "unusual" price levels with a large Marubozu. We can draw the FVG as discussed {% include link.html key="trading_smc_1" text="earlier" anchor="#drawing-fair-value-gaps" newtab=true %}, and place a `sell limit order` (yellow line) inside it. The market has a strong bearish momentum, which we want to follow, so we want to short here. Whether you place the limit order at the top, middle or bottom of the FVG, depends on your concrete strategy. 

{% include image.html src="/assets/images/trading/smc-2/fvg-1.png"
   alt="Figure 1: Sell limit in the FVG"
   id="fig-fvg-1" %}

A more `aggressive` strategy would place it at the bottom. It would enter into trades more often at less favourable prices, while a `conservative` strategy placing at the top would catch much less pullbacks at much better prices. It is a matter of backtesting and optimisation to see which works best in the long run. Here, I placed the sell limit order in the middle for demonstration purposes. Let's see what happens next.

### 1.2. Placing the Stop Loss and Take Profit orders

As you can see in `Figure 2`, the price wicked up to our limit order and now we are in position. 

{% include image.html src="/assets/images/trading/smc-2/fvg-2.png"
   alt="Figure 2: Setting the SL and TP"
   id="fig-fvg-2" %}

- You can set the {% include link.html key="investopedia_sl" text="Stop Loss" %} at the top of the big Marubozu. If the price hits this level, we consider the setup failed, the market didn't continue in the initial momentum.
- Set the {% include link.html key="investopedia_tp" text="Take Profit" %} at the lowest point of the past candles. In this case we get a very nice {% include link.html key="investopedia_rr" text="Risk Reward (RR)" %} ratio of 2.

Now we are all set, we just need to sit and wait. Get some popcorn. :)

{% include image.html src="/assets/images/trading/smc-2/fvg-3.png"
   alt="Figure 3: Take Profit hit"
   id="fig-fvg-3" %}

It turned out to be a successful trade.

## 2. Trade the pullback itself

For me, this method was more intuitive than the previous one: if we expect the price to fill the FVG anyway, why not just trade it? I could have started with this, right? It can work too. Let's see an example.

Look at that massive green candle that absolutely catapulted `EURUSD` to overbought territories at `16:00 22nd August 2025`:

{% include image.html src="/assets/images/trading/smc-2/fvg-4.png"
   alt="Figure 4: Massive FVG on EURUSD 1h"
   id="fig-fvg-4" %}

### 2.1. Opening stop and closing limit orders

We can short this FVG by setting a {% include link.html key="investopedia_buy_limit_sell_stop" text="Sell Stop" %} order at the top of the FVG and a {% include link.html key="investopedia_buy_limit_sell_stop" text="Buy Limit" %} at the bottom:

{% include image.html src="/assets/images/trading/smc-2/fvg-5.png"
   alt="Figure 5: Sell Stop was hit"
   id="fig-fvg-5" %}

### 2.2. Placing the Stop Loss

As you can see in `Figure 5`, our `Sell Stop` order (depicted by the yellow line) was hit and now we are in position.
- In [2.1.](#21-opening-stop-and-closing-limit-orders) we have already placed a `Buy Limit` order at the bottom of the FVG which will act as our `Take Profit`
- Let's set the `Stop Loss` at the highest point of the past candles. This gives us a juicy `RR of 3`, see `Figure 6` below:

{% include image.html src="/assets/images/trading/smc-2/fvg-6.png"
   alt="Figure 6: Stop Loss and Take Profit placement"
   id="fig-fvg-6" %}

Let's see how the trade would have played out:

{% include image.html src="/assets/images/trading/smc-2/fvg-7.png"
   alt="Figure 7: Short Take Profit hit"
   id="fig-fvg-7" %}

As you can see, it hit our `Take Profit` quite convincingly.

## 3. Combine the previous two techniques

You can also combine the previous two techniques: 
1. Ride the short position down
2. When it hits the TP, reverse your position, and follow the market momentum upwards

Let's continue our previous example by opening a `long position` at the bottom of the FVG:

{% include image.html src="/assets/images/trading/smc-2/fvg-8.png"
   alt="Figure 8: Reversing the position into long"
   id="fig-fvg-8" %}

As described in [Use the pullback to enter](#1-use-the-pullback-to-enter),
- I placed the `Stop Loss` at bottom of the large Marubozu
- And the `Take Profit` at the `highest point after the Marubozu`
- This gives me a dream-like `RR of 6`

Let's see what happens next:

{% include image.html src="/assets/images/trading/smc-2/fvg-9.png"
   alt="Figure 9: Stop Loss hit"
   id="fig-fvg-9" %}

Oops, that didn't go so well. Had I not been so greedy, a nice `2-RR Take Profit` would have been hit, but this time there was not enough strength in the market to hit my `6 RR` dream target. It is important to note a couple of things here.
1. Losing trades are part of the game. A good trader is able to win more than they lose in the long run. (see 4. below for more details)
2. In trading the math is different from what most people are used to. Instead of `2 + 2 = 4`, you'll have `6 - 2 = 4` (and hopefully not `2 - 6 = -4`).
3. There is `no Holy Grail` in trading, and `SMC` and `FVGs` neither are. The point is to improve your chances of winning.
4. The previous points were quite clichéd, so congrats if you are still with me. You deserve a real practical one: A `large RR` is not necessarily a problem. What matters is the combination of your `average RR` and `win percentage`. For example, if you aim at an `RR of 6` and win `20%` of the time, the expectancy is `0.2 * 6 = 1.2`. This means that, on average, you earn 1.2 units for every 1 unit you risk. That’s excellent! But this also means, that four out of five trades lose, and only one wins.
5. Your net profit/loss after the two trades is still `+2` (`+3` units from the short and `-1` unit from the long), exactly what I wrote in 2.

## 4. Trading economic news

As we have seen in the {% include link.html key="trading_smc_1" text="previous post" newtab=true anchor="#fig-fvg-8" %}, we need volatility to trade. What can create more volatility (and thus FVGs) than clearly bullish/bearish news? 

A good example for such economic news is the {% include link.html key="investopedia_nfp" text="Nonfarm Payrolls (NFP)" %} which delivers information about the `US labour market` and considered an important indicator of the US economy by many traders/investors. It is dropped on the first Friday of each month at 8:30 am Eastern Time.

### 4.1. Example: Nonfarm Payrolls 3rd July, 14:30 CEST

When strong economic news shake the market, things can happen really quickly, therefore we go down to the 5 minutes timeframe.

{% include image.html src="/assets/images/trading/smc-2/fvg-10.png"
   alt="Figure 10: FVG following the NFP"
   id="fig-fvg-10" %}

As you can see in `Figure 10`, the NFP created a perfect setup for us. One single Marubozu with a large body, driving the price down to levels not seen for a long time. As always, we expect the price to fill in the gap, but it is advisable to wait for 10 minutes (2 candles as a rule of thumb) before entering a position. This is to allow the emotions to settle a bit and to let impatient traders get chopped up in both directions. >:) You don't want to be one of them. Then let's place a `Buy Stop` order at the bottom of the FVG, and a `Sell Limit` at the top:

{% include image.html src="/assets/images/trading/smc-2/fvg-11.png"
   alt="Figure 11: Entering a long position"
   id="fig-fvg-11" %}

I set the `Stop Loss` as described [previously](#22-placing-the-stop-loss). It gives me an `RR of 1.78`. If you want a higher RR, you can set your SL for example at the bottom wick of the previous green candle at `1.359`. That would give you a nice `2.25 RR`. Now let's see how the trade would have played out:

{% include image.html src="/assets/images/trading/smc-2/fvg-12.png"
   alt="Figure 12: Take Profit hit"
   id="fig-fvg-12" %}

A nice convincing win. It didn't give us much to worry about.

## Outroduction

That concludes part 2 about Fair Value Gaps. In this part, I have shown different techniques to trade FVGs:
1. Waiting for the pull back to enter at more favourable prices.
2. Trading the pullback itself.
3. Combining the two above and trading both directions.
4. Watching economic news that can give you opportunities to trade FVGs.

Feel free to experiment with these and combine them with your favourite indicators to develop your own FVG based strategies.
In the next post, I will discuss another Smart Money Concept, which is in fact one of my favourites: Order Blocks.
Stay tuned!

## Glossary
- FVG: Fair Value Gap
- NFP: Nonfarm Payrolls
- RR: Risk Reward (ratio)
- SL: Stop Loss (order)
- TP: Take Profit (order)

## Links and further reading
- {% include link.html key="trading_smc_1" text="Fair Value Gaps Part 1" %}
- {% include link.html key="investopedia_marubozu" text="Marubozu" %}
- {% include link.html key="investopedia_limit_order" text="Limit Order" %}
- {% include link.html key="investopedia_sl" text="Stop Loss (SL) order" %}
- {% include link.html key="investopedia_tp" text="Take Profit (TP) order" %}
- {% include link.html key="investopedia_rr" text="Risk Reward (RR) ratio" %}
- {% include link.html key="investopedia_buy_limit_sell_stop" text="Buy Limit vs. Sell Stop" %}
- {% include link.html key="investopedia_nfp" text="Nonfarm Payrolls (NFP)" %}