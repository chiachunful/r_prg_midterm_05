load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
this_year <- as.numeric(format(Sys.Date(), '%Y'))
birth_year <- this_year - straw_hat_df$age
birth_date_chr <- paste(birth_year, straw_hat_df$birthday, sep = "-")
straw_hat_df$birth_date <- as.Date(birth_date_chr)

library(magrittr)
sys_year_num <- Sys.Date() %>%
  format(format = "%Y") %>%
  as.numeric()
birth_year <- sys_year_num - straw_hat_df$age
birth_date <- paste(birth_year, straw_hat_df$birthday, sep = "-") %>%
  as.Date()
class(birth_date)

library(magrittr)
sys_year_num <- Sys.Date() %>%
  format(format = "%Y") %>%
  as.numeric() %>%
  `-`(straw_hat_df$age) %>%
  paste("-",straw_hat_df$birthday, sep= "")%>%
  as.Date()
class(birth_date)
