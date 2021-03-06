---
title       : Temperature Conversion App Pitch
subtitle    : 
author      : J. Stratton
job         : Developing Data Products Project
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

* Different unit systems are used in different parts of the world. 

* Some units such as yards and meters are close enough that people will be able to understand the scale if given the other unit. 

* However, most units are different enough that people who grew up using one will find the other completely unfamiliar.

* Conversion of an unfamiliar unit into a familiar one is the standard way to handle this problem. 

* This is typically done by multiplying the original units by a conversion factor that gets rid of the troublesome unit. 

* For example, converting from meters to yards requires multiplying by a conversion factor of 1.09 m/yd. 

--- .class #id 

## Temperature Conversion

* Unfortunately, temperature conversion involves algebra that is more involved: 

$$[^\circ C] = \frac{5}{9}([^\circ F] - 32)$$

$$[^\circ F] = \frac{9}{5} [^\circ C] - 32$$

* These equations are difficult to memorize and unwieldy without a calculator

* Using an app would be much more convenient than looking up and entering these equations

* Errors should be lower using the app due to eliminating the need to enter the formulas each time

--- .class #id

## Proof of Concept Temperature Converter

* Writing a program to convert temperatures is a trivial task

* For example, we can create a temperature conversion table in R


```r
temperatures_in_fahrenheit <- seq(from = 32, to = 212, length = 4)
temperatures_in_celsius <- (temperatures_in_fahrenheit - 32)*5/9
conversion_table <- data.frame(temperatures_in_fahrenheit, temperatures_in_celsius)
colnames(conversion_table) <- c("Degrees Fahrenheit", "Degrees Celsius")
conversion_table
```

```
##   Degrees Fahrenheit Degrees Celsius
## 1                 32         0.00000
## 2                 92        33.33333
## 3                152        66.66667
## 4                212       100.00000
```

* An app would include user inputs so that the user doesn't need programming skills

--- .class #id

## Conclusion

* Unit conversion is important when traveling and working overseas

* Temperature conversions are particularly difficult conversions to memorize

* Using an app is both easier for the user and more accurate

* A smartphone app or webapp would enable users to carry out temperature conversions anywhere
