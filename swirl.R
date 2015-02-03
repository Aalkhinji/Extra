Install swirl tutorial courses to run within R

require(swirl, downloader) || install.packages("swirl", "downloader")
source('~/.active-rstudio-document', echo=TRUE)
require(downloader) || install.packages("downloader")

library(swirl)
library(downloader)

url <- "https://github.com/swirldev/swirl_courses/archive/master.zip"
zipfile <- "swirl_courses-master.zip"
if(!file.exists(zipfile)) {
  download(url, zipfile)
}

install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Mathematical_Biostatistics_Boot_Camp")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Getting_and_Cleaning_Data")install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Data_Analysis")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Statistical_Inference")install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R_Programming_Alt")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R_Programming")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Open_Intro")


source('~/.active-rstudio-document', echo=TRUE)
# Install swirl tutorial courses to run within R
require(swirl, downloader) || install.packages("swirl", "downloader")
library(swirl)
swirl()
zipfile <- "swirl_courses-master.zip"
url <- "https://github.com/swirldev/swirl_courses/archive/master.zip"
library(swirl)
library(downloader)
url <- "https://github.com/swirldev/swirl_courses/archive/master.zip"
zipfile <- "swirl_courses-master.zip"
if(!file.exists(zipfile)) {
download(url, zipfile)
}
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Mathematical_Biostatistics_Boot_Camp")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Getting_and_Cleaning_Data")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Data_Analysis")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Statistical_Inference")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R_Programming_Alt")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R_Programming")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Open_Intro")
source('~/.active-rstudio-document', echo=TRUE)
require(swirl, downloader) || install.packages("swirl", "downloader")
require(downloader) || install.packages("downloader")
library(swirl)
library(downloader)
url <- "https://github.com/swirldev/swirl_courses/archive/master.zip"
zipfile <- "swirl_courses-master.zip"
if(!file.exists(zipfile)) {
download(url, zipfile)
}
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Mathematical_Biostatistics_Boot_Camp")
install.packages("manipulate", lib="/usr/local/lib/R/site-library")
install.packages("cluster", lib="/usr/lib/R/library")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Getting_and_Cleaning_Data")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Data_Analysis")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Statistical_Inference")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R_Programming_Alt")
library(data.table)
dt <- data.table(x=1:3, y=c(4, 5, 6), z=letters[1:3])
dt
class(dt)
install.packages("data.table")
install.packages("data.table")
```{r, cache=FALSE}
library(knitr)
# Set some global knitr options
library("knitr")
opts_chunk$set(tidy=TRUE, tidy.opts=list(blank=FALSE, width.cutoff=80),cache=TRUE)
```
library(data.table)
dt <- data.table(x=1:3, y=c(4, 5, 6), z=letters[1:3])
dt
class(dt)
install.packages("data.table")
install.packages("data.table")
library(data.table)
DF <- data.frame(x=1:3, y=4:6, z=7:9)
DT <- data.table(x=1:3, y=4:6, z=7:9)
DF[c(2,3)]
DT[c(2,3)]
library(data.table)
DF <- data.frame(x=1:3, y=4:6, z=7:9)
DT <- data.table(x=1:3, y=4:6, z=7:9)
DF[c(2,3), ]
DT[c(2,3), ]
library(data.table)
DF <- data.frame(x=1:3, y=4:6, z=7:9)
DT <- data.table(x=1:3, y=4:6, z=7:9)
DF[, c(2,3)]
DT[, c(2,3)]
## an expression with two statements
{
x <- 1
y <- 2
}
## the last statement in an expression is returned
k <- { print(10); 5 }
print(k)
library(data.table)
DT <- data.table(x=1:5, y=1:5)
DT[, list(mean_x = mean(x), sum_y = sum(y), sumsq=sum(x^2+y^2))]
library(data.table)
DT <- data.table(x=1:5)
DT[, y := x^2]
library(data.table)
DT <- data.table(x=1)
DT2 <- DT
DT[, y := 2]
DT2
library(data.table)
DT <- data.table(x=1:5, y=6:10, z=11:15)
DT[, m := log2( (x+1) / (y+1) )]
library(data.table)
DT <- data.table(x=1:5, y=6:10, z=11:15)
DT[, m := { tmp <- (x + 1) / (y + 1); log2(tmp) }]
url <- "https://github.com/swirldev/swirl_courses/archive/master.zip"
require(swirl, downloader) || install.packages("swirl", "downloader")
install.packages("swirl")
library(swirl)
swirl()
url <- "https://github.com/swirldev/swirl_courses/archive/master.zip"
zipfile <- "swirl_courses-master.zip"
if(!file.exists(zipfile)) {
download(url, zipfile)
}
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Mathematical_Biostatistics_Boot_Camp")
swirl()
mtcars
allMPG <- mtcars$mpg
allMPG
mean(allMPG)
sampleMeanMPG <- mean(allMPG)
sampVarMPG <- var(allMPG)
n <- length(allMPG)
tStat <- '(sampMeanMPG -12.0)  / sqrt(sampVarMPG/n)'
'tStat <- (sampMeanMPG -12.0)  / sqrt(sampVarMPG/n)'
tStat <- 'tStat(sampMeanMPG -12.0)  / sqrt(sampVarMPG/n)'
info()
skip()
myDF <- n-1
tStat
myDF
pVal1 <- pt(tStat, df=myDF, lowe.tail=FALSE)
pVal1 <- pt(tStat, df=myDF, lower.tail=FALSE)
oVal <- pVal1*2
pVal <- pVal1*2
t.test(allMPG, mu=12, alternative="two.sided")
am
am()
am(c(,5))
info()
skip()
mtcars$am
auto <- mtcars[mtcars$am==0]
auto <- mtcars[mtcars$am==0,]
man <- mtacrs[mtcars$am==1,]
man <- mtcars[mtcars$am==1,]
autoMPG <-mtcars$manual
autoMPG <- mtcars$mpg
autoMPG <- auto$mpg
manMPG <- maual$mpg
manMPG <- manual$mpg
manMPG <- man$mpg
sampMeanAutoMPG <- mean(autoMPG)
sampMeanManMPG <- mean(manMPG)
diffSampMean <- sampMeanAutoMPG - sampMeanManMPG
diffSampMean <-  sampMeanManMPG - sampMeanAutoMPG
diffPopMean <- (0)
sampVarAutoMPG < variance(autoMPG)
sampVarAutoMPG <- var(autoMPG)
sampVarManMPG <- var(manMPG)
nAuto <- length(autoMPG)
nMan <- length(manMPG)
numer <- diffpopmean
numer <- diffPopMean -  diffSampMean
numer <- diffSampMean -diffPopMean
denom <- sqrt(sampVarManMPG+sampVarAutoMPG) / nAuto+nMan/n
denom <- sqrt(sampVarManMPG/ nMan + sampVarAutoMPG/nAuto)
tStat <- numer /denom
myDF <- (sampVarManMPG/nMan +sampVarAutoMPG/nAuto)^2 / ((samVarMan/Man)^2/(nMAn-1)+(sampVarAutoMPG/nAuto)^2/(nAuto-1))
myDF <- (sampVarManMPG/nMan +sampVarAutoMPG/nAuto)^2 / ((sampVarMan/Man)^2/(nMAn-1)+(sampVarAutoMPG/nAuto)^2/(nAuto-1))
myDF <- (sampVarManMPG/nMan +sampVarAutoMPG/nAuto)^2 / ((sampVarManMPG/Man)^2/(nMAn-1)+(sampVarAutoMPG/nAuto)^2/(nAuto-1))
myDF <- (sampVarManMPG/nMan +sampVarAutoMPG/nAuto)^2 / ((sampVarManMPG/Man)^2/(nMan-1)+(sampVarAutoMPG/nAuto)^2/(nAuto-1))
myDF <- (sampVarManMPG/nMan +sampVarAutoMPG/nAuto)^2 / ((sampVarManMPG/nMan)^2/(nMan-1)+(sampVarAutoMPG/nAuto)^2/(nAuto-1))
tStat
myDF
pVAl1 <- pt(tStat ,df=myDF, lower.tail=FALSE)
pVal < pVal1*2
pVal <-  pVal1*2
pVal
t.test(allMPG, mu=12,alternative="two.sided")
t.test(autoMPG,manMPG, alternative="two.sided")
sigma <- 10
delta <- >=5
delta <- >5
delta <- 5
zAlph <- qnorm(10, 5 ,sd=1 lower.tail=TRUE)
zAlpha <- qnorm(10, 5 ,1, lower.tail=TRUE)
qnorm(0.95)
zBeta <- qnorm(0.20)
(signa/delta)^2 * (zAlpha - zBeta)^2
(sigma/delta)^2 * (zAlpha - zBeta)^2
effectSize <- delta/sigma
pwr.norm.test(d=effectSize, si.level=0.05, power=0.80, alternative ="greater")
pwr.norm.test(d=effectSize, sig.level=0.05, power=0.80, alternative ="greater")
pwr.t.test(d=effectSize, sig.level=0.05,power=0.80, type="one.sample", alternative="greater")
plot(child~parnets, galton)
plot(child~ parnet, galton)
plot(child~ parent, galton)
plot(jitter(child, 4) ~ parent,galton)
regline <- lm(child ~parent, galton)
regrline <- lm(child ~parent, galton)
abline(regrline, lwd=3, col='red')
summary(regrline)
fit <- lm(child~parent, galton)
summary(fit)
mean(fit$residuals)
cov(fit$residuals, glaton$parent)
cov(fit$residuals, galton$parent)
ols.ic <- fit$coef
ols.ic <- fit$coef[1]
ols.slope <- fit$coef[2]
sltweak <- c(.01, .02, .03, -.01, -.02, -.03)
lhs -rhs
swirl()
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Mathematical_Biostatistics_Boot_Camp")
require(swirl, downloader) || install.packages("swirl", "downloader")
install.packages("swirl", "downloader")
require(downloader) || install.packages("downloader")
library(swirl)
library(downloader)
url <- "https://github.com/swirldev/swirl_courses/archive/master.zip"
zipfile <- "swirl_courses-master.zip"
if(!file.exists(zipfile)) {
download(url, zipfile)
}
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Mathematical_Biostatistics_Boot_Camp")
swirl
resume
resume()
library(swirl)
library(downloader)
swirl
swirl()
info()
bye()
swirl()
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Getting_and_Cleaning_Data")
swirl()
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Statistical_Inference")
swirl()
mydf <- read.csv(path2csv, stringsAsFactors = FALSE)
dim(mydf)
head(mydf)
library(dplyr)
packageVersion("dplyr")
cran <- tbl_df(mydf)
rm("mydf")
cran(tbl_df)
cran
?select
select(cran, ip_id, package, country)
5:20
select(cran, r_arch:country)
select(cran, country:r_arch)
select(cran, df, country)
select(cran)
info()
skip()
select(cran, -time)
-5:20
-(5:20)
select(cran, -(x:size))
select(cran, -(X:size))
filter(cran, package=="swirl")
filter(cran, r_version =="3.1.1", country =="US")
?Comparison
filter(cran, r_version =="3.0.2", country =="IN")
filter(cran, r_version <=="3.0.2", country =="IN")
filter(cran, r_version <="3.0.2", country =="IN")
filter(cran,  country =="US"|country =="IN")
filter(cran, r_os >100500, r_os== "linux-gnu)
filter(cran, r_os >100500, r_os== "linux-gnu")
filter(cran, size >100500, r_os== "linux-gnu")
is.na(c(3,5,NA,10))
!is.na(c(3,5,NA,10))
filter(cran, !is.na(r_version), r_os== "linux-gnu")
filter(cran, !is.na(r_version))
cran2 <- select(ip_id)
cran2 <- select(cran, ip_id)
cran2 <- select(cran, size:ip_id)
arrange(cran2, ip_id)
arrange(cran2, desc(ip_id))
arrange(cran2, package,ip_id)
arrange(cran2, country (ascending), r_version(descending), ip_id(ascending))
arrange(cran2, country(ascending), r_version(descending), ip_id(ascending))
skip()
cran3 <- select(package,ip_id, size=3)
cran3 <- select(ip_id, size=3, package)
cran3 <- select(cran2, ip_id size=3)
skip()
head(cran3)
cran3
mutate(cran3, size_mb = size /2^20)
mutate(cran3, size_gb = size_mb /2^10)
mutate(cran3, size_gb = size_mb /2^10)
skip()
mutate(cran3,size_mb=size, size_gb = size_mb /2^10,correct_size= size)
mutate(cran3,,correct_size= size +1000)
mutate(cran3,,correct_size= size + 1000)
skip()
avg_bytes <- summarize(cran, avg_bytes = mean(size))
summarize(cran, avg_bytes = mean(size))
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Getting_and_Cleaning_Data")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Data_Analysis")
swirl()
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R_Programming_Alt")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R_Programming")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Open_Intro")


