# Load necessary libraries
if (!require(httr)) install.packages("httr", dependencies = TRUE)
library(httr)

if (!require(jsonlite)) install.packages("jsonlite", dependencies = TRUE)
library(jsonlite)

# Define API base URL and query parameters

base_url <- "https://archive-api.open-meteo.com/v1/archive"

params <- list(
  latitude = 40.7128,
  longitude = -74.0060,
  start_date = "2014-01-02",
  end_date = "2024-12-31",
  temperture_unit = "fahrenheit",
  hourly = "temperature_2m,precipitation,relative_humidity_2m,dew_point_2m",
  timezone = "America/New_York"
)

response <- GET(url = base_url, query = params)
# Corrected typo 'qury' to 'query'


if (status_code(response) != 200) {
  stop(paste("Failed to retrieve data. Status code:", status_code(response)))
}

#changed to use status_code function instead because response$status is not a valid property of an httr response object.


json_data <- content(response, as = "text", encoding = "UTF-8")

weather_data <- fromJSON(json_data, flatten = TRUE)

if (!"hourly" %in% names(weather_data)) {
  stop("Unexpected data format: 'hourly' field not found in the API response.")
}

hourly <- weather_data$hourly

# Check available column names for accuracy
str(hourly)

df <- data.frame(
  time = as.POSIXct(hourly$time, formt = "%Y-%m-%dT%H:%M", tz = "America/New_York"),
  temperature = hourly$temperature_2m,
  precipitation = hourly$precipitation,
  relative_humidity = hourly$relative_humidity_2m,
  dew_point = hourly$dew_point_2m
)

# fixed 'temp' to 'temperature_2m'

png(filename = "weather_plots.png", width = 800, height = 800)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))

plot(df$time, df$temp, type = "l", col = "blue",
     main = "Temperature over Time",
     xlab = "Time", ylab = "Temperature (°F)")

plot(df$time, df$precipitation, type = "l", col = "blue",
     main = "Precipitation over Time",
     xlab = "Time", ylab = "Precipitation")

plot(df$time, df$relative_humidity, type = "l", col = "blue",
     main = "Relative Humidity over Time",
     xlab = "Time", ylab = "Relative Humidity (%)")

plot(df$time, df$dew_point, type = "l", col = "blue",
     main = "Dew Point over Time",
     xlab = "Time", ylab = "Dew Point (°F)")

dev.off()

saveRDS(df, file = "historical_weather_data.rds")

cat("Data download, visualization, and saving complete.\n")

