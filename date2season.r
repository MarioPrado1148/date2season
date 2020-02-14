# Packages dependencies: 
    # dplyr (between)
    # lubridate (year)

# Date format: YYYY-MM-DD

get.seasons <- function(dates, hemisphere = "N"){
    year(dates) <- 0
    
    if (hemisphere == "N"){
        seasons <- c("winter", "spring", "summer", "fall")
    } else {
        seasons <- c("summer", "fall", "winter", "spring")
    }
    
    return(
        ifelse(between(dates,as.Date('0-03-21'), as.Date('0-06-20')),seasons[2],
            ifelse(between(dates,as.Date('0-06-21'), as.Date('0-09-20')),seasons[3],
            ifelse(between(dates,as.Date('0-09-21'), as.Date('0-12-20')),seasons[4],
            seasons[1]
        )))
    )
}
