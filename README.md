## Time Series Analysis
Time series is an ordered set of points that consists of some valuble data recorded over a period of time. Usually it is calculated in 
successive intervals of time of same length. Time series are often plotted as line charts or scatter plots which are useful for studying
of the recorded data, predict the trends and try to analyse the future in the same fields. Time series is used in various applications 
across various domains which include the likes of weather forecasting, stocks, signal processing, pattern recognition and astronomy.

In order to analyse the time series and the associated data, we have a few models which represent various forms. The three main models
which help us to model the time series are:
 - AR (Auto Regressive) Model: This model represents that the output variable linearly depends on the past values of the model.
 - MA (Moving Average) Model: This model represents that the output variable linearly depends on the current and past values of the model.
 - ARMA (Auto Regressive Moving Average) Model: This is a combination of both AR and MA models where AR represents that the current 
 variable reverts back to the past values, and MA represents modelling of error terms(difference of prediction and actual observed values) 
 occured over the past.
 
 Many time-series that are observed or predicted with these models often display seasonality, which mean the occurence of periodic
 fluctuations. Example, sales often go high during holiday season rather than the rest of the year. So we can observe an upward trend in 
 the data and a raise in the plot when compared to the rest of the year. The presence of seasonality should be integrated into the time 
 series model, which helps in a better understanding of the impact of seasonality for a component. 
 
 This repository consists of matlab code files that work on understanding and plotting the time series data into the properly fitting models
 like AR, MA, ARMA and also analyses for the seasonality and modelling it.
 
 
