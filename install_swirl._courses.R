# Install swirl tutorial courses to run within R

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
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Getting_and_Cleaning_Data")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Data_Analysis")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Statistical_Inference")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R_Programming_Alt")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="R_Programming")
install_course_zip("swirl_courses-master.zip", multi=TRUE, which_course="Open_Intro")

