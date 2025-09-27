---
title: "Smart Money Concepts - Part 1: Fair Value Gaps"
date:   2025-08-31 09:00:00 +0200
published: false
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
1. Losing trades are part of the game. A good trader is able to win more than they lose in the long run. (see 4. for more details)
2. In trading the math is different from what most people are used to. Instead of `2 + 2 = 4`, you'll have `6 - 2 = 4`, and hopefully not `2 - 6 = -4`.
3. There is `no Saint Grail` in trading, and `SMC` and `FVGs` neither are. The point is to improve your chances of winning.
4. The previous points were quite clichéd and boring, but here is a practical one. A `large RR` is not necessarily a problem. What matters is the combination of your `average RR` and `win percentage`. For example, if you aim at an `RR of 6` and win `20%` of the time, the expectancy is `0.2 * 6 = 1.2`. This means that, on average, you earn 1.2 units for every 1 unit you risk. That’s excellent! But this also means, that four out of five trades lose, and only one wins.
5. Your net profit/loss after the two trades above is still `+2` (`+3` units (from the short) and `-1` unit (from the long)), exactly what I wrote in 2.

### 4. Trading economic news

As we have seen in the previous post(link!), we need volatility to trade. What can create more volatility (and thus FVGs) than clearly bullish/bearish news? 

A good example for such economic news is the `Nonfarm Payrolls (NFP)` which delivers information about the `US labour market` and thus the health of the whole economy. It is dropped on the first Friday of each month at 8:30 am Eastern Time. (You can read more about the {% include link.html key="investopedia_nfp" text="NFP" %} here.)

#### 4.1. Example: Nonfarm Payrolls 3rd July, 14:30 CEST

When strong economic news shake the market, things can happen really quickly, therefore we go down to the 5 minutes timeframe.

![Figure 18: FVG following the NFP](/assets/images/trading/smc-1/fvg-18.png)
{:.text-center}
*Figure 18: FVG following the NFP*
{:.text-center}

As you can see in `Figure 18`, the NFP created a perfect setup for us. One single Marubozu with a large body, driving the price down to levels not seen for a long time. As always, we expect the price to fill back the gap, but it is advisable to wait for 10 minutes (2 candles) before entering a position. This is to allow the emotions to settle a bit and to let impatient traders get liquidated both directions. >:) Then let's place a `Buy Stop` order at the bottom of the FVG, and a `Sell Limit` at the top:

![Figure 19: Entering a long position](/assets/images/trading/smc-1/fvg-19.png)
{:.text-center}
*Figure 19: Entering a long position*
{:.text-center}

I set the `Stop Loss` as described in the previous post(link!). It gives me an `RR of 1.78`. If you want a higher RR, you can set your SL for example at the bottom wick of the previous green candle at `1.359`. That would give you a nice `2.25 RR`. Now let's see how the trade would have played out:

![Figure 20: Take Profit hit](/assets/images/trading/smc-1/fvg-20.png)
{:.text-center}
*Figure 20: Take Profit hit*
{:.text-center}

A nice convincing win. It didn't give us much to worry about.

## Glossary

- BTC: Bitcoin (digital asset)
- FVG: Fair Value Gap
- RSI: Relative Strength Index (indicator)
- SL: Stop Loss (order)
- SMC: Smart Money Concepts
- PoC: Point of Control (see VP)
- RR: Risk Reward Ratio
- TA: Technical Analysis
- TP: Take Profit (order)
- VP: Volume Profile (indicator)

- NFP: Nonfarm Payrolls

## Links and further reading
- Volume Profile
- RSI
- Marubozu
- SL, TP
- RR
- Buy Stop, Sell Limit
- {% include link.html key="investopedia_nfp" text="Nonfarm Payrolls (NFP)" %}
- {% include link.html key="investopedia_tp" text="Take Profit (TP) order" %}
- {% include link.html key="investopedia_sl" text="Stop Loss (SL) order" %}