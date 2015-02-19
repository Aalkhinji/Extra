# Test exam

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:
##Q:1 x and y are two datatable in R , join the two table in one command.

```r
library(data.table)
x <- data.table(a=c(3:5), b=c(13:15))
y <- data.table(b=c(12:14), d=c(2:4))
x
```

```
##    a  b
## 1: 3 13
## 2: 4 14
## 3: 5 15
```

```r
y
```

```
##     b d
## 1: 12 2
## 2: 13 3
## 3: 14 4
```

```r
setkey(x,"b")
setkey(y, "b")
x[y, nomatch=0]
```

```
##    a  b d
## 1: 3 13 3
## 2: 4 14 4
```


##Q:2 z is datatable in R with three columns.Write a one line command to compute the averagegrade for each student by assignment type and sort it by grade from high to low.

```r
n <-100
z <- data.table(student_name=sample(letters,n,replace=TRUE), grade=rnorm(100,mean=70, sd=10), assignment_type=c(1:98, n, replace=TRUE))
z[,list(mgrade=mean(grade)), by= (assignment_type)][order(mgrade)]
```

```
##     assignment_type   mgrade
##  1:              96 48.51022
##  2:              79 48.77980
##  3:              43 52.66966
##  4:              23 55.06843
##  5:              51 55.33627
##  6:              69 57.35661
##  7:              61 58.19542
##  8:              41 58.55888
##  9:              63 58.58482
## 10:              71 58.93202
## 11:              85 59.04708
## 12:              47 59.81031
## 13:               7 60.35941
## 14:              70 60.54279
## 15:              73 60.68031
## 16:              90 60.79737
## 17:              39 60.91560
## 18:              27 61.26654
## 19:               6 61.36268
## 20:              68 61.39662
## 21:              14 61.63906
## 22:              93 61.65630
## 23:               3 61.76342
## 24:              76 61.82115
## 25:              44 62.49460
## 26:              59 63.58447
## 27:              42 63.63748
## 28:              20 63.99038
## 29:              72 63.99361
## 30:              91 64.11448
## 31:              80 64.58598
## 32:               8 64.80857
## 33:              21 64.96074
## 34:              55 64.98874
## 35:              86 65.19133
## 36:              12 65.48793
## 37:              15 65.83362
## 38:              19 66.25442
## 39:              26 66.49118
## 40:               5 66.96766
## 41:              60 67.37894
## 42:              18 67.53322
## 43:               9 67.73601
## 44:              53 68.17793
## 45:              31 68.34098
## 46:              37 68.43692
## 47:              74 68.48972
## 48:              29 68.49659
## 49:               2 68.93701
## 50:              65 68.96484
## 51:              56 68.97936
## 52:              84 69.33896
## 53:               1 69.35871
## 54:              98 69.39655
## 55:              34 69.68898
## 56:              25 69.74223
## 57:              32 69.94348
## 58:              66 70.35127
## 59:              28 70.54808
## 60:              64 70.82999
## 61:              36 71.12723
## 62:              81 71.24607
## 63:              10 71.63857
## 64:              35 71.81163
## 65:              45 71.96320
## 66:              97 72.16785
## 67:              78 72.60382
## 68:              58 73.07280
## 69:              24 73.09276
## 70:              11 73.57418
## 71:              49 73.90285
## 72:              16 74.08318
## 73:              95 74.17962
## 74:              40 74.69044
## 75:              46 74.71296
## 76:              83 76.24241
## 77:              48 76.32455
## 78:              77 76.42858
## 79:              50 76.65408
## 80:              22 76.67238
## 81:              38 76.88962
## 82:              82 77.82224
## 83:              57 77.97954
## 84:              92 78.93330
## 85:              52 79.34700
## 86:              13 79.58319
## 87:              89 79.59151
## 88:              87 79.71980
## 89:              88 79.76852
## 90:              30 81.19723
## 91:              62 83.40690
## 92:              75 83.96904
## 93:              67 84.51072
## 94:              33 86.27707
## 95:              94 86.31535
## 96:              54 86.74480
## 97:             100 88.13597
## 98:               4 91.16238
## 99:              17 91.71157
##     assignment_type   mgrade
```

Aisha, you might try something like this to group by both student name and 
assignment type and sort by grade decreasing from highest to lowest:


```r
# Students Example

library(randomNames)
library(data.table)

n <- 200
z <- data.table(
    student_name=as.factor(sample(randomNames(40), n, replace=TRUE)), 
                           grade=rnorm(n, mean = 70, sd=5), 
                           assignment_type=as.factor(sample(1:10, n, replace=TRUE)), 
                           key="student_name")
str(z)
```

```
## Classes 'data.table' and 'data.frame':	200 obs. of  3 variables:
##  $ student_name   : Factor w/ 40 levels "Beal, Alyssa",..: 1 1 1 2 2 3 3 3 3 3 ...
##  $ grade          : num  66.2 73.1 68.2 66.5 74.7 ...
##  $ assignment_type: Factor w/ 10 levels "1","2","3","4",..: 5 4 7 5 8 9 5 7 9 8 ...
##  - attr(*, "sorted")= chr "student_name"
##  - attr(*, ".internal.selfref")=<externalptr>
```

```r
grades <- z[, list(meangrade=mean(grade)), 
            by=.(student_name,assignment_type)][order(meangrade, decreasing = TRUE)]
summary(grades)
```

```
##              student_name assignment_type   meangrade    
##  Kamanawa, Ezequiel:  7   3      :21      Min.   :58.64  
##  Driver, Sakou     :  6   5      :19      1st Qu.:66.56  
##  Okubo, Marqui     :  6   2      :17      Median :69.62  
##  Skaggs, Roman     :  6   10     :17      Mean   :69.66  
##  Stevenson, Destiny:  6   4      :16      3rd Qu.:72.84  
##  Welch, Brooke     :  6   6      :16      Max.   :86.94  
##  (Other)           :121   (Other):52
```

```r
grades
```

```
##           student_name assignment_type meangrade
##   1:    Cordova, Derek               3  86.93744
##   2:     Fung, Michael               7  81.80343
##   3:       Park, Harry               3  79.46633
##   4:     Temple, Trang               3  78.62367
##   5:   Hastings, Adela               4  78.32643
##  ---                                            
## 154:     Okubo, Marqui               3  60.52180
## 155: Escamilla, Eleana               4  60.14149
## 156:    Cordova, Derek               1  59.65667
## 157: Cottrell, Faviola               5  59.42802
## 158: Camagong, Trazell               3  58.63659
```

##Q:3 Let E be an expressionSet in R, how would you retrive the expression.
```

##ExpressionSet
exprs(E), fData(E), pData(E)

```




##Q:4 Design matrix in limma, what contrst would you test?
```
library(limma)
mm <- model.matrix(~day+subject, eSet)
```

