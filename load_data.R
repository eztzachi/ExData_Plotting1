library("dplyr")
library("lubridate")

# read the data from file into a data frame tbl
power <-  tbl_df(read.table('household_power_consumption.txt', sep = ';', 
                            header = TRUE, na.strings = '?'))

# create a POSIX Datetime column instead of the raw Date and Time columns
# and filter based on the datetime to metrics between 1st and 2nd of July 2007
power <- power %>%
    mutate(Datetime = paste(Date, Time, sep=" ")) %>%
    mutate(Datetime = dmy_hms(Datetime)) %>%
    select(Datetime, Global_active_power:Sub_metering_3) %>%
    filter(year(Datetime) == 2007 & month(Datetime) == 2 & 
               (day(Datetime) == 1 | day(Datetime) == 2))