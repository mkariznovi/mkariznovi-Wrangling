library(dslabs)
library(tidyverse)
library(rvest)
# path <- system.file("extdata",package = "dslabs")
# list.files(path)
# filename <- "murders.csv" 
# fullpath <- file.path(path,filename)
# fullpath
# file.exists(filename)
# file.copy(fullpath,getwd())
# library(tidyverse)
# library(readxl)
# read_lines("murders.csv",n_max=3)
# dat <- read.csv(fullpath)
# head(dat)
# filename <- "murders.csv"
# filename1 <- "life-expectancy-and-fertility-two-countries-example.csv"
# filename2 <- "fertility-two-countries-example.csv"
# dat=read.csv(file.path(path, filename))
# dat1=read.csv(file.path(path, filename1))
# dat2=read.csv(file.path(path, filename2))
# url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
# dat< - read_csv(url)
# head(dat)
# download.file(url,"goli")
# url1 <-"http://mlr.cs.umass.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data"
# dat3 <- read_csv(url1,col_names = FALSE)
# nrow(dat3)
# ncol(dat3)
# library(tidyverse)
# path <- system.file("extdata",package = "dslabs")
# filename <- file.path(path,"fertility-two-countries-example.csv")
# wide_data <- read_csv(filename)
# library(dslabs)
# data("gapminder")
# tidy_data <- gapminder %>% filter(country %in% c("South Korea","Germany"))%>% select(country,year,fertility)
# new_tidy_data <- wide_data %>% gather(year,fertility, "1960":"2015") 
# path <- system.file("extdata", package = "dslabs")
# filename <- file.path(path, "life-expectancy-and-fertility-two-countries-example.csv")
# raw_data <- read_csv(filename)
# select(raw_data,1:5)
# dat <- raw_data %>% gather(key, value,-country)
# head(dat)
# dat <- separate(key , c(" year","variable_names"))
# dat$key[1:5]
# dat %>% 
#   separate(key, c("year", "first_variable_name", "second_variable_name"), fill = "right") %>%
#   unite(variable_name, first_variable_name, second_variable_name, sep="_") %>%
#   spread(variable_name, value) %>%
#   rename(fertility = fertility_NA)
# dat %>% separate(key, c("year", "variable_name"), sep = "_", extra = "merge") %>% spread(variable_name,value)

# co2_wide <- data.frame(matrix(co2, ncol = 12, byrow = TRUE)) %>% 
#   setNames(1:12) %>%
#   mutate(year = as.character(1959:1997))
# co2_tidy <- gather(co2_wide, month,co2,-year)
# co2_tidy %>% ggplot(aes(as.numeric(month), co2, color = year)) + geom_line()
# library(dslabs)
# data(admissions)
# dat <- admissions %>% select(-applicants)
# dat_tidy <- spread(dat,key = gender, value = admitted)
# tmp <- gather(admissions, key, value, admitted:applicants)
# tmp
# tmp2 <- unite(tmp, column_name, c(gender,key))
# x <- tmp2 %>%  spread(key = column_name, value = value)
# library(Lahman)
# library(Lahman)
# top <- Batting %>% 
#   filter(yearID == 2016) %>%
#   arrange(desc(HR)) %>%    # arrange by descending HR count
#   slice(1:10)    # take entries 1-10
# top %>% as_tibble()
# Master %>% as_tibble()
# top_names <- top %>% left_join(Master) %>%
#   select(playerID, nameFirst, nameLast, HR)
# Salaries
# top_salary <- Salaries %>% filter(yearID == 2016) %>%
#    right_join(top_names)%>%
#   select(nameFirst, nameLast, teamID, HR, salary)
# nrow(AwardsPlayers)
# Awards_2016 <- AwardsPlayers %>% filter(yearID == 2016)
# A <- length(intersect(Awards_2016$playerID,top$playerID))
# B <- length(setdiff(Awards_2016$playerID,top$playerID))
# url <- "https://en.wikipedia.org/wiki/Murder_in_the_United_States_by_state"
# h <- read_html(url)
# class(h)
# tab <- h %>% html_nodes("table")
# tab <- tab[[2]]
# tab <- tab %>% html_table()
# tab <- tab %>% setNames(c("state", "population", "total", "murders", "gun_murders", "gun_ownership", "total_rate", "murder_rate", "gun_murder_rate"))
# head(tab)
library(rvest)
# url <- "https://web.archive.org/web/20181024132313/http://www.stevetheump.com/Payrolls.htm"
# h <- read_html(url)
# nodes <- html_nodes(h, "table")
# html_text(nodes[[8]])
# html_table(nodes[[8]])
# # T1 <- html_table(nodes[[1]])
# # T2 <- html_table(nodes[[2]])
# # T3 <- html_table(nodes[[3]])
# # T4 <- html_table(nodes[[4]])
# # T19 <- html_table(nodes[[19]])
# # T20 <- html_table(nodes[[20]])
# # T21 <- html_table(nodes[[21]])
# tab_1 <- html_table(nodes[[10]],header = TRUE)
# tab_2 <- html_table(nodes[[19]],header = TRUE)
# tab_1 <- select(tab_1,-c("No."))
# tab_3 <- full_join(tab_1,tab_2,by="Team")
library(rvest)
library(tidyverse)
# url <- "https://en.wikipedia.org/w/index.php?title=Opinion_polling_for_the_United_Kingdom_European_Union_membership_referendum&oldid=896735054"
# h <- read_html(url)
# tab <-html_nodes(h,"table")
# T <- html_table(tab[[5]],fill=TRUE)
# head(T)
# s <- '5\'10"'
# cat(s)
# # murders_raw was defined in the web scraping section
# 
# # detect whether there are commas
# commas <- function(x) any(str_detect(x, ","))
# murders_raw %>% summarize_all(funs(commas))
# 
# # replace commas with the empty string and convert to numeric
# test_1 <- str_replace_all(murders_raw$population, ",", "")
# test_1 <- as.numeric(test_1)
# 
# # parse_number also removes commas and converts to numeric
# test_2 <- parse_number(murders_raw$population)
# identical(test_1, test_2)
# 
# murders_new <- murders_raw %>% mutate_at(2:3, parse_number)
# murders_new %>% head
# cat(" LeBron James is 6’8\" ")
# ulr <-"https://www.worldometers.info/coronavirus/"
# covid <- html_nodes(read_html(ulr),"table")
# Covid_table <- html_table(covid[[1]])
# covid_my_table <- Covid_table%>% mutate_at(3:14,parse_number)
# data("reported_heights")
# class(reported_heights)
# x <- as.numeric(reported_heights$height)
# head(x)
# sum(is.na(x))
# reported_heights %>% mutate(new_height = as.numeric(height)) %>%
#   filter(is.na(new_height)) %>% 
#   head(n=10)
# pattern <- "^\\d$"
# yes <- c("1", "5", "9")
# no <- c("12", "123", " 1", "a4", "b")
# str_view(c(yes, no), pattern)
s <- c("70","5 ft","4'11","",".","Six feet")
# pattern <- "\\d|ft"
# str_view_all(s,pattern)
# animals <- c("cat", "puppy", "Moose", "MONKEY")
# pattern <- "[a-z]"
# str_detect(animals, pattern)
# animals <- c("cat", "puppy", "Moose", "MONKEY")
# pattern <- "^[A-Z]"
# str_detect(animals, pattern)
# animals <- c("cat", "puppy", "Moose", "MONKEY")
# pattern <- "[a-z]{4,5}"
# str_detect(animals, pattern)
# animals <- c("moose", "monkey", "meerkat", "mountain lion")
# pattern <- “mo+”
# # str_detect(animals, pattern)
# problems <- c("5.3", "5,5", "6 1", "5 .11", "5, 12")
# pattern_with_groups <- "^([4-7])[,\\.\\s](\\d*)$"
# str_replace(problems, pattern_with_groups, "\\1'\\2")
# s <- c("5'10", "6'1\"", "5'8inches", "5'7.5")
# tab <- data.frame(x = s)
# extract(data = tab, col = x, into = c(“feet”, “inches”, “decimal”), 
# #         regex = "(\\d)'(\\d{1,2})(\\.)?"
# library(rvest)
# library(tidyverse)
# library(stringr)
# url <- "https://en.wikipedia.org/w/index.php?title=Opinion_polling_for_the_United_Kingdom_European_Union_membership_referendum&oldid=896735054"
# tab <- read_html(url) %>% html_nodes("table")
# polls <- tab[[5]] %>% html_table
# names(polls) <- c("dates", "remain", "leave", "undecided", "lead", "samplesize", "pollster", "poll_type", "notes")
# polls <- polls[str_detect(polls$remain, "%"), -9]
# nrow(polls)
# as.numeric(str_replace(polls$remain, "%", ""))/100
# str_replace(polls$undecided,"N/A","0")
# library(dslabs)
# library(lubridate)
# options(digits = 3) 
# data(brexit_polls)
# !is.na(brexit_polls$startdate)
# x <- round_date(brexit_polls$enddate,unit = "week")
# sum(month(brexit_polls$startdate) == "4")
# sum(x=="2016-06-12")
# week_day <- weekdays(brexit_polls$enddate)
# data("movielens")
# dates <- as_datetime(movielens$timestamp)
# reviews_by_year <- table(year(dates))    # count reviews by year
# names(which.max(reviews_by_year))    # name of year with most reviews
install.packages("tidytext","gutenbergr")
library(tidyverse)
library(gutenbergr)
library(tidytext)
options(digits = 3)
data("gutenberg_metadata")
gutenberg_metadata %>%
  filter(str_detect(title, "Pride and Prejudice"))  %>%
  summarise(n = n_distinct(gutenberg_id)) %>%gutenberg_works()
