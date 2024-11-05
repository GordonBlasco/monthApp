## code to prepare `rain_data` dataset goes here
set.seed(123)  # For reproducibility

# Sample zip codes for demonstration
zip_codes <- sprintf("%05d", 501:99950)

# Generate synthetic data for 2023
generate_rain_data <- function() {
  tidyr::expand_grid(
    month = month.name,
    zip_code = zip_codes) |>
    dplyr::mutate(
    rainy_days = round(pmax(0, rnorm(12 * length(zip_codes), mean = 10, sd = 5)))
  )
}

rain_data <- generate_rain_data()


usethis::use_data(rain_data, overwrite = TRUE)
