name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0) # in miles
time <- c(10, 30, 40, 50) # in minutes

time_hrs <- time/60
time_hrs

mph <- distance/time_hrs
mph

racing_times <- data.frame (racer = name, distance = distance, speed = mph)
racing_times