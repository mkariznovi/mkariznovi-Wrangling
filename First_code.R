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
url <- "https://en.wikipedia.org/w/index.php?title=Opinion_polling_for_the_United_Kingdom_European_Union_membership_referendum&oldid=896735054"
h <- read_html(url)
tab <-html_nodes(h,"table")
T <- html_table(tab[[5]],fill=TRUE)
head(T)