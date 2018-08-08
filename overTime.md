---
title: "Trends in Educational Attainment"
date: 'March 20, 2018'
output: word_document
---

\newline \newline \newline


\newline \newline \newline



\newline \newline \newline


## Data Notes

- Years 2008- 2016
- Non-institutionalized population
- Ages 25-64
- Excludes Puerto Rico
- Race/Ethnicity: If Respondent indicated Hispanic, marked as Hispanic (i.e. Black Hispanic=Hispanic)

## Trend Methodology

### Growth
"Growth" is just the difference between 2016 and 2008. It only uses
data from those two years.

### Trends
A "Trend" in this document is a linear regression coefficient,
regressing the measure of attainment on a linear year variable.
True trends are unlikely to be linear; however, the coefficient from
the linear model can still be interpreted as the average linear change
over the course of the study period (i.e. 2008-2016).
In particular, positive coefficients indicate increasing trends, on average---this
would not rule out plateaus or or decreasing trends over part of the
study period---it refers only to overall averages.

Age is a strong predictor of educational attainment, and changes in
the age composition of the population may induce changes in average
educational attainment, even absent policy relevant effects.
The "age adjusted trends," or "Trend (Adj)" reported here accounts for
the age composition by including age fixed effects in the linear
models.
Since age predicts educational attainment, in many cases this has the
effect of reducing residual error and increasing precision, even if
age compositions remained constant.

To estimate a trend in, say, high school completion, we first
estimated average completion overall and within each age category in each study
year, along with standard errors.
These estimates and standard errors used the survey weights and
replication weights provided in the ACS.
Then, we estimated weighted least squares models with these averages
as data, and the reciprical of the squared standard error as weights.
To estimate unadjusted trends, we used overall averages, and to to
estimate adjusted trends, we used age-specific averages.

### Multiplicity Adjustment and Hypothesis Tests
Each estimate in this report is accompanied by an 95% margin of error,
denoted with a $\pm$ symbol.
These, combined with the estimates themselves, define 95% confidence
intervals for the appropriate population quantity.
For instance, we estimate that in 2016
80.9% of deaf females had
attained a high school diploma, with a margin of error of
1.05 percentage
points.
Therefore, a confidence interval for the true percentage of female
deaf Americans with a high school diploma in 2016 is
(79.9, 82).
These intervals are not adjusted for multiplicity; therefore, we may assume that
roughly 95% of them are "correct," in
that they include the true population parameter.

We also conducted a series of explicit hypothesis tests, testing for
the existance (and direction) of age-adjusted linear trends over time for subgroups
of deaf Americans, and within-subgroup differences in trends between
deaf and hearing Americans.
We tested hypothesis about *only* age-adjusted trends; though we
estimated non-adjusted trends, we did not conduct explicit hypothesis
tests for them.

We corrected these hypothesis tests for multiplicity with the
following hierarchical procedure.
First, the tests for the existance of within-subgroup trends were adjusted
with the Hochberg procedure (Hochberg 1988), which assumes that all of
the hypothesis tests are either independent or positively
correlated---a reasonable assumption in this context.
If the null hypothesis of no trend was rejected at a given level for a
given deaf subgroup, we also tested for a difference in trends over
time between deaf and hearing Americans of that subgroup, using the
Hochberg-adjusted level from the first stage.
(In other words, a "fixed sequence procedure" was nested within each
subgroup.)
<!--Finally, we adjusted for having tested both adjusted and unadjusted
trends with the Bonferonni correction, dividing all levels by two.-->
We conducted this procedure using three different levels: null hypotheses
rejected at the 0.05 level are denoted with a \*, at the 0.01 level
with \*\*, and at the 0.001 level with \*\*\*.
This overall procedure controls the familywise error rate, so the
probability of incorrectly rejecting any null hypotheses tested in
this document at the 0.05 level, say, is at most 5%.

Note that we did not test for trends among hearing Americans, and did
not test hypotheses about attainment in any given year or about growth
from 2008 to 2016.

Since the hypothesis tests were multiplicity-adjusted and the
confidence intervals were not, they frequently do not agree---there
are 95% confidence intervals that do not contain zero but whose
associated null hypotheses were not rejected at the 0.05 level.


## Overall Attainment

### High School

\newline \newline \newline

|                 |Deaf             |Hearing        |Difference     |
|:----------------|:----------------|:--------------|:--------------|
|2008             |79.1 $\pm$ 0.8   |86.5 $\pm$ 0.1 |               |
|2009             |78.9 $\pm$ 0.9   |86.7 $\pm$ 0.1 |               |
|2010             |79.3 $\pm$ 0.9   |86.7 $\pm$ 0.1 |               |
|2011             |81.1 $\pm$ 0.8   |87.2 $\pm$ 0.1 |               |
|2012             |80.2 $\pm$ 0.8   |87.5 $\pm$ 0.1 |               |
|2013             |81.4 $\pm$ 0.7   |87.6 $\pm$ 0.1 |               |
|2014             |82 $\pm$ 0.6     |87.8 $\pm$ 0.1 |               |
|2015             |82 $\pm$ 0.7     |87.9 $\pm$ 0.1 |               |
|2016             |81.1 $\pm$ 0.8   |88 $\pm$ 0.1   |               |
|Growth           |1.9 $\pm$ 1.2    |1.5 $\pm$ 0.2  |0.4 $\pm$ 1.2  |
|Trend            |0.4 $\pm$ 0.2    |0.2 $\pm$ 0    |0.2 $\pm$ 0.2  |
|Trend (Adj)      |0.4 $\pm$ 0.1*** |0.2 $\pm$ 0    |0.2 $\pm$ 0.1* |
|Sample Size/year |17,386           |707,172        |               |

Table: High School completion from 2008-2016.

\newline \newline \newline
![High School completion over time. Error bars are approximate 95% confidence intervals.](figure/HStotFig-1.png)
\newline \newline \newline
![Change in High School completion over time. Error bars are approximate 95% confidence intervals.](figure/HStotFigChange-1.png)

### Bachelors
\newline \newline \newline

|                 |Deaf             |Hearing        |Difference  |
|:----------------|:----------------|:--------------|:-----------|
|2008             |16.7 $\pm$ 0.6   |30.2 $\pm$ 0.1 |            |
|2009             |15.9 $\pm$ 0.6   |30.5 $\pm$ 0.2 |            |
|2010             |16.2 $\pm$ 0.6   |30.6 $\pm$ 0.2 |            |
|2011             |16 $\pm$ 0.7     |30.7 $\pm$ 0.2 |            |
|2012             |16.3 $\pm$ 0.6   |31.3 $\pm$ 0.2 |            |
|2013             |17.9 $\pm$ 0.6   |31.5 $\pm$ 0.2 |            |
|2014             |18.1 $\pm$ 0.7   |31.9 $\pm$ 0.2 |            |
|2015             |17.8 $\pm$ 0.7   |32.5 $\pm$ 0.2 |            |
|2016             |18.5 $\pm$ 0.8   |33 $\pm$ 0.2   |            |
|Growth           |1.8 $\pm$ 1      |2.8 $\pm$ 0.2  |-1 $\pm$ 1  |
|Trend            |0.3 $\pm$ 0.2    |0.3 $\pm$ 0.1  |0 $\pm$ 0.2 |
|Trend (Adj)      |0.3 $\pm$ 0.1*** |0.3 $\pm$ 0    |0 $\pm$ 0.1 |
|Sample Size/year |17,386           |707,172        |            |

Table: Bachelor's degree attainment from 2008-2016.

\newline \newline \newline
![High School completion over time. Error bars are approximate 95% confidence intervals.](figure/BAtotFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree attainment over time. Error bars are approximate 95% confidence intervals.](figure/BAtotFigChange-1.png)

## Attainment for Ages 25-29

### High School

\newline \newline \newline

|                 |Deaf           |Hearing        |Difference  |
|:----------------|:--------------|:--------------|:-----------|
|2008             |79.9 $\pm$ 3.9 |85.8 $\pm$ 0.3 |            |
|2009             |81.3 $\pm$ 3.5 |86.8 $\pm$ 0.3 |            |
|2010             |81.6 $\pm$ 4.5 |86.5 $\pm$ 0.3 |            |
|2011             |81.9 $\pm$ 3.1 |87.8 $\pm$ 0.3 |            |
|2012             |81.7 $\pm$ 3.8 |88.5 $\pm$ 0.3 |            |
|2013             |79.4 $\pm$ 4   |88.7 $\pm$ 0.3 |            |
|2014             |80.6 $\pm$ 4   |89.7 $\pm$ 0.3 |            |
|2015             |86.1 $\pm$ 3.4 |90.2 $\pm$ 0.3 |            |
|2016             |85 $\pm$ 3.1   |90.4 $\pm$ 0.2 |            |
|Growth           |5.2 $\pm$ 5    |4.6 $\pm$ 0.4  |0.6 $\pm$ 5 |
|Trend            |0.6 $\pm$ 0.4  |0.6 $\pm$ 0.1  |0 $\pm$ 0.4 |
|Trend (Adj)      |0.6 $\pm$ 0.5  |0.6 $\pm$ 0    |0 $\pm$ 0.5 |
|Sample Size/year |693            |80,922         |            |

Table: High School completion for ages 25-29 from 2008-2016.

\newline \newline \newline
![High School completion for ages 25-29 over time. Error bars are approximate 95% confidence intervals.](figure/HS25.29Fig-1.png)
\newline \newline \newline
![Change in High School completion for ages 25-29 over time. Error bars are approximate 95% confidence intervals.](figure/HS25.29FigChange-1.png)

### Bachelors
\newline \newline \newline

|                 |Deaf           |Hearing        |Difference     |
|:----------------|:--------------|:--------------|:--------------|
|2008             |13.9 $\pm$ 3.2 |27.8 $\pm$ 0.4 |               |
|2009             |13.5 $\pm$ 3.2 |30 $\pm$ 0.4   |               |
|2010             |14.7 $\pm$ 3   |30.2 $\pm$ 0.4 |               |
|2011             |13.3 $\pm$ 3.1 |30.6 $\pm$ 0.4 |               |
|2012             |11.9 $\pm$ 3.4 |31.4 $\pm$ 0.4 |               |
|2013             |11 $\pm$ 2.4   |31.7 $\pm$ 0.4 |               |
|2014             |17.6 $\pm$ 3.3 |32.1 $\pm$ 0.4 |               |
|2015             |13.5 $\pm$ 3.2 |33.1 $\pm$ 0.4 |               |
|2016             |17.1 $\pm$ 3.5 |33.3 $\pm$ 0.4 |               |
|Growth           |3.3 $\pm$ 4.8  |5.5 $\pm$ 0.6  |-2.2 $\pm$ 4.8 |
|Trend            |0.2 $\pm$ 0.6  |0.6 $\pm$ 0.1  |-0.4 $\pm$ 0.6 |
|Trend (Adj)      |0.2 $\pm$ 0.4  |0.6 $\pm$ 0.1  |-0.5 $\pm$ 0.4 |
|Sample Size/year |693            |80,922         |               |

Table: Bachelor's degree attainment for ages 25-29 from 2008-2016.

\newline \newline \newline
![High School completion for ages 25-29 over time. Error bars are approximate 95% confidence intervals.](figure/BA25.29Fig-1.png)
\newline \newline \newline
![Change in Bachelor's degree for ages 25-29 attainment over time. Error bars are approximate 95% confidence intervals.](figure/BA25.29FigChange-1.png)

## Attainment By Age

### High School

\newline \newline \newline

|                 |25-34           |35-44            |45-54          |55-64           |
|:----------------|:---------------|:----------------|:--------------|:---------------|
|2008             |78.7 $\pm$ 2.7  |78.6 $\pm$ 2     |78.7 $\pm$ 1.5 |79.8 $\pm$ 1.1  |
|2009             |80.5 $\pm$ 2.5  |77 $\pm$ 2.5     |77.9 $\pm$ 1.4 |80 $\pm$ 1      |
|2010             |79.2 $\pm$ 3.1  |78.8 $\pm$ 2.3   |78.2 $\pm$ 1.5 |80.2 $\pm$ 1    |
|2011             |81.2 $\pm$ 2.6  |78.8 $\pm$ 2.3   |80.1 $\pm$ 1.5 |82.5 $\pm$ 1.1  |
|2012             |79.9 $\pm$ 2.5  |78.9 $\pm$ 2.4   |78.3 $\pm$ 1.1 |81.8 $\pm$ 1.1  |
|2013             |79.9 $\pm$ 2.8  |80.8 $\pm$ 2     |80.2 $\pm$ 1.2 |82.7 $\pm$ 1.1  |
|2014             |80.9 $\pm$ 2.5  |82.2 $\pm$ 2.2   |80.4 $\pm$ 1.4 |83.2 $\pm$ 1    |
|2015             |84.4 $\pm$ 2.2  |83.7 $\pm$ 1.8   |80.9 $\pm$ 1.4 |81.5 $\pm$ 1.2  |
|2016             |83.4 $\pm$ 2.2  |79.6 $\pm$ 2.5   |80.1 $\pm$ 1.6 |81.5 $\pm$ 1.1  |
|Growth           |4.7 $\pm$ 3.5   |1.1 $\pm$ 3.2    |1.4 $\pm$ 2.2  |1.8 $\pm$ 1.5   |
|Trend            |0.6 $\pm$ 0.3   |0.6 $\pm$ 0.4    |0.3 $\pm$ 0.2  |0.3 $\pm$ 0.3   |
|Trend (Adj)      |0.6 $\pm$ 0.3** |0.6 $\pm$ 0.3*** |0.3 $\pm$ 0.2  |0.3 $\pm$ 0.2** |
|Sample Size/year |1,472           |2,240            |4,903          |8,772           |

Table: Percentage of deaf Americans in each age category attaining a
High School diploma or equivalent.



\newline \newline \newline

|                 |25-34          |35-44          |45-54          |55-64          |
|:----------------|:--------------|:--------------|:--------------|:--------------|
|2008             |85.5 $\pm$ 0.2 |86.3 $\pm$ 0.2 |87.2 $\pm$ 0.2 |87 $\pm$ 0.2   |
|2009             |86.4 $\pm$ 0.2 |86.1 $\pm$ 0.2 |87.1 $\pm$ 0.2 |87.2 $\pm$ 0.2 |
|2010             |86.3 $\pm$ 0.3 |86.3 $\pm$ 0.2 |86.9 $\pm$ 0.2 |87.5 $\pm$ 0.2 |
|2011             |87.3 $\pm$ 0.2 |86.7 $\pm$ 0.3 |87.2 $\pm$ 0.2 |87.7 $\pm$ 0.2 |
|2012             |87.7 $\pm$ 0.2 |87 $\pm$ 0.2   |87.4 $\pm$ 0.2 |87.9 $\pm$ 0.2 |
|2013             |88.1 $\pm$ 0.2 |86.8 $\pm$ 0.2 |87.3 $\pm$ 0.2 |88.1 $\pm$ 0.2 |
|2014             |88.9 $\pm$ 0.2 |87 $\pm$ 0.2   |87.3 $\pm$ 0.2 |87.9 $\pm$ 0.2 |
|2015             |89.3 $\pm$ 0.2 |87.1 $\pm$ 0.2 |87.2 $\pm$ 0.2 |87.9 $\pm$ 0.2 |
|2016             |89.6 $\pm$ 0.2 |87.3 $\pm$ 0.2 |87.4 $\pm$ 0.2 |87.7 $\pm$ 0.2 |
|Growth           |4.1 $\pm$ 0.3  |1 $\pm$ 0.3    |0.1 $\pm$ 0.3  |0.7 $\pm$ 0.3  |
|Trend            |0.5 $\pm$ 0.1  |0.1 $\pm$ 0    |0 $\pm$ 0      |0.1 $\pm$ 0.1  |
|Trend (Adj)      |0.5 $\pm$ 0    |0.1 $\pm$ 0    |0 $\pm$ 0      |0.1 $\pm$ 0.1  |
|Sample Size/year |162,167        |167,567        |194,991        |182,448        |

Table: Percentage of hearing Americans in each age category attaining a
High School diploma or equivalent.


\newline \newline \newline

|            |25-34         |35-44          |45-54         |55-64         |
|:-----------|:-------------|:--------------|:-------------|:-------------|
|Growth      |0.6 $\pm$ 3.5 |0.1 $\pm$ 3.2  |1.2 $\pm$ 2.2 |1.1 $\pm$ 1.6 |
|Trend       |0 $\pm$ 0.3   |0.5 $\pm$ 0.4  |0.3 $\pm$ 0.2 |0.2 $\pm$ 0.3 |
|Trend (Adj) |0.1 $\pm$ 0.3 |0.5 $\pm$ 0.3* |0.3 $\pm$ 0.2 |0.2 $\pm$ 0.2 |

Table: Differences in growth and trends between deaf and hearing
Americans for each age category. Positive Differences indicate faster
growth for deaf Americans.

<!-- #### Trend and Growth differences between Age Categories for Deaf Americans -->
<!-- \newline \newline \newline
```{r HSbyAgeSubDeaf1,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Growth')) -->
<!-- ``` -->

<!-- Table: Differences in growth between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r HSbyAgeSubDeaf2,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Trend')) -->
<!-- ``` -->

<!-- Table: Differences in trends between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r HSbyAgeSubDeaf3,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Trend (Adj)')) -->
<!-- ``` -->

<!-- Table: Differences in age-adjusted trends between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->


<!-- #### Trend and Growth differences between Age Categories for Hearing Americans -->
<!-- \newline \newline \newline
```{r HSbyAgeSubHearing1,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Growth')) -->
<!-- ``` -->

<!-- Table: Differences in growth between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r HSbyAgeSubHearing2,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Trend')) -->
<!-- ``` -->

<!-- Table: Differences in trends between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r HSbyAgeSubHearing3,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Trend (Adj)')) -->
<!-- ``` -->

<!-- Table: Differences in age-adjusted trends between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->



\newline \newline \newline
![High School completion by age group over time. Error bars are approximate 95% confidence intervals.](figure/HSByAgeCatFig-1.png)
\newline \newline \newline
![Change in High School completion by age group over time. Error bars are approximate 95% confidence intervals.](figure/HSByAgeCatFigChange-1.png)

### Bachelors
\newline \newline \newline

|                 |25-34          |35-44          |45-54          |55-64          |
|:----------------|:--------------|:--------------|:--------------|:--------------|
|2008             |13 $\pm$ 2.2   |14.8 $\pm$ 1.4 |16.1 $\pm$ 1.1 |18.9 $\pm$ 1   |
|2009             |13.1 $\pm$ 2.2 |13.9 $\pm$ 1.5 |14.8 $\pm$ 1.1 |18 $\pm$ 0.9   |
|2010             |14.4 $\pm$ 2.1 |14.3 $\pm$ 1.4 |14.3 $\pm$ 1.1 |18.5 $\pm$ 1   |
|2011             |12.7 $\pm$ 1.9 |17.3 $\pm$ 1.9 |13.7 $\pm$ 1.4 |17.9 $\pm$ 1   |
|2012             |13.3 $\pm$ 2.1 |17.6 $\pm$ 2.6 |13.5 $\pm$ 1.3 |18.3 $\pm$ 0.8 |
|2013             |14.3 $\pm$ 2.1 |17.7 $\pm$ 1.9 |17.4 $\pm$ 1.2 |19.2 $\pm$ 0.8 |
|2014             |16.2 $\pm$ 2.3 |21.1 $\pm$ 2.3 |16.2 $\pm$ 1.3 |18.7 $\pm$ 1   |
|2015             |15.1 $\pm$ 2.2 |20.2 $\pm$ 2   |17.2 $\pm$ 1.3 |18.1 $\pm$ 1   |
|2016             |16.9 $\pm$ 2.2 |20.8 $\pm$ 2.3 |17.1 $\pm$ 1.3 |18.8 $\pm$ 1.1 |
|Growth           |4 $\pm$ 3.1    |6 $\pm$ 2.7    |1 $\pm$ 1.7    |-0.1 $\pm$ 1.5 |
|Trend            |0.5 $\pm$ 0.2  |0.9 $\pm$ 0.3  |0.3 $\pm$ 0.3  |0 $\pm$ 0.1    |
|Trend (Adj)      |0.4 $\pm$ 0.3  |1 $\pm$ 0.3*** |0.3 $\pm$ 0.2  |0 $\pm$ 0.1    |
|Sample Size/year |1,472          |2,240          |4,903          |8,772          |

Table: Percentage of deaf Americans in each age category attaining a
Bachelor's degree.



\newline \newline \newline

|                 |25-34          |35-44          |45-54          |55-64          |
|:----------------|:--------------|:--------------|:--------------|:--------------|
|2008             |29.4 $\pm$ 0.3 |31.2 $\pm$ 0.3 |29.2 $\pm$ 0.2 |31.3 $\pm$ 0.3 |
|2009             |31 $\pm$ 0.3   |31.2 $\pm$ 0.3 |28.7 $\pm$ 0.2 |31.2 $\pm$ 0.2 |
|2010             |31.2 $\pm$ 0.3 |31.7 $\pm$ 0.3 |28.5 $\pm$ 0.2 |31.1 $\pm$ 0.3 |
|2011             |31.6 $\pm$ 0.3 |32.4 $\pm$ 0.3 |28.4 $\pm$ 0.3 |30.6 $\pm$ 0.3 |
|2012             |32.2 $\pm$ 0.3 |33.1 $\pm$ 0.3 |29.4 $\pm$ 0.3 |30.5 $\pm$ 0.3 |
|2013             |32.6 $\pm$ 0.3 |33.1 $\pm$ 0.3 |30 $\pm$ 0.3   |30.2 $\pm$ 0.2 |
|2014             |33.1 $\pm$ 0.3 |33.8 $\pm$ 0.3 |30.4 $\pm$ 0.3 |30.1 $\pm$ 0.3 |
|2015             |34.2 $\pm$ 0.3 |34.5 $\pm$ 0.3 |31.2 $\pm$ 0.3 |29.8 $\pm$ 0.3 |
|2016             |34.9 $\pm$ 0.3 |35.2 $\pm$ 0.3 |32 $\pm$ 0.3   |29.9 $\pm$ 0.2 |
|Growth           |5.4 $\pm$ 0.4  |3.9 $\pm$ 0.4  |2.8 $\pm$ 0.4  |-1.5 $\pm$ 0.4 |
|Trend            |0.6 $\pm$ 0.1  |0.5 $\pm$ 0.1  |0.4 $\pm$ 0.2  |-0.2 $\pm$ 0   |
|Trend (Adj)      |0.6 $\pm$ 0.1  |0.5 $\pm$ 0.1  |0.4 $\pm$ 0.1  |-0.2 $\pm$ 0.1 |
|Sample Size/year |162,167        |167,567        |194,991        |182,448        |

Table: Percentage of hearing Americans in each age category attaining a
Bachelor's degree.



\newline \newline \newline

|            |25-34          |35-44          |45-54          |55-64         |
|:-----------|:--------------|:--------------|:--------------|:-------------|
|Growth      |-1.4 $\pm$ 3.1 |2.1 $\pm$ 2.8  |-1.8 $\pm$ 1.7 |1.4 $\pm$ 1.5 |
|Trend       |-0.2 $\pm$ 0.2 |0.4 $\pm$ 0.3  |-0.1 $\pm$ 0.4 |0.2 $\pm$ 0.1 |
|Trend (Adj) |-0.2 $\pm$ 0.3 |0.5 $\pm$ 0.3* |-0.1 $\pm$ 0.2 |0.2 $\pm$ 0.2 |

Table: Differences in growth and trends between deaf and hearing
Americans for each age category. Positive Differences indicate faster
growth for deaf Americans.

<!-- #### Trend and Growth differences between Age Categories for Deaf Americans -->
<!-- \newline \newline \newline
```{r BACHbyAgeSubDeaf1,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Growth')) -->
<!-- ``` -->

<!-- Table: Differences in growth between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r BACHbyAgeSubDeaf2,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Trend')) -->
<!-- ``` -->

<!-- Table: Differences in trends between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r BACHbyAgeSubDeaf3,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Trend (Adj)')) -->
<!-- ``` -->

<!-- Table: Differences in age-adjusted trends between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->


<!-- #### Trend and Growth differences between Age Categories for Hearing Americans -->
<!-- \newline \newline \newline
```{r BACHbyAgeSubHearing1,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Growth')) -->
<!-- ``` -->

<!-- Table: Differences in growth between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r BACHbyAgeSubHearing2,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Trend')) -->
<!-- ``` -->

<!-- Table: Differences in trends between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r BACHbyAgeSubHearing3,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Trend (Adj)')) -->
<!-- ``` -->

<!-- Table: Differences in age-adjusted trends between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->





\newline \newline \newline
![High School completion by age group over time. Error bars are approximate 95% confidence intervals.](figure/BAByAgeCatFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree by age group attainment over time. Error bars are approximate 95% confidence intervals.](figure/BAByAgeCatFigChange-1.png)

## Attainment By Gender

### High School

\newline \newline \newline

|                 |Male            |Female           |
|:----------------|:---------------|:----------------|
|2008             |79.2 $\pm$ 1    |79 $\pm$ 1.3     |
|2009             |79.2 $\pm$ 1.1  |78.4 $\pm$ 1.5   |
|2010             |80.3 $\pm$ 0.9  |77.6 $\pm$ 1.3   |
|2011             |81.7 $\pm$ 0.9  |80.1 $\pm$ 1.4   |
|2012             |80.5 $\pm$ 1    |79.8 $\pm$ 1.3   |
|2013             |81.1 $\pm$ 1    |82.1 $\pm$ 1.1   |
|2014             |82.1 $\pm$ 0.8  |82 $\pm$ 1       |
|2015             |81.9 $\pm$ 1    |82.2 $\pm$ 1.1   |
|2016             |81.2 $\pm$ 1    |80.9 $\pm$ 1     |
|Growth           |2 $\pm$ 1.4     |1.9 $\pm$ 1.6    |
|Trend            |0.3 $\pm$ 0.2   |0.5 $\pm$ 0.3    |
|Trend (Adj)      |0.3 $\pm$ 0.1** |0.6 $\pm$ 0.2*** |
|Sample Size/year |11,088          |6,298            |

Table: Percentage of deaf Americans by gender attaining a
High School diploma or equivalent.



\newline \newline \newline

|                 |Male           |Female         |
|:----------------|:--------------|:--------------|
|2008             |85 $\pm$ 0.2   |88 $\pm$ 0.1   |
|2009             |85.3 $\pm$ 0.1 |88.1 $\pm$ 0.1 |
|2010             |85.3 $\pm$ 0.2 |88 $\pm$ 0.1   |
|2011             |85.9 $\pm$ 0.1 |88.5 $\pm$ 0.1 |
|2012             |86.2 $\pm$ 0.1 |88.7 $\pm$ 0.1 |
|2013             |86.3 $\pm$ 0.1 |88.8 $\pm$ 0.1 |
|2014             |86.5 $\pm$ 0.2 |89 $\pm$ 0.1   |
|2015             |86.6 $\pm$ 0.1 |89.1 $\pm$ 0.1 |
|2016             |86.7 $\pm$ 0.1 |89.3 $\pm$ 0.1 |
|Growth           |1.7 $\pm$ 0.2  |1.3 $\pm$ 0.2  |
|Trend            |0.2 $\pm$ 0    |0.2 $\pm$ 0    |
|Trend (Adj)      |0.2 $\pm$ 0    |0.2 $\pm$ 0    |
|Sample Size/year |342,802        |364,370        |

Table: Percentage of hearing Americans by gender attaining a
High School diploma or equivalent.

\newline \newline \newline

|            |Male          |Female           |
|:-----------|:-------------|:----------------|
|Growth      |0.3 $\pm$ 1.4 |0.6 $\pm$ 1.6    |
|Trend       |0.1 $\pm$ 0.2 |0.3 $\pm$ 0.3    |
|Trend (Adj) |0.1 $\pm$ 0.1 |0.4 $\pm$ 0.2*** |

Table: Differences in growth and trends between deaf and hearing
Americans for males and females. Positive Differences indicate faster
growth for deaf Americans.



\newline \newline \newline
![High School completion by gender over time. Error bars are approximate 95% confidence intervals.](figure/HSSexFig-1.png)
\newline \newline \newline
![Change in High School completion by gender over time. Error bars are approximate 95% confidence intervals.](figure/HSSexFigChange-1.png)

### Bachelors
\newline \newline \newline

|                 |Male           |Female           |
|:----------------|:--------------|:----------------|
|2008             |16.5 $\pm$ 0.9 |17 $\pm$ 1.1     |
|2009             |15.4 $\pm$ 0.7 |16.7 $\pm$ 1     |
|2010             |15.9 $\pm$ 0.7 |16.8 $\pm$ 1.1   |
|2011             |15.1 $\pm$ 0.8 |17.6 $\pm$ 1.3   |
|2012             |15.9 $\pm$ 0.7 |17.2 $\pm$ 1.2   |
|2013             |16.3 $\pm$ 0.8 |20.7 $\pm$ 1.2   |
|2014             |17.3 $\pm$ 0.8 |19.4 $\pm$ 1.2   |
|2015             |16.8 $\pm$ 0.9 |19.5 $\pm$ 1     |
|2016             |17.3 $\pm$ 1   |20.5 $\pm$ 1.2   |
|Growth           |0.7 $\pm$ 1.3  |3.5 $\pm$ 1.6    |
|Trend            |0.2 $\pm$ 0.2  |0.5 $\pm$ 0.2    |
|Trend (Adj)      |0.2 $\pm$ 0.1  |0.5 $\pm$ 0.2*** |
|Sample Size/year |11,088         |6,298            |

Table: Percentage of deaf Americans by gender attaining a
Bachelor's degree.



\newline \newline \newline

|                 |Male           |Female         |
|:----------------|:--------------|:--------------|
|2008             |29.6 $\pm$ 0.2 |30.9 $\pm$ 0.2 |
|2009             |29.6 $\pm$ 0.2 |31.4 $\pm$ 0.2 |
|2010             |29.4 $\pm$ 0.2 |31.7 $\pm$ 0.2 |
|2011             |29.5 $\pm$ 0.2 |31.8 $\pm$ 0.2 |
|2012             |29.9 $\pm$ 0.2 |32.6 $\pm$ 0.2 |
|2013             |29.9 $\pm$ 0.2 |33 $\pm$ 0.2   |
|2014             |30.2 $\pm$ 0.2 |33.5 $\pm$ 0.2 |
|2015             |30.7 $\pm$ 0.2 |34.2 $\pm$ 0.2 |
|2016             |31.1 $\pm$ 0.2 |34.9 $\pm$ 0.2 |
|Growth           |1.5 $\pm$ 0.3  |4 $\pm$ 0.3    |
|Trend            |0.2 $\pm$ 0.1  |0.5 $\pm$ 0.1  |
|Trend (Adj)      |0.1 $\pm$ 0.1  |0.5 $\pm$ 0    |
|Sample Size/year |342,802        |364,370        |

Table: Percentage of hearing Americans by gender attaining a
Bachelor's degree.

\newline \newline \newline

|            |Male           |Female         |
|:-----------|:--------------|:--------------|
|Growth      |-0.8 $\pm$ 1.4 |-0.6 $\pm$ 1.7 |
|Trend       |0 $\pm$ 0.2    |0 $\pm$ 0.2    |
|Trend (Adj) |0 $\pm$ 0.1    |0 $\pm$ 0.2    |

Table: Differences in growth and trends between deaf and hearing
Americans for males and females. Positive Differences indicate faster
growth for deaf Americans.


\newline \newline \newline
![High School completion by gender over time. Error bars are approximate 95% confidence intervals.](figure/BASexFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree by gender attainment over time. Error bars are approximate 95% confidence intervals.](figure/BASexFigChange-1.png)




## Attainment By Race/Ethnicity

### High School

\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl     |Hispanic       |Other            |White          |
|:----------------|:----------------|:---------------|:----------------|:--------------|:----------------|:--------------|
|2008             |71.6 $\pm$ 2.4   |78.8 $\pm$ 5.2  |75.5 $\pm$ 4.7   |57.4 $\pm$ 2.8 |81.7 $\pm$ 4.3   |84 $\pm$ 0.9   |
|2009             |69.2 $\pm$ 2.5   |74.5 $\pm$ 7.1  |73.6 $\pm$ 5.5   |60.1 $\pm$ 3.4 |78 $\pm$ 6.1     |83.6 $\pm$ 0.9 |
|2010             |71.8 $\pm$ 2.4   |83.1 $\pm$ 5.5  |72.9 $\pm$ 5.3   |58.9 $\pm$ 2.9 |83.8 $\pm$ 6.3   |83.6 $\pm$ 0.9 |
|2011             |74 $\pm$ 2.9     |81.3 $\pm$ 6.8  |75.7 $\pm$ 4.9   |63.3 $\pm$ 2.7 |79.8 $\pm$ 4.9   |85.5 $\pm$ 0.8 |
|2012             |73.1 $\pm$ 2.9   |74.8 $\pm$ 7.3  |74.5 $\pm$ 4.7   |60.4 $\pm$ 2.8 |81.3 $\pm$ 5.2   |85.2 $\pm$ 0.8 |
|2013             |77.3 $\pm$ 2.3   |81 $\pm$ 5.1    |76.8 $\pm$ 4.3   |61.8 $\pm$ 2.9 |86.2 $\pm$ 4.6   |85.6 $\pm$ 0.8 |
|2014             |75.9 $\pm$ 2.8   |73.8 $\pm$ 7    |79 $\pm$ 4.4     |63.3 $\pm$ 2.4 |83.2 $\pm$ 5.2   |86.6 $\pm$ 0.7 |
|2015             |77.1 $\pm$ 2.4   |79.2 $\pm$ 5.9  |77.5 $\pm$ 3.7   |63 $\pm$ 2.5   |84.4 $\pm$ 3.9   |86.6 $\pm$ 0.8 |
|2016             |75.9 $\pm$ 2.6   |79.1 $\pm$ 6.8  |76.1 $\pm$ 4.4   |62.7 $\pm$ 2.3 |85.5 $\pm$ 3.4   |85.9 $\pm$ 0.8 |
|Growth           |4.4 $\pm$ 3.6    |0.3 $\pm$ 8.6   |0.6 $\pm$ 6.4    |5.2 $\pm$ 3.6  |3.8 $\pm$ 5.5    |1.9 $\pm$ 1.2  |
|Trend            |0.9 $\pm$ 0.4    |-0.1 $\pm$ 0.8  |0.4 $\pm$ 0.4    |0.6 $\pm$ 0.3  |0.6 $\pm$ 0.5    |0.4 $\pm$ 0.2  |
|Trend (Adj)      |1.2 $\pm$ 0.4*** |0.8 $\pm$ 0.5   |0.8 $\pm$ 0.3*** |0.8 $\pm$ 0.5  |0.4 $\pm$ 0.1*** |0 $\pm$ 0.7    |
|Sample Size/year |1,598            |311             |508              |1,903          |408              |12,659         |

Table: Percentage of deaf Americans by race/ethnicity attaining a
High School diploma or equivalent.



\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |85.2 $\pm$ 0.3   |82.1 $\pm$ 1.8  |89.1 $\pm$ 0.4 |62.9 $\pm$ 0.4 |89.4 $\pm$ 0.8 |93 $\pm$ 0.1   |
|2009             |85.7 $\pm$ 0.3   |84.3 $\pm$ 1.4  |89.4 $\pm$ 0.4 |63.4 $\pm$ 0.4 |90.8 $\pm$ 0.8 |93.2 $\pm$ 0.1 |
|2010             |85.7 $\pm$ 0.3   |82.2 $\pm$ 1.3  |89.6 $\pm$ 0.4 |64.2 $\pm$ 0.5 |90.4 $\pm$ 0.7 |93.2 $\pm$ 0.1 |
|2011             |86.2 $\pm$ 0.3   |84.4 $\pm$ 1.2  |89.2 $\pm$ 0.5 |65.2 $\pm$ 0.5 |91 $\pm$ 0.6   |93.5 $\pm$ 0.1 |
|2012             |87 $\pm$ 0.3     |84.4 $\pm$ 1.4  |89.8 $\pm$ 0.4 |66.2 $\pm$ 0.3 |91.2 $\pm$ 0.6 |93.7 $\pm$ 0.1 |
|2013             |87.1 $\pm$ 0.3   |83.6 $\pm$ 1.2  |90 $\pm$ 0.4   |67 $\pm$ 0.4   |92.3 $\pm$ 0.6 |93.7 $\pm$ 0.1 |
|2014             |87.3 $\pm$ 0.3   |84.6 $\pm$ 1.4  |90.3 $\pm$ 0.3 |67.9 $\pm$ 0.4 |91.9 $\pm$ 0.8 |93.9 $\pm$ 0.1 |
|2015             |87.5 $\pm$ 0.3   |84.1 $\pm$ 1.5  |90.5 $\pm$ 0.4 |68.4 $\pm$ 0.4 |93 $\pm$ 0.5   |93.9 $\pm$ 0.1 |
|2016             |87.8 $\pm$ 0.3   |85.4 $\pm$ 1.3  |90.6 $\pm$ 0.3 |69.3 $\pm$ 0.4 |92.2 $\pm$ 0.5 |93.9 $\pm$ 0.1 |
|Growth           |2.5 $\pm$ 0.4    |3.3 $\pm$ 2.2   |1.5 $\pm$ 0.5  |6.5 $\pm$ 0.6  |2.9 $\pm$ 0.9  |0.9 $\pm$ 0.1  |
|Trend            |0.3 $\pm$ 0.1    |0.3 $\pm$ 0.2   |0.2 $\pm$ 0    |0.8 $\pm$ 0    |0.4 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Trend (Adj)      |0.4 $\pm$ 0      |0.2 $\pm$ 0     |0.9 $\pm$ 0.1  |0.4 $\pm$ 0.1  |0.1 $\pm$ 0    |0.3 $\pm$ 0.2  |
|Sample Size/year |75,291           |5,240           |48,396         |110,686        |12,144         |455,415        |

Table: Percentage of hearing Americans by race/ethnicity attaining a
High School diploma or equivalent.

\newline \newline \newline

|            |African American |American Indian |Asian/PacIsl   |Hispanic       |Other           |White          |
|:-----------|:----------------|:---------------|:--------------|:--------------|:---------------|:--------------|
|Growth      |1.8 $\pm$ 3.6    |-3 $\pm$ 8.9    |-0.9 $\pm$ 6.5 |-1.2 $\pm$ 3.7 |0.9 $\pm$ 5.6   |1 $\pm$ 1.2    |
|Trend       |0.6 $\pm$ 0.4    |-0.4 $\pm$ 0.9  |0.3 $\pm$ 0.4  |-0.2 $\pm$ 0.3 |0.3 $\pm$ 0.5   |0.2 $\pm$ 0.2  |
|Trend (Adj) |0.8 $\pm$ 0.4*** |0.6 $\pm$ 0.5   |-0.2 $\pm$ 0.3 |0.4 $\pm$ 0.6  |0.2 $\pm$ 0.1** |-0.3 $\pm$ 0.7 |

Table: Differences in growth and trends between deaf and hearing
Americans for each age category. Positive Differences indicate faster
growth for deaf Americans.

<!-- #### Trend and Growth differences between Age Categories for Deaf Americans -->
<!-- \newline \newline \newline
```{r HSbyRaceSubDeaf1,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Growth')) -->
<!-- ``` -->

<!-- Table: Differences in growth between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r HSbyRaceSubDeaf2,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Trend')) -->
<!-- ``` -->

<!-- Table: Differences in trends between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r HSbyRaceSubDeaf3,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Trend (Adj)')) -->
<!-- ``` -->

<!-- Table: Differences in age-adjusted trends between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->


<!-- #### Trend and Growth differences between Age Categories for Hearing Americans -->
<!-- \newline \newline \newline
```{r HSbyRaceSubHearing1,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Growth')) -->
<!-- ``` -->

<!-- Table: Differences in growth between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r HSbyRaceSubHearing2,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Trend')) -->
<!-- ``` -->

<!-- Table: Differences in trends between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r HSbyRaceSubHearing3,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Trend (Adj)')) -->
<!-- ``` -->

<!-- Table: Differences in age-adjusted trends between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

\newline \newline \newline
![High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceFig-1.png)
\newline \newline \newline
![Change in High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceFigChange-1.png)

### Bachelors
\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl     |Hispanic      |Other          |White          |
|:----------------|:----------------|:---------------|:----------------|:-------------|:--------------|:--------------|
|2008             |9.5 $\pm$ 1.6    |11 $\pm$ 4.9    |29.4 $\pm$ 5.5   |9.2 $\pm$ 1.7 |18.2 $\pm$ 4.5 |18.6 $\pm$ 0.8 |
|2009             |9.3 $\pm$ 1.6    |17.7 $\pm$ 4.8  |26.7 $\pm$ 3.9   |9.3 $\pm$ 1.6 |14.9 $\pm$ 4.3 |17.4 $\pm$ 0.8 |
|2010             |9.3 $\pm$ 1.6    |7.6 $\pm$ 3.3   |24.1 $\pm$ 4.5   |8.9 $\pm$ 1.6 |17.5 $\pm$ 4.7 |18.1 $\pm$ 0.7 |
|2011             |9 $\pm$ 1.9      |9.8 $\pm$ 4     |31.1 $\pm$ 5.8   |9 $\pm$ 1.6   |14.4 $\pm$ 4.8 |17.8 $\pm$ 0.8 |
|2012             |10.1 $\pm$ 1.7   |11.9 $\pm$ 7.8  |29.8 $\pm$ 4.5   |7.7 $\pm$ 1.7 |17.5 $\pm$ 3.9 |18.3 $\pm$ 0.8 |
|2013             |11.1 $\pm$ 1.9   |10.6 $\pm$ 4.2  |27.9 $\pm$ 4.5   |9.8 $\pm$ 1.6 |17 $\pm$ 3.9   |20.1 $\pm$ 0.9 |
|2014             |10.6 $\pm$ 1.9   |14.8 $\pm$ 6.2  |30.6 $\pm$ 5.1   |9.9 $\pm$ 1.7 |20.6 $\pm$ 4.8 |20 $\pm$ 0.8   |
|2015             |9.8 $\pm$ 1.8    |9.3 $\pm$ 4.1   |29.1 $\pm$ 4.8   |12 $\pm$ 1.7  |15.2 $\pm$ 4.4 |19.9 $\pm$ 0.9 |
|2016             |12.8 $\pm$ 2.3   |7.4 $\pm$ 3.7   |28.7 $\pm$ 4.5   |9.8 $\pm$ 1.4 |18.3 $\pm$ 4   |20.9 $\pm$ 0.9 |
|Growth           |3.2 $\pm$ 2.8    |-3.7 $\pm$ 6.2  |-0.8 $\pm$ 7.1   |0.6 $\pm$ 2.2 |0.1 $\pm$ 6    |2.3 $\pm$ 1.2  |
|Trend            |0.3 $\pm$ 0.2    |-0.4 $\pm$ 0.8  |0.3 $\pm$ 0.5    |0.2 $\pm$ 0.2 |0.2 $\pm$ 0.5  |0.4 $\pm$ 0.2  |
|Trend (Adj)      |0.1 $\pm$ 0.6    |0 $\pm$ 0.5     |0.3 $\pm$ 0.1*** |0.3 $\pm$ 0.2 |-0.6 $\pm$ 0.7 |0.1 $\pm$ 0.2  |
|Sample Size/year |1,598            |311             |508              |1,903         |408            |12,659         |

Table: Percentage of deaf Americans by race/ethnicity attaining a
Bachelor's degree.



\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |19.5 $\pm$ 0.4   |13.7 $\pm$ 1.4  |51.4 $\pm$ 0.7 |13.4 $\pm$ 0.3 |29.2 $\pm$ 1   |35 $\pm$ 0.2   |
|2009             |19.2 $\pm$ 0.4   |13.8 $\pm$ 1.3  |51.3 $\pm$ 0.6 |13.2 $\pm$ 0.3 |30.1 $\pm$ 1.2 |35.6 $\pm$ 0.2 |
|2010             |19.4 $\pm$ 0.4   |14.1 $\pm$ 1.1  |51.5 $\pm$ 0.6 |13.6 $\pm$ 0.3 |32.4 $\pm$ 1.2 |35.6 $\pm$ 0.2 |
|2011             |20.4 $\pm$ 0.4   |13.8 $\pm$ 1.3  |52 $\pm$ 0.7   |13.8 $\pm$ 0.3 |31.1 $\pm$ 1.1 |35.5 $\pm$ 0.2 |
|2012             |20.2 $\pm$ 0.4   |13.9 $\pm$ 1.4  |52.9 $\pm$ 0.6 |14.5 $\pm$ 0.3 |33.4 $\pm$ 1.2 |36.2 $\pm$ 0.2 |
|2013             |20.6 $\pm$ 0.4   |14.8 $\pm$ 1.3  |53.1 $\pm$ 0.6 |14.6 $\pm$ 0.3 |34.6 $\pm$ 1.2 |36.5 $\pm$ 0.2 |
|2014             |21 $\pm$ 0.4     |14.8 $\pm$ 1.4  |53.4 $\pm$ 0.6 |15 $\pm$ 0.3   |34.6 $\pm$ 1   |37.1 $\pm$ 0.2 |
|2015             |21.7 $\pm$ 0.5   |14.4 $\pm$ 1.5  |54.5 $\pm$ 0.6 |15.7 $\pm$ 0.3 |36.9 $\pm$ 1.1 |37.6 $\pm$ 0.2 |
|2016             |22.3 $\pm$ 0.3   |14.5 $\pm$ 1.5  |56.1 $\pm$ 0.6 |15.9 $\pm$ 0.3 |36.2 $\pm$ 0.9 |38.2 $\pm$ 0.2 |
|Growth           |2.8 $\pm$ 0.5    |0.8 $\pm$ 2     |4.6 $\pm$ 0.9  |2.5 $\pm$ 0.4  |7.1 $\pm$ 1.4  |3.2 $\pm$ 0.3  |
|Trend            |0.4 $\pm$ 0.1    |0.1 $\pm$ 0.1   |0.6 $\pm$ 0.1  |0.3 $\pm$ 0.1  |0.9 $\pm$ 0.2  |0.4 $\pm$ 0.1  |
|Trend (Adj)      |0.6 $\pm$ 0.1    |0.9 $\pm$ 0.1   |0.3 $\pm$ 0.1  |0.4 $\pm$ 0.1  |0 $\pm$ 0.2    |0.3 $\pm$ 0    |
|Sample Size/year |75,291           |5,240           |48,396         |110,686        |12,144         |455,415        |

Table: Percentage of hearing Americans by race/ethnicity attaining a
Bachelor's degree.


\newline \newline \newline

|            |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:-----------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|Growth      |0.4 $\pm$ 2.9    |-4.5 $\pm$ 6.5  |-5.4 $\pm$ 7.1 |-1.9 $\pm$ 2.2 |-6.9 $\pm$ 6.2 |-0.9 $\pm$ 1.2 |
|Trend       |-0.1 $\pm$ 0.2   |-0.5 $\pm$ 0.8  |-0.3 $\pm$ 0.6 |-0.1 $\pm$ 0.3 |-0.8 $\pm$ 0.5 |0 $\pm$ 0.2    |
|Trend (Adj) |-0.5 $\pm$ 0.6   |-0.9 $\pm$ 0.6  |0 $\pm$ 0.1    |0 $\pm$ 0.2    |-0.7 $\pm$ 0.7 |-0.3 $\pm$ 0.2 |

Table: Differences in growth and trends between deaf and hearing
Americans for each age category. Positive Differences indicate faster
growth for deaf Americans.

<!-- #### Trend and Growth differences between Race/Ethnicity Categories for Deaf Americans -->
<!-- \newline \newline \newline
```{r BACHRaceDeaf1,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Growth')) -->
<!-- ``` -->

<!-- Table: Differences in growth between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r BACHRaceDeaf2,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Trend')) -->
<!-- ``` -->

<!-- Table: Differences in trends between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r BACHRaceDeaf3,results='markdown'} -->
<!-- kable(diffSub(estsSeD$ests,estsSeD$ses,varb='Trend (Adj)')) -->
<!-- ``` -->

<!-- Table: Differences in age-adjusted trends between deaf Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->


<!-- #### Trend and Growth differences between Age Categories for Hearing Americans -->
<!-- \newline \newline \newline
```{r BACHRaceSubHearing1,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Growth')) -->
<!-- ``` -->

<!-- Table: Differences in growth between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r BACHRaceSubHearing2,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Trend')) -->
<!-- ``` -->

<!-- Table: Differences in trends between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

<!-- \newline \newline \newline
```{r BACHHearing3,results='markdown'} -->
<!-- kable(diffSub(estsSeH$ests,estsSeH$ses,varb='Trend (Adj)')) -->
<!-- ``` -->

<!-- Table: Differences in age-adjusted trends between hearing Americans in each -->
<!-- age category. Negative differences indicate faster growth for the -->
<!-- row category. -->

\newline \newline \newline
![High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BARaceFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree attainment by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BARaceFigChange-1.png)

## Attainment By Race/Ethnicity And Gender

### High School

#### Deaf Female
\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic        |Other           |White            |
|:----------------|:----------------|:---------------|:--------------|:---------------|:---------------|:----------------|
|2008             |73.4 $\pm$ 4.1   |73.9 $\pm$ 8.6  |71.1 $\pm$ 6.8 |57.1 $\pm$ 4.4  |82.3 $\pm$ 6.8  |84.7 $\pm$ 1.5   |
|2009             |71.5 $\pm$ 4.2   |71.9 $\pm$ 12.1 |66.1 $\pm$ 7.6 |60.8 $\pm$ 4.9  |76.6 $\pm$ 9.6  |83.6 $\pm$ 1.6   |
|2010             |71.9 $\pm$ 3.9   |82.9 $\pm$ 8    |69.1 $\pm$ 8.8 |56.3 $\pm$ 4.6  |83.1 $\pm$ 12.5 |82.8 $\pm$ 1.5   |
|2011             |71.5 $\pm$ 4.5   |79 $\pm$ 11.5   |72 $\pm$ 7.3   |61.6 $\pm$ 4.7  |75.6 $\pm$ 7.5  |86.1 $\pm$ 1.4   |
|2012             |73.1 $\pm$ 4.6   |77.4 $\pm$ 10.7 |72.2 $\pm$ 7.8 |57.9 $\pm$ 4.3  |86 $\pm$ 7.8    |85.9 $\pm$ 1.3   |
|2013             |80.7 $\pm$ 3.4   |78.7 $\pm$ 6.7  |72 $\pm$ 7.4   |62.5 $\pm$ 4.4  |88.9 $\pm$ 5.7  |86.7 $\pm$ 1.3   |
|2014             |79.5 $\pm$ 3.6   |70 $\pm$ 11.8   |75.1 $\pm$ 7.2 |62.3 $\pm$ 4.1  |81 $\pm$ 8.9    |87.1 $\pm$ 1.2   |
|2015             |77.8 $\pm$ 3.3   |74.7 $\pm$ 12.1 |76.5 $\pm$ 5.9 |65.8 $\pm$ 4    |83.3 $\pm$ 7.7  |87.1 $\pm$ 1.1   |
|2016             |78.6 $\pm$ 3.4   |82.4 $\pm$ 9    |69.4 $\pm$ 7   |62.3 $\pm$ 3.8  |87.8 $\pm$ 5.5  |86.2 $\pm$ 1.2   |
|Growth           |5.2 $\pm$ 5.3    |8.4 $\pm$ 12.5  |-1.7 $\pm$ 9.7 |5.2 $\pm$ 5.9   |5.5 $\pm$ 8.7   |1.4 $\pm$ 1.9    |
|Trend            |1 $\pm$ 0.6      |0.4 $\pm$ 1.1   |0.6 $\pm$ 0.7  |0.8 $\pm$ 0.6   |0.9 $\pm$ 1     |0.4 $\pm$ 0.3    |
|Trend (Adj)      |1.6 $\pm$ 0.5*** |1.6 $\pm$ 1.3   |1.4 $\pm$ 1    |1.2 $\pm$ 0.6** |1.1 $\pm$ 1.4   |0.5 $\pm$ 0.2*** |
|Sample Size/year |689              |119             |230            |759             |153             |4,348            |

Table: Percentage of female deaf Americans by race/ethnicity attaining a
High School diploma or equivalent.

#### Deaf Male
\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:----------------|
|2008             |70.2 $\pm$ 3.2   |82.1 $\pm$ 6.4  |79.5 $\pm$ 5.8 |57.7 $\pm$ 3.6 |81.3 $\pm$ 6.6 |83.6 $\pm$ 1     |
|2009             |67.3 $\pm$ 3     |76.1 $\pm$ 8.4  |78.9 $\pm$ 6.3 |59.5 $\pm$ 4.1 |78.9 $\pm$ 6.5 |83.6 $\pm$ 1.1   |
|2010             |71.8 $\pm$ 3.2   |83.3 $\pm$ 7.1  |75.6 $\pm$ 6   |60.7 $\pm$ 3.3 |84.1 $\pm$ 5.4 |84.1 $\pm$ 1.1   |
|2011             |75.8 $\pm$ 3.4   |82.8 $\pm$ 6.5  |79.3 $\pm$ 5.4 |64.5 $\pm$ 3.5 |82.8 $\pm$ 5.7 |85.2 $\pm$ 0.9   |
|2012             |73.1 $\pm$ 3.2   |73 $\pm$ 9.2    |76.5 $\pm$ 5.3 |62.1 $\pm$ 3.6 |79.1 $\pm$ 7   |84.9 $\pm$ 1.1   |
|2013             |74.6 $\pm$ 3.4   |82.7 $\pm$ 7.5  |81.1 $\pm$ 5.2 |61.4 $\pm$ 3.6 |84.3 $\pm$ 6.2 |85.1 $\pm$ 1     |
|2014             |73 $\pm$ 4.1     |76.8 $\pm$ 7.8  |82.6 $\pm$ 4.9 |63.9 $\pm$ 3.3 |85.1 $\pm$ 6   |86.4 $\pm$ 1     |
|2015             |76.4 $\pm$ 3.7   |82.3 $\pm$ 6.3  |78.3 $\pm$ 5.5 |61 $\pm$ 3.6   |85 $\pm$ 4.3   |86.2 $\pm$ 1     |
|2016             |74.1 $\pm$ 3.8   |76.7 $\pm$ 8.9  |81.4 $\pm$ 4.9 |62.9 $\pm$ 3   |84 $\pm$ 4.7   |85.7 $\pm$ 1     |
|Growth           |4 $\pm$ 4.9      |-5.4 $\pm$ 10.9 |1.9 $\pm$ 7.6  |5.3 $\pm$ 4.7  |2.7 $\pm$ 8.1  |2.1 $\pm$ 1.4    |
|Trend            |0.8 $\pm$ 0.6    |-0.2 $\pm$ 0.9  |0.4 $\pm$ 0.6  |0.5 $\pm$ 0.4  |0.5 $\pm$ 0.4  |0.3 $\pm$ 0.1    |
|Trend (Adj)      |0.8 $\pm$ 0.5*   |-0.3 $\pm$ 0.8  |0.7 $\pm$ 0.6  |0.6 $\pm$ 0.5  |-0.1 $\pm$ 0.7 |0.3 $\pm$ 0.1*** |
|Sample Size/year |909              |191             |278            |1,144          |255            |8,311            |

Table: Percentage of male deaf Americans by race/ethnicity attaining a
High School diploma or equivalent.


#### Hearing Female
\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |87 $\pm$ 0.4     |84.2 $\pm$ 2.2  |88.2 $\pm$ 0.5 |65.6 $\pm$ 0.4 |90.3 $\pm$ 1   |94 $\pm$ 0.1   |
|2009             |87.4 $\pm$ 0.4   |85.6 $\pm$ 1.7  |88.5 $\pm$ 0.4 |65.7 $\pm$ 0.5 |91.6 $\pm$ 0.9 |94 $\pm$ 0.1   |
|2010             |87.8 $\pm$ 0.3   |83.6 $\pm$ 1.6  |88.7 $\pm$ 0.5 |66.8 $\pm$ 0.5 |90.8 $\pm$ 1   |94.2 $\pm$ 0.1 |
|2011             |88.1 $\pm$ 0.4   |86.4 $\pm$ 1.5  |88.5 $\pm$ 0.5 |67.3 $\pm$ 0.5 |91.9 $\pm$ 0.8 |94.5 $\pm$ 0.1 |
|2012             |88.8 $\pm$ 0.4   |85.9 $\pm$ 1.8  |89.2 $\pm$ 0.4 |68.4 $\pm$ 0.4 |92.3 $\pm$ 0.7 |94.6 $\pm$ 0.1 |
|2013             |88.9 $\pm$ 0.3   |85.6 $\pm$ 1.5  |89.3 $\pm$ 0.5 |69.1 $\pm$ 0.5 |92.8 $\pm$ 0.8 |94.6 $\pm$ 0.1 |
|2014             |88.9 $\pm$ 0.3   |85.7 $\pm$ 1.9  |89.6 $\pm$ 0.3 |70.1 $\pm$ 0.4 |93 $\pm$ 0.9   |94.8 $\pm$ 0.1 |
|2015             |89.6 $\pm$ 0.3   |85.3 $\pm$ 1.8  |89.7 $\pm$ 0.5 |70.6 $\pm$ 0.5 |93.8 $\pm$ 0.6 |94.8 $\pm$ 0.1 |
|2016             |89.7 $\pm$ 0.3   |87.5 $\pm$ 1.6  |90.1 $\pm$ 0.4 |71.5 $\pm$ 0.5 |93.1 $\pm$ 0.6 |94.9 $\pm$ 0.1 |
|Growth           |2.8 $\pm$ 0.5    |3.3 $\pm$ 2.7   |1.9 $\pm$ 0.6  |5.9 $\pm$ 0.7  |2.9 $\pm$ 1.2  |0.9 $\pm$ 0.2  |
|Trend            |0.3 $\pm$ 0      |0.3 $\pm$ 0.3   |0.2 $\pm$ 0    |0.8 $\pm$ 0.1  |0.4 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Trend (Adj)      |0.4 $\pm$ 0.1    |0.2 $\pm$ 0.2   |0.2 $\pm$ 0.1  |0.9 $\pm$ 0.1  |0.3 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Sample Size/year |40,099           |2,721           |26,216         |55,888         |6,327          |233,119        |

Table: Percentage of female hearing Americans by race/ethnicity attaining a
High School diploma or equivalent.

#### Hearing Male
\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |83.2 $\pm$ 0.5   |79.7 $\pm$ 2.2  |90.2 $\pm$ 0.6 |60.5 $\pm$ 0.5 |88.5 $\pm$ 1.1 |92 $\pm$ 0.1   |
|2009             |83.7 $\pm$ 0.5   |82.9 $\pm$ 2.1  |90.3 $\pm$ 0.5 |61.3 $\pm$ 0.5 |89.9 $\pm$ 1   |92.3 $\pm$ 0.2 |
|2010             |83.4 $\pm$ 0.4   |80.7 $\pm$ 1.9  |90.7 $\pm$ 0.5 |61.6 $\pm$ 0.6 |90 $\pm$ 1     |92.3 $\pm$ 0.1 |
|2011             |84.1 $\pm$ 0.4   |82.2 $\pm$ 1.9  |90.1 $\pm$ 0.6 |63.3 $\pm$ 0.6 |90.1 $\pm$ 0.9 |92.5 $\pm$ 0.2 |
|2012             |85 $\pm$ 0.4     |82.9 $\pm$ 1.9  |90.6 $\pm$ 0.4 |64.2 $\pm$ 0.5 |90 $\pm$ 1     |92.7 $\pm$ 0.1 |
|2013             |85 $\pm$ 0.4     |81.3 $\pm$ 2.2  |90.8 $\pm$ 0.5 |65 $\pm$ 0.5   |91.7 $\pm$ 0.9 |92.8 $\pm$ 0.1 |
|2014             |85.5 $\pm$ 0.5   |83.5 $\pm$ 1.8  |91 $\pm$ 0.4   |65.8 $\pm$ 0.5 |90.6 $\pm$ 1   |93 $\pm$ 0.1   |
|2015             |85.3 $\pm$ 0.4   |82.8 $\pm$ 2    |91.6 $\pm$ 0.5 |66.2 $\pm$ 0.5 |92.3 $\pm$ 0.8 |93 $\pm$ 0.1   |
|2016             |85.5 $\pm$ 0.4   |83.2 $\pm$ 1.9  |91.2 $\pm$ 0.4 |67.2 $\pm$ 0.5 |91.3 $\pm$ 0.8 |92.9 $\pm$ 0.1 |
|Growth           |2.3 $\pm$ 0.7    |3.5 $\pm$ 2.9   |1 $\pm$ 0.7    |6.8 $\pm$ 0.7  |2.8 $\pm$ 1.4  |0.9 $\pm$ 0.2  |
|Trend            |0.3 $\pm$ 0.1    |0.3 $\pm$ 0.3   |0.1 $\pm$ 0.1  |0.9 $\pm$ 0.1  |0.4 $\pm$ 0.2  |0.1 $\pm$ 0    |
|Trend (Adj)      |0.3 $\pm$ 0.1    |0.2 $\pm$ 0.3   |0.1 $\pm$ 0.1  |0.9 $\pm$ 0.1  |0.4 $\pm$ 0.1  |0.1 $\pm$ 0    |
|Sample Size/year |35,191           |2,520           |22,180         |54,798         |5,817          |222,296        |

Table: Percentage of male hearing Americans by race/ethnicity attaining a
High School diploma or equivalent.

#### Deaf Hearing Differences by Race: Female
\newline \newline \newline

|            |African American |American Indian |Asian/PacIsl   |Hispanic       |Other         |White           |
|:-----------|:----------------|:---------------|:--------------|:--------------|:-------------|:---------------|
|Growth      |2.4 $\pm$ 5.3    |5.1 $\pm$ 12.8  |-3.6 $\pm$ 9.8 |-0.8 $\pm$ 5.9 |2.7 $\pm$ 8.8 |0.5 $\pm$ 1.9   |
|Trend       |0.7 $\pm$ 0.6    |0.1 $\pm$ 1.2   |0.4 $\pm$ 0.7  |0 $\pm$ 0.6    |0.5 $\pm$ 1   |0.3 $\pm$ 0.3   |
|Trend (Adj) |1.2 $\pm$ 0.5*** |1.4 $\pm$ 1.3   |1.2 $\pm$ 1    |0.3 $\pm$ 0.6  |0.7 $\pm$ 1.4 |0.4 $\pm$ 0.2** |

Table: Differences in growth and trends between female deaf and hearing
Americans for each race/ethicity category. Positive Differences indicate faster
growth for deaf Americans.

#### Deaf Hearing Differences by Race: Male
\newline \newline \newline

|            |African American |American Indian |Asian/PacIsl  |Hispanic       |Other          |White         |
|:-----------|:----------------|:---------------|:-------------|:--------------|:--------------|:-------------|
|Growth      |1.7 $\pm$ 5      |-8.9 $\pm$ 11.3 |0.9 $\pm$ 7.6 |-1.5 $\pm$ 4.7 |-0.1 $\pm$ 8.2 |1.2 $\pm$ 1.4 |
|Trend       |0.5 $\pm$ 0.6    |-0.5 $\pm$ 1    |0.2 $\pm$ 0.6 |-0.4 $\pm$ 0.5 |0.1 $\pm$ 0.5  |0.2 $\pm$ 0.1 |
|Trend (Adj) |0.4 $\pm$ 0.5    |-0.5 $\pm$ 0.9  |0.5 $\pm$ 0.6 |-0.3 $\pm$ 0.5 |-0.5 $\pm$ 0.7 |0.2 $\pm$ 0.1 |

Table: Differences in growth and trends between male deaf and hearing
Americans for each race/ethicity category. Positive Differences indicate faster
growth for deaf Americans.



\newline \newline \newline
![High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceSexFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree attainment by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/HSRaceSexFigChange-1.png)




### Bachelors

#### Deaf Female
\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White            |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:----------------|
|2008             |10.6 $\pm$ 2.9   |10.8 $\pm$ 7.3  |30.6 $\pm$ 7.2 |9.1 $\pm$ 2.5  |19.8 $\pm$ 7.4 |19 $\pm$ 1.5     |
|2009             |10.2 $\pm$ 2.6   |22 $\pm$ 10.9   |27.7 $\pm$ 6.6 |9.4 $\pm$ 2.8  |11.3 $\pm$ 6.6 |18.9 $\pm$ 1.3   |
|2010             |9.9 $\pm$ 2.7    |9.7 $\pm$ 7.2   |25.4 $\pm$ 7   |9.6 $\pm$ 2.4  |18.4 $\pm$ 8.1 |19 $\pm$ 1.5     |
|2011             |11.5 $\pm$ 3.2   |8.2 $\pm$ 5.3   |29 $\pm$ 7.1   |7.1 $\pm$ 2.3  |17.8 $\pm$ 9.3 |20.3 $\pm$ 1.6   |
|2012             |9.9 $\pm$ 2.5    |18.2 $\pm$ 19.4 |27.2 $\pm$ 6.2 |7.3 $\pm$ 2.3  |19.9 $\pm$ 9.4 |19.9 $\pm$ 1.5   |
|2013             |11.7 $\pm$ 2.8   |10.4 $\pm$ 5.4  |27.4 $\pm$ 6.6 |10.3 $\pm$ 2.5 |15.3 $\pm$ 5.9 |24.5 $\pm$ 1.5   |
|2014             |11.2 $\pm$ 2.5   |11.5 $\pm$ 7.2  |30 $\pm$ 7.7   |11.5 $\pm$ 3.1 |20.6 $\pm$ 7   |21.9 $\pm$ 1.5   |
|2015             |12.1 $\pm$ 2.8   |6.3 $\pm$ 4.8   |26.7 $\pm$ 7.4 |12.1 $\pm$ 2.4 |16 $\pm$ 6.8   |22.7 $\pm$ 1.3   |
|2016             |15.5 $\pm$ 3.2   |5.3 $\pm$ 5.4   |27.6 $\pm$ 6.4 |11.7 $\pm$ 2.6 |25 $\pm$ 7.9   |23.1 $\pm$ 1.5   |
|Growth           |4.9 $\pm$ 4.4    |-5.5 $\pm$ 9    |-3.1 $\pm$ 9.6 |2.6 $\pm$ 3.6  |5.2 $\pm$ 10.8 |4.2 $\pm$ 2.1    |
|Trend            |0.4 $\pm$ 0.3    |-0.8 $\pm$ 0.8  |-0.1 $\pm$ 0.4 |0.4 $\pm$ 0.4  |0.6 $\pm$ 1    |0.6 $\pm$ 0.3    |
|Trend (Adj)      |0.3 $\pm$ 0.2    |-0.6 $\pm$ 1.9  |0.1 $\pm$ 0.8  |0.1 $\pm$ 0.2  |-1 $\pm$ 1.3   |0.6 $\pm$ 0.2*** |
|Sample Size/year |689              |119             |230            |759            |153            |4,348            |

Table: Percentage of female deaf Americans by race/ethnicity attaining a
High School diploma or equivalent.

#### Deaf Male
\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |8.7 $\pm$ 2.3    |11.2 $\pm$ 6.2  |28.3 $\pm$ 6.8 |9.3 $\pm$ 2.2  |16.9 $\pm$ 5.9 |18.3 $\pm$ 1.1 |
|2009             |8.6 $\pm$ 1.9    |15.1 $\pm$ 6    |26 $\pm$ 4.8   |9.2 $\pm$ 1.8  |17.3 $\pm$ 6.4 |16.6 $\pm$ 0.9 |
|2010             |8.9 $\pm$ 2.2    |6.2 $\pm$ 4.3   |23.2 $\pm$ 5.9 |8.4 $\pm$ 2.1  |17.1 $\pm$ 6   |17.7 $\pm$ 0.8 |
|2011             |7.2 $\pm$ 2.2    |10.8 $\pm$ 5.5  |33.3 $\pm$ 7.9 |10.4 $\pm$ 2.5 |11.9 $\pm$ 4.6 |16.5 $\pm$ 1.1 |
|2012             |10.3 $\pm$ 2.3   |7.8 $\pm$ 4.9   |32.1 $\pm$ 6.2 |7.9 $\pm$ 2.1  |16.4 $\pm$ 5.3 |17.5 $\pm$ 0.9 |
|2013             |10.6 $\pm$ 3     |10.7 $\pm$ 6.7  |28.4 $\pm$ 6.2 |9.4 $\pm$ 2.3  |18.2 $\pm$ 5.7 |17.8 $\pm$ 1   |
|2014             |10 $\pm$ 2.6     |17.3 $\pm$ 9.5  |31.1 $\pm$ 5.9 |8.9 $\pm$ 2    |20.5 $\pm$ 6.7 |19 $\pm$ 0.9   |
|2015             |8 $\pm$ 2.2      |11.4 $\pm$ 5.8  |30.8 $\pm$ 6.1 |11.8 $\pm$ 2.1 |14.8 $\pm$ 5.9 |18.4 $\pm$ 1   |
|2016             |10.9 $\pm$ 2.7   |8.9 $\pm$ 5.6   |29.5 $\pm$ 6.8 |8.5 $\pm$ 1.6  |14.1 $\pm$ 4.7 |19.6 $\pm$ 1.1 |
|Growth           |2.2 $\pm$ 3.5    |-2.3 $\pm$ 8.4  |1.2 $\pm$ 9.6  |-0.8 $\pm$ 2.7 |-2.8 $\pm$ 7.6 |1.2 $\pm$ 1.6  |
|Trend            |0.2 $\pm$ 0.3    |0 $\pm$ 0.9     |0.6 $\pm$ 0.7  |0 $\pm$ 0.3    |-0.1 $\pm$ 0.7 |0.2 $\pm$ 0.2  |
|Trend (Adj)      |0.2 $\pm$ 0.3    |0 $\pm$ 1.4     |0.2 $\pm$ 0.8  |0 $\pm$ 0.2    |0.2 $\pm$ 0.6  |0.2 $\pm$ 0.1  |
|Sample Size/year |909              |191             |278            |1,144          |255            |8,311          |

Table: Percentage of male deaf Americans by race/ethnicity attaining a
High School diploma or equivalent.


#### Hearing Female
\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |21.2 $\pm$ 0.5   |16.1 $\pm$ 1.9  |50.3 $\pm$ 0.9 |14.6 $\pm$ 0.4 |30.4 $\pm$ 1.4 |35.2 $\pm$ 0.2 |
|2009             |21.4 $\pm$ 0.5   |15.2 $\pm$ 1.8  |49.8 $\pm$ 0.8 |14.5 $\pm$ 0.3 |31.4 $\pm$ 1.6 |36 $\pm$ 0.2   |
|2010             |21.8 $\pm$ 0.4   |14.3 $\pm$ 1.4  |50.8 $\pm$ 0.8 |15.2 $\pm$ 0.3 |34 $\pm$ 1.5   |36.4 $\pm$ 0.3 |
|2011             |22.5 $\pm$ 0.5   |15.3 $\pm$ 1.6  |51.4 $\pm$ 0.8 |15.4 $\pm$ 0.4 |32.6 $\pm$ 1.5 |36.4 $\pm$ 0.3 |
|2012             |22.8 $\pm$ 0.5   |15.7 $\pm$ 2    |52.5 $\pm$ 0.7 |16.1 $\pm$ 0.4 |35.4 $\pm$ 1.6 |37.2 $\pm$ 0.2 |
|2013             |23.5 $\pm$ 0.5   |15.7 $\pm$ 1.8  |52.3 $\pm$ 0.7 |16.3 $\pm$ 0.4 |36.1 $\pm$ 1.4 |37.8 $\pm$ 0.3 |
|2014             |23.6 $\pm$ 0.5   |15.8 $\pm$ 1.8  |53 $\pm$ 0.7   |16.5 $\pm$ 0.4 |37 $\pm$ 1.6   |38.6 $\pm$ 0.3 |
|2015             |24.5 $\pm$ 0.6   |15.3 $\pm$ 1.8  |53.7 $\pm$ 0.6 |17.5 $\pm$ 0.4 |39.4 $\pm$ 1.4 |39.2 $\pm$ 0.3 |
|2016             |25.1 $\pm$ 0.5   |15.6 $\pm$ 2    |55.4 $\pm$ 0.7 |17.8 $\pm$ 0.4 |38.4 $\pm$ 1.3 |40.1 $\pm$ 0.3 |
|Growth           |3.9 $\pm$ 0.7    |-0.5 $\pm$ 2.8  |5.1 $\pm$ 1.1  |3.2 $\pm$ 0.5  |8.1 $\pm$ 1.9  |4.9 $\pm$ 0.3  |
|Trend            |0.5 $\pm$ 0.1    |0.1 $\pm$ 0.2   |0.6 $\pm$ 0.1  |0.4 $\pm$ 0.1  |1.1 $\pm$ 0.2  |0.6 $\pm$ 0.1  |
|Trend (Adj)      |0.5 $\pm$ 0.1    |0.1 $\pm$ 0.2   |0.7 $\pm$ 0.1  |0.4 $\pm$ 0    |1.1 $\pm$ 0.2  |0.6 $\pm$ 0.1  |
|Sample Size/year |40,099           |2,721           |26,216         |55,888         |6,327          |233,119        |

Table: Percentage of female hearing Americans by race/ethnicity attaining a
High School diploma or equivalent.

#### Hearing Male
\newline \newline \newline

|                 |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:----------------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|2008             |17.6 $\pm$ 0.6   |10.9 $\pm$ 1.8  |52.8 $\pm$ 0.9 |12.2 $\pm$ 0.3 |27.9 $\pm$ 1.5 |34.8 $\pm$ 0.3 |
|2009             |16.7 $\pm$ 0.5   |12.4 $\pm$ 1.8  |52.9 $\pm$ 0.8 |11.9 $\pm$ 0.4 |28.8 $\pm$ 1.5 |35.1 $\pm$ 0.2 |
|2010             |16.6 $\pm$ 0.5   |14 $\pm$ 1.7    |52.4 $\pm$ 0.8 |12 $\pm$ 0.3   |30.7 $\pm$ 1.5 |34.9 $\pm$ 0.2 |
|2011             |17.9 $\pm$ 0.5   |12.2 $\pm$ 1.6  |52.7 $\pm$ 0.9 |12.4 $\pm$ 0.4 |29.5 $\pm$ 1.3 |34.6 $\pm$ 0.3 |
|2012             |17.3 $\pm$ 0.5   |12.1 $\pm$ 1.9  |53.4 $\pm$ 0.9 |13 $\pm$ 0.4   |31.2 $\pm$ 1.6 |35.2 $\pm$ 0.2 |
|2013             |17.3 $\pm$ 0.5   |13.8 $\pm$ 2    |53.9 $\pm$ 0.7 |13 $\pm$ 0.3   |32.9 $\pm$ 1.6 |35.3 $\pm$ 0.3 |
|2014             |18.1 $\pm$ 0.5   |13.7 $\pm$ 1.9  |53.9 $\pm$ 0.8 |13.5 $\pm$ 0.3 |32 $\pm$ 1.3   |35.6 $\pm$ 0.2 |
|2015             |18.6 $\pm$ 0.5   |13.3 $\pm$ 2.3  |55.3 $\pm$ 0.7 |13.8 $\pm$ 0.4 |34.2 $\pm$ 1.6 |36 $\pm$ 0.3   |
|2016             |19.1 $\pm$ 0.5   |13.2 $\pm$ 1.7  |56.9 $\pm$ 0.7 |14 $\pm$ 0.3   |33.8 $\pm$ 1.3 |36.4 $\pm$ 0.3 |
|Growth           |1.6 $\pm$ 0.7    |2.3 $\pm$ 2.5   |4.1 $\pm$ 1.1  |1.7 $\pm$ 0.5  |5.9 $\pm$ 2    |1.6 $\pm$ 0.4  |
|Trend            |0.3 $\pm$ 0.1    |0.2 $\pm$ 0.2   |0.5 $\pm$ 0.2  |0.3 $\pm$ 0.1  |0.7 $\pm$ 0.2  |0.2 $\pm$ 0.1  |
|Trend (Adj)      |0.2 $\pm$ 0.1    |0.1 $\pm$ 0.2   |0.5 $\pm$ 0.1  |0.2 $\pm$ 0.1  |0.7 $\pm$ 0.2  |0.1 $\pm$ 0.1  |
|Sample Size/year |35,191           |2,520           |22,180         |54,798         |5,817          |222,296        |

Table: Percentage of male hearing Americans by race/ethnicity attaining a
High School diploma or equivalent.

#### Deaf Hearing Differences by Race: Female
\newline \newline \newline

|            |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:-----------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|Growth      |1 $\pm$ 4.4      |-5 $\pm$ 9.5    |-8.2 $\pm$ 9.7 |-0.6 $\pm$ 3.6 |-2.9 $\pm$ 11  |-0.8 $\pm$ 2.2 |
|Trend       |-0.1 $\pm$ 0.3   |-0.9 $\pm$ 0.8  |-0.8 $\pm$ 0.4 |0 $\pm$ 0.4    |-0.5 $\pm$ 1   |0.1 $\pm$ 0.3  |
|Trend (Adj) |-0.2 $\pm$ 0.3   |-0.7 $\pm$ 1.9  |-0.6 $\pm$ 0.9 |-0.3 $\pm$ 0.2 |-2.1 $\pm$ 1.4 |0 $\pm$ 0.2    |

Table: Differences in growth and trends between female deaf and hearing
Americans for each race/ethicity category. Positive Differences indicate faster
growth for deaf Americans.

#### Deaf Hearing Differences by Race: Male
\newline \newline \newline

|            |African American |American Indian |Asian/PacIsl   |Hispanic       |Other          |White          |
|:-----------|:----------------|:---------------|:--------------|:--------------|:--------------|:--------------|
|Growth      |0.6 $\pm$ 3.6    |-4.6 $\pm$ 8.7  |-2.9 $\pm$ 9.7 |-2.5 $\pm$ 2.7 |-8.8 $\pm$ 7.8 |-0.3 $\pm$ 1.6 |
|Trend       |-0.1 $\pm$ 0.3   |-0.2 $\pm$ 0.9  |0.1 $\pm$ 0.7  |-0.2 $\pm$ 0.3 |-0.9 $\pm$ 0.7 |0.1 $\pm$ 0.2  |
|Trend (Adj) |-0.1 $\pm$ 0.3   |0 $\pm$ 1.5     |-0.3 $\pm$ 0.8 |-0.3 $\pm$ 0.2 |-0.5 $\pm$ 0.6 |0.1 $\pm$ 0.2  |

Table: Differences in growth and trends between male deaf and hearing
Americans for each race/ethicity category. Positive Differences indicate faster
growth for deaf Americans.




\newline \newline \newline
![High School completion by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BARaceSexFig-1.png)
\newline \newline \newline
![Change in Bachelor's degree attainment by race/ethnicity over time. Error bars are approximate 95% confidence intervals.](figure/BARaceSexFigChange-1.png)
