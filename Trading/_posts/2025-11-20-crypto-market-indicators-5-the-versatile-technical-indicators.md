---
title: "Crypto Market Indicators - Part 5: The Versatile Technical Indicators!"
date:   2025-11-20 08:00:00 +0100
published: true
excerpt: Technical indicators can be applied from very high-level charts to intra-day trading and everything in between
toc: true
toc_label: "Table of Contents"
toc_sticky: true
categories:
  - "Crypto Market Indicators"
tags:
  - "Bitcoin"
  - "Crypto Market"
  - "Altcoins"
  - "Altcoin Season"
  - "Indicators"
  - "Relative Strength Index"
  - "RSI"
---
{% include trading-disclaimer.html %}

## 1 Introduction

This is part 5 in my `Crypto Market Indicators` series, loosely related to
- {% include link.html key="trading_puell_multiple" text="Part 1: Puell Multiple" %}
- {% include link.html key="trading_btc_price_prediction" text="Part 2: Bitcoin Price Prediction" %}

Closely related to 
- {% include link.html key="trading_dxy_and_btc_d" text="Part 3: US Dollar Index and Bitcoin Dominance" %}
- {% include link.html key="trading_pi_cycle_top_and_mvrv_z_score" text="Part 4: Pi Cycle Top and MVRV Z-score" %}
- {% include link.html key="indicator_cheat_sheet" text="Part 6: Indicator Cheat Sheet" %}

as they are all outcomes of the same research effort.

In this series, I follow a top-down hierarchy to discuss indicators. While `Part 3` discussed {% include link.html key="trading_dxy_and_btc_d" text="global macro and crypto indicators" %}, {% include link.html key="trading_pi_cycle_top_and_mvrv_z_score" text="Part 4" %} focused on Bitcoin (BTC) related ones, and this one will explore `technical indicators`, which are versatile enough to be applied from very high-level charts to intra-day trading and everything in between.

## 2 Technical indicators

Technical indicators are not specific to any market or chart. They are generic tools that can be applied to different charts to help you interpret them. They also have parameters that you can change to tailor them for your needs. They work because their values are derived from the underlying market mechanics, which in turn are driven by trading psychology (you can read more about this in my {% include link.html key="trading_smc_1" text="Smart Money Concepts post" anchor="#relationship-to-indicators" %}). There is also a self fulfilling prophecy aspect to them. This is especially true if you use the most common settings, which are watched by everyone. Therefore, in my opinion, when it comes to technical indicators, the simpler and more obvious they are, the better.

### 2.1 Relative Strength Index (RSI)

The RSI is a simple momentum gauge whose values fall between `0` and `100`. It shines in sideways markets. The most common parameter settings are a `length` of `14` with an `undervalued threshold` of `30` and an `overvalued threshold` of `70`. You can visit {% include link.html key="investopedia_rsi" text="Investopedia" %} for further reading.

#### 2.1.1 On the monthly

On the monthly chart, RSI has been a good indicator of tops and bottoms (see [Figure 1](#fig-1) and [Figure 2](#fig-2)) with the following parameters:
- *Length*: 14
- *Overvalued*: 80-90 range: top signal
- *Undervalued*: 40-50 range: bottom signal

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-1.png"
   alt="Figure 1: BTC monthly with RSI top and bottom signals"
   id="fig-1" %}

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-2.png"
   alt="Figure 2: Ethereum (ETH) monthly with RSI top and bottom signals"
   id="fig-2" %}

In the pictures above, I set the RSI `upper band` to `90`, and the `lower band` to `50`. As you can see, these settings produced pretty good quality signals, with the only caveat on [ETH's chart](#fig-2) marked with a yellow circle, which was the real top, but didn't reach `90` on the RSI. However, it was within the 80-90 range I mentioned above.

### 2.2 20-period Simple Moving Average (MA)

Note: The guys at `Coin Bureau`, whose videos were my main source for this article, use the `Bollinger Bands (BB) Moving Average` for this purpose, but it really is just a `20-period Simple Moving Average (MA)`, so I use the latter instead to keep the charts cleaner.
{: .notice}

Note 2: Some people (including me) like to use `period 21` instead of `20` for their moving averages because `21` is a Fibonacci number. However, the difference between the two is not significant. In this article I will stick to `period 20` moving averages.
{: .notice}

#### 2.2.1 On the monthly

The `20-month MA` can help you decide if the given chart is in a bull or bear market. It can be applied to different charts, see below:

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-3.png"
   alt="Figure 3: BTC and 20-MA, monthly"
   id="fig-3" %}

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-4.png"
   alt="Figure 4: TOTAL and 20-MA, monthly"
   id="fig-4" %}

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-5.png"
   alt="Figure 5: OTHERS and 20-MA, monthly"
   id="fig-5" %}

When the chart is above its 20-month MA, it is in bull market territory, when it is below it, it is in bear market territory. As you can see, [BTC (Figure 3)](#fig-3) and [TOTAL (Figure 4)](#fig-4) (which are strongly correlated charts) are well above their MAs. For example, BTC is at `101,877`, while its MA is at `88,159`. This means, that a pullback to around `88k` by BTC would still be technically in a bull market.

On the *other* hand (pun intended), [OTHERS (Figure 5)](#fig-5) at `245 B USD`, is struggling with its MA at `258.64 B USD`. It is technically in bear market territory, which is not good news for alts. It has seen massive wicks under the MA, and in November it is still under it, however, in my opinion, it doesn't look hopeless.

#### 2.2.2 On the weekly

Although the `20-month MA` is a reliable way to tell if your crypto is in a bull or bear market, it comes with the cost of significant latency. MAs are already lagging indicators, let alone on the monthly chart, which means that by the time your crypto closes below its 20-month MA, it has already dropped significantly. We can improve this by using the `20 MA on the weekly` chart and combining it with the aforementioned [RSI](#21-relative-strength-index-rsi):
- If the RSI on the monthly has hit the 80-90 overbought territory, and
- A key level breaks on the weekly chart, such as the 20 MA, the top is likely in, the bear market is about to start.

**Question**: Why don't we simply sell, when RSI hits the 80-90 level on the monthly?

**Answer**: because the RSI can stay in the overbought territory for quite a while. If you sell as soon as it signals overbought, it may be too early, and the price may keep climbing up. Possible solutions to mitigate this problem:
1. `Dollar Cost Average (DCA)` out: don't close the whole position at once, but take profits gradually. It is almost always a good idea
2. Sell, when the RSI pulls back to neutral territory: again, this could be a bit late, if you look only at the monthly chart
3. Check signals on the lower timeframe, like the `20-week MA`, as we are discussing here

Let's take a look at BTC's 2021 peak marked with a red circle in [Figure 6](#fig-6). It is the last time when RSI went above 90, the first peak of the 2021 double top. Had you waited until the monthly close below the 20-month MA, you would have sold at `37,648 USD` (see price label), 13 months later!

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-6.png"
   alt="Figure 6: BTC exit based on 20-month MA"
   id="fig-6" %}

However, if you had exited based on the 20-week MA seen in [Figure 7](#fig-7), you would have sold at `46,456 USD` 6 weeks later. That's a huge difference, both in price and time!

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-7.png"
   alt="Figure 7: BTC exit based on 20-week MA"
   id="fig-7" %}

### 2.3 Short-term trading

So far we have discussed indicators that help you navigate the broader macro backdrop and the crypto market as a whole. These can be very helpful when making longer term investments. In this section, I will discuss how technical indicators can help you in short to mid-term trading.

#### 2.3.1 200-day Moving Average (MA)

The 200-day MA is a simple, almost boring indicator, but don't let it fool you, it works well. 
- It is the average price of an asset over the last 200 days plotted as a line. 
  - Above it: bulls are dominating 
  - Below it: bears are in control
- Crypto markets are driven by momentum and the MA measures it

##### 2.3.1.1 How to use it?

1. Keep an eye on the project(s) that you are interested in. It is advisable that it has:
  - A strong team shipping real products
  - A large community
  - A strong narrative that is easy to understand
2. If a coin has been under its 200-MA for a while, and closes a full day above it, it can be a potential buying opportunity, but it needs confirmation:
  - If the next couple of days stay above the MA and trend up, that's a strong indicator of bullish momentum
  - If the price is rejected for 2-3 consecutive days, the momentum is not there yet -> stay away
3. A close above the 200-MA has to be examined in context. It needs a real fundamental catalyst, for example:
  - A new token launch
  - Tokenomics revamp
  - Surge in user growth
  - Stable coin growth: important indicator! More stable coins: more buying power. Can support the momentum
4. When to ignore the close above 200-MA?
  - When fundamentals don't match up with the technicals, e.g.:
         - Large multi-month supply unlock
         - Prominent team member leaving the project
         - Backdrop from BTC and ETH: consistent ETF outflows -> not good to buy

Put together:
  1. The 200-MA gives the signal that the downtrend might be over
  2. Catalysts and flows tell you if it is worth stepping in

-> This sounds simple, but it is not easy. You need patience. Most market participants lack it.

#### 2.3.2 Sideways markets

In the [200-day MA](#231-200-day-moving-average-ma) section we discussed trending markets, but sideways markets are a different beast, therefore you need a different set of tools to trade them successfully.

Many traders avoid them entirely because there is a high chance that you get chopped up and lose money. It is a completely valid approach. However, if you still want to trade, keep in mind:
1. This is a risky market environment, use small positions, while you sit on your main portfolio
2. You will need tools suited for these conditions, so read on!

##### 2.3.2.1 Relative Strength Index (RSI)

Again? Yes, we summon our old friend again. As we have seen [earlier](#21-relative-strength-index-rsi), the RSI shines in sideways markets.

On the daily timeframe, you can trade like this:
1. Make sure that the market is moving sideways. You can do this by determining clear support and resistance levels, see [Figure 8](#fig-8)
2. If price is near a support, and RSI cools towards the lower band (30-40 or lower) we look for a `bounce` to get in
3. If price is near resistance, and RSI goes up (60-70 or higher), we look for a `rejection` to short

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-8.png"
   alt="Figure 8: BTC sideways market and RSI trading, daily"
   id="fig-8" %}

In [Figure 8](#fig-8) you can see some examples of this concept. Green marking long entries, red marking a short entry. You can also see the corresponding RSI value. The `bounce` or `rejection` are always a big bodied bullish/bearish candle in the chart.

Here, context is key: **it must be a sideways market**. RSI is not so useful in trending markets. It can stay overbought or oversold for a long time.

##### 2.3.2.2 Bollinger Bands (BB)

Bollinger Bands (BB) are elastic guardrails around a simple MA. They expand when volatility rises, and tighten when it lowers. The most common settings:
- Middle band: `20 MA` (as I mentioned [earlier](#22-20-period-simple-moving-average-ma))
- Upper and lower bands: `2 standard deviations` away from the middle band

Most of the time, the price moves between the two outer bands. When it touches one of them, it often reverts towards the middle (mean reversion). 

When the two outer bands are squeezing together, a breakout can be expected

You can read more about the BB on {% include link.html key="investopedia_bollinger_bands" text="Investopedia" %}.

Let's have a look at our previous example, but now utilising Bollinger Bands:

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-9.png"
   alt="Figure 9: BTC sideways market and BB, daily"
   id="fig-9" %}

In [Figure 9](#fig-9) you can see the following cases:
- 1: The BB is squeezing together, and as mentioned before, it is followed by a breakout. This time to the down-side (two large red candles)
- 2, 5, 7, 11: pretty good long entries, 10 as well, if you manage to catch the wick
- 4: a potentially losing long (depending on your {% include link.html key="investopedia_sl" text="Stop Loss" %} (SL))
- 3, 9: pretty good short signals
- 6: a decent short signal, if the initial upward movement doesn't stop you out
- 8: a potentially losing short (depending on your SL)

As you can see, the BB seem to work pretty well, at least according to this admittedly small sample.

##### 2.3.2.3 Combining the RSI and BB

Combining the two previous indicators is a really powerful approach in sideways markets:
- RSI heating up over 70: overbought territory + price touches the upper band -> good spot to sell
- RSI cooling down under 30: oversold + price touches the lower band -> time to buy

Let's see our example again:

{% include image.html src="/assets/images/trading/crypto-market-indicators-5/fig-10.png"
   alt="Figure 10: BTC sideways market, RSI and BB signals, daily"
   id="fig-10" %}

As you can see in [Figure 10](#fig-10), we got much less, but much better quality signals:
- 1, marked with yellow circle is not a valid signal, because the market is not moving sideways. It is in a strong uptrend. It ran to an All-Time High (ATH).
- 2, 4: touch the `BB`, and they come close on the `RSI`, but don’t quite reach it. Regardless, `2` worked out pretty well, and whether `4` will work out or not, I don't know at the time of writing. It will be interesting to see. (Opening on these signals would mean relaxing the rules of the strategy which may or may not be acceptable. Only backtesting could tell.)
- 3: the only clean signal, that fulfills all the criteria: `sideways market` + `touches the BB` + `RSI at least 70`.

## 3 Conclusion

In this post we have learned about some common technical indicators: `Moving Averages (MA)`, `Relative Strength Index (RSI)` and `Bollinger Bands`. We have seen how they work on long, mid and short-term timeframes as well. Their versatility and effectiveness are thanks to the fact that they all measure the market sentiment in some way, and due to their simplicity many traders watch them, strengthening their self-fulfilling property. 

This concludes my research on crypto market indicators, but there is still one post remaining. In the {% include link.html key="indicator_cheat_sheet" text="next post" %} I will publish a cheatsheet that summarises briefly each indicator discussed in this series. It will give you a quick overview and the most important signals they can provide, and my final thoughts about this topic. Thanks for reading, stay tuned!

## 4 Glossary
- Alts: Altcoins, alternative coins, all cryptos, except for BTC
- ATH: All-Time High
- BB: Bollinger Bands
- BTC: Bitcoin
- DCA: Dollar Cost Average
- ETF: Exchange-Traded Fund
- ETH: Ethereum
- MA: Moving Average, often Simple Moving Average (SMA)
- RSI: Relative Strength Index
- SL: Stop Loss

## 5 Links and further reading
- {% include link.html key="trading_puell_multiple" text="Part 1: Puell Multiple and Its Improvements" %}
- {% include link.html key="trading_btc_price_prediction" text="Part 2: Bitcoin Price Prediction" %}
- {% include link.html key="trading_dxy_and_btc_d" text="Part 3: US Dollar Index and Bitcoin Dominance" %}
- {% include link.html key="trading_pi_cycle_top_and_mvrv_z_score" text="Part 4: Pi Cycle Top and MVRV Z-score" %}
- {% include link.html key="indicator_cheat_sheet" text="Part 6: Indicator Cheat Sheet" %}
- {% include link.html key="investopedia_rsi" text="Relative Strength Index (RSI)" %}
- {% include link.html key="investopedia_bollinger_bands" text="Bollinger Bands (BB)" %}
- {% include link.html key="investopedia_sl" text="Stop Loss (SL)" %}

## 6 Sources
- {% include link.html key="youtube_cb_the_crypto_bull_market_is_ending" text="The Crypto Bull Market is Ending! (Youtube)" %}
- {% include link.html key="youtube_cb_top_crypto_indicators_that_actually_work" text="Top Crypto Indicators That Actually Work (Youtube)" %}
