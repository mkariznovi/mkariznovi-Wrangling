library(dslabs)
path <- system.file("extdata",package = "dslabs")
list.files(path)
filename <- "murders.csv" 
fullpath <- file.path(path,filename)
fullpath
file.exists(filename)
file.copy(fullpath,getwd())
