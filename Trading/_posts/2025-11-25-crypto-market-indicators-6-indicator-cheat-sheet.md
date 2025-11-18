---
title: "Crypto Market Indicators - Part 6: Indicator Cheat Sheet"
date:   2025-11-25 06:00:00 +0100
published: true
excerpt: A quick summary of each indicator discussed in previous parts to provide you the most important information for practical usage
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
  - "US Dollar Index"
  - "DXY"
  - "Bitcoin dominance"
  - "BTC.D"
  - "TOTAL"
  - "TOTAL2"
  - "TOTAL2ES"
  - "OTHERS"
  - "STABLE.C"
  - "MVRV Z-score"
  - "Moving Average"
  - "MA"
  - "SMA"
  - "Bollinger Bands"
  - "BB"
---
{% include trading-disclaimer.html %}

## 1 Introduction

This is part 6 in my `Crypto Market Indicators` series, loosely related to
- {% include link.html key="trading_puell_multiple" text="Part 1: Puell Multiple" %}
- {% include link.html key="trading_btc_price_prediction" text="Part 2: Bitcoin Price Prediction" %}

Closely related to 
- {% include link.html key="trading_dxy_and_btc_d" text="Part 3: US Dollar Index and Bitcoin Dominance" %}
- {% include link.html key="trading_pi_cycle_top_and_mvrv_z_score" text="Part 4: Pi Cycle Top and MVRV Z-score" %}
- {% include link.html key="the_versatile_technical_indicators" text="Part 5: The Versatile Technical Indicators!" %}

## 2 Indicators

This post summarises each indicator discussed in {% include link.html key="trading_dxy_and_btc_d" text="Part 3" %}, {% include link.html key="trading_pi_cycle_top_and_mvrv_z_score" text="Part 4" %} and  {% include link.html key="the_versatile_technical_indicators" text="Part 5" %} concisely. You can use it as a quick reference to look up `what the indicator does`, `how to use it` and `what signals to look for`.

## 3 The cheat sheet

Without further ado, here it is. I hope it will be useful for you!

### 3.1 US Dollar Index (DXY)
- US Dollar Index: USD's strength against other major currencies
- When DXY goes up, everything else goes down
- When DXY goes down, everything else goes up

Medium term downtrend:
1. *First leg down*: crypto rally led by BTC
2. *DXY chops for a while*: crypto consolidates
3. *Second leg down*: altcoin season - watch for this in 2025 Q4

- More details {% include link.html key="trading_dxy_and_btc_d" text="here" anchor="#211-us-dollar-index-dxy-dixie" %}

### 3.2 Bitcoin dominance (BTC.D)
- The ratio between `BTC's market cap` and the `total crypto market cap` expressed as a percentage. 
- When BTC.D is rising, the market favours BTC
- When falling, the market prefers altcoins or stable coins

- Every altseason has been preceded by a significant drop in BTC.D. Levels to watch (based on history):
    1. *Mid 50s*: altcoins start to wake up
    2. *Around 40*: altcoins skyrocket

- More details {% include link.html key="trading_dxy_and_btc_d" text="here" anchor="#221-btc-dominance" %}

### 3.3 TOTAL

- Total market cap of the `top 125 cryptos`.
- More details {% include link.html key="trading_dxy_and_btc_d" text="here" anchor="#22141-total" %}

### 3.4 TOTAL2

- Removes BTC from [TOTAL](#33-total): total crypto market cap without BTC.
- More details {% include link.html key="trading_dxy_and_btc_d" text="here" anchor="#22142-total2" %}

### 3.5 TOTAL2ES

- Removes stablecoins from [TOTAL2](#34-total2). (ES = Excluding Stablecoin)
- Removes BTC and stablecoins from [TOTAL](#33-total)
- More details {% include link.html key="trading_dxy_and_btc_d" text="here" anchor="#22143-total2es" %}

### 3.6 OTHERS

- Removes top 10 and USDT, USDC from [TOTAL](#33-total): `mid and small caps`.
- More details {% include link.html key="trading_dxy_and_btc_d" text="here" anchor="#22144-others" %}

### 3.7 STABLE.C

- Total `Stable Coins Market Cap`.
- This is dry powder waiting to be deployed on the market -> a growing stable market cap is a bullish signal
- More details {% include link.html key="trading_dxy_and_btc_d" text="here" anchor="#22145-stablec" %}

### 3.8 Large cap-BTC pairs

- Such as `ETHBTC`, `SOLBTC`, `XRPBTC`, `BNBBTC`. Can serve as early indicators that the alt-segment is gaining momentum.
- Look for bottoming signs, reversal patterns.
- More details {% include link.html key="trading_dxy_and_btc_d" text="here" anchor="#22146-large-cap-btc-pairs-ethbtc-solbtc" %}

### 3.9 MVRV Z-score

- It shows how much profit/loss BTC holders are currently sitting on.
- Historically (2017, 2021 cycle tops):
  - A high Z-score (above 6) meant lots of unrealised profit -> cycle top
  - A low Z-score (below 0) meant holders are in deficit -> bear market bottoms
- New market conditions (2025 and after):
  - We cannot expect so extreme high values any more. ETFs, DATs buying the dips, smoothing out the Z-score.

> 1. If Z-score starts ripping higher quickly, while ETFs and DATs are not buying -> probably overvalued
> 2. If Z-score cools off, while the big players are buying, it means a healthy market condition. The market cools, and is digesting gains
> 3. The Z-score would still be a clear bottom signal in the bear market. Demand will be close to zero.

- More details {% include link.html key="trading_pi_cycle_top_and_mvrv_z_score" text="here" anchor="#22-mvrv-z-score" %}

### 3.10 Relative Strength Index (RSI)

On the monthly chart, RSI has been a good indicator of tops and bottoms with the following parameters:
- *Length*: 14
- *Overvalued*: 80-90 range: top signal
- *Undervalued*: 40-50 range: bottom signal
- More details {% include link.html key="the_versatile_technical_indicators" text="here" anchor="#21-relative-strength-index-rsi" %}

On the daily, for trading sideways markets:
1. Make sure that the market is moving sideways. You can do this by determining clear support and resistance levels.
2. If price is near a support, and RSI cools towards the lower band (30-40 or lower) we look a `bounce` to get in
3. If price is near resistance, and RSI goes up (60-70 or higher), we look for a `rejection` to short

- More details {% include link.html key="the_versatile_technical_indicators" text="here" anchor="#2321-relative-strength-index-rsi" %}

### 3.11 20-period Simple Moving Average (MA)

- Monthly:
  - Determines if the chart is in a bear or bull market:
    - If the chart is above its 20-month MA -> bull market
    - If the chart is below its 20-month MA -> bear market
- Weekly: signals on the monthly are reliable, but come very late -> use the [monthly RSI top signal](#310-relative-strength-index-rsi) and the 20-week MA to leave the sinking ship:
  - Monthly RSI has hit the 80-90 range and
  - Price closed below 20-week MA -> the top is likely in, bear market is starting, run for the hills!
- More details {% include link.html key="the_versatile_technical_indicators" text="here" anchor="#22-20-period-simple-moving-average-ma" %}


### 3.12 200-day Moving Average (MA)

- Measures market momentum on the daily chart:
  - Above it: bulls are dominating 
  - Below it: bears are in control
- Usage:
  1. When the price has been under the 200-MA and then closes above it: it signals that the downtrend might be over
  2. Check the asset's fundamentals if they support it
    - If they do, enter
    - If not, stay away
- More details {% include link.html key="the_versatile_technical_indicators" text="here" anchor="#231-200-day-moving-average-ma" %}

### 3.13 Bollinger Bands (BB)

- The BB consist of three bands: `lower band`, `middle band` and `upper band`
- They expand when volatility rises, and tighten when it lowers
- Most of the time, the price moves between the two outer bands. When it touches one of them, it often reverts towards the middle (mean reversion). 
- When the two outer bands are squeezing together, a breakout can be expected

- More details {% include link.html key="the_versatile_technical_indicators" text="here" anchor="#2322-bollinger-bands-bb" %}

### 3.14 Pi Cycle Top

- Combination of two moving averages:
  - `111 day MA` (fast)
  - `2 * (350 day MA)` (slow)
- When the fast line crosses above the slow line it signals an overvalued condition -> local top
- Combine it with other signals to determine the real top:
  - Vertical candles
  - Euphoric sentiment
- More details {% include link.html key="trading_pi_cycle_top_and_mvrv_z_score" text="here" anchor="#21-pi-cycle-top" %}

### 3.15 Bollinger Bands (BB) + RSI strategy

- Combining the BB and RSI on sideways markets can be really effective:
- RSI heating up over 70: overbought territory + price touches the upper band -> good spot to sell
- RSI cooling down under 30: oversold + price touches the lower band -> time to buy

- More details {% include link.html key="the_versatile_technical_indicators" text="here" anchor="#2323-combining-the-rsi-and-bb" %}

## 4 Honorable mentions

I have come across these indicators during my research, and they all looked very interesting and useful. At this time I haven't done a deep dive into them, but I encourage you to do your own research. They can be useful tools in your arsenal:

- ETF flows
- Altcoin Season indicator
- Fear and greed index
- M2 Money Supply

## 5 Conclusion

In `Part 3 - 5` in this series we have discussed quite a few indicators. They all fall in either the `macro` or `technical` category. I barely scratched the surface of `fundamental analysis`, and there are other techniques too that I didn't explore: `news analysis`, `sentiment analysis`. These can be worth watching too. However, it is important not to get overwhelmed by information. Pick a few (I would say 3-4) that you like and watch them closely. The more you try to analyse, the more time and effort it takes, and the more likely it leads to decision paralysis. 

`Macro`, `technical`, `fundamental`, `news` and `sentiment` analysis can all be considered bluntly "indicators". It can be a wise choice to pick your indicators so that you cover more of these categories, but what's more important is to choose the ones that resonates with you the most. I, personally, like the `macro` and `technical` ones, that is why I discussed them in this post, but there is nothing wrong with the others either.

No matter what indicators and signals you watch, you are unlikely to hit the exact top. The point is to increase your market awareness and chances to find good exit prices. You don't need to be perfect.

That's all I had to say this time. Now it's your turn. Which indicators do you prefer? Do you think the top is already in? Do you think there will be an altseason? 

## 6 Glossary
- Alts: Altcoins, alternative coins, all cryptos, except for BTC
- BB: Bollinger Bands
- BTC: Bitcoin
- DAT: Digital Asset Treasury
- DXY: US Dollar Index
- ETF: Exchange-Traded Fund
- ETH: Ethereum
- MA: Moving Average, often Simple Moving Average (SMA)
- MVRV Z-score: 
  - MV: Market Value (current market cap of BTC)
  - RV: Realised Value: (the value at which BTC holders bought their BTC originally)
  - Z-score: a standardised value calculated from MV and RV
- RSI: Relative Strength Index
- SMA: Simple Moving Average

## 7 Links and further reading
- {% include link.html key="trading_puell_multiple" text="Part 1: Puell Multiple and Its Improvements" %}
- {% include link.html key="trading_btc_price_prediction" text="Part 2: Bitcoin Price Prediction" %}
- {% include link.html key="trading_dxy_and_btc_d" text="Part 3: US Dollar Index and Bitcoin Dominance" %}
- {% include link.html key="trading_pi_cycle_top_and_mvrv_z_score" text="Part 4: Pi Cycle Top and MVRV Z-score" %}
- {% include link.html key="the_versatile_technical_indicators" text="Part 5: The Versatile Technical Indicators!" %}
- {% include link.html key="investopedia_rsi" text="Relative Strength Index (RSI)" %}
- {% include link.html key="investopedia_bollinger_bands" text="Bollinger Bands (BB)" %}
- {% include link.html key="investopedia_sl" text="Stop Loss (SL)" %}

## 8 Sources
- {% include link.html key="youtube_cb_crypto_cycle_top_strategy" text="Crypto Cycle Top Strategy (Youtube)" %}
- {% include link.html key="youtube_cb_the_crypto_bull_market_is_ending" text="The Crypto Bull Market is Ending! (Youtube)" %}
- {% include link.html key="youtube_cb_top_crypto_indicators_that_actually_work" text="Top Crypto Indicators That Actually Work (Youtube)" %}
- {% include link.html key="youtube_cb_q4_crypto_surge_incoming" text="Q4 Crypto Surge Incoming? (Youtube)" %}
- {% include link.html key="youtube_cb_no_alt_season" text="No Altcoin Season!? Crypto Bull Market OVER!? (Youtube)" %}
- {% include link.html key="wikipedia_dxy" text="US Dollar Index (DXY, \"Dixie\")" %}
- {% include link.html key="bestbrokers_usd_global_share" text="US Dollar Share of Global Currency Reserves" %}
- {% include link.html key="coinmarketcap" text="Cryptos by market cap" %}
- {% include link.html key="coinglass_mvrv_z_score" text="MVRV Z-score" %}