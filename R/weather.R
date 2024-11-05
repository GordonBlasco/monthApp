weatherUI <- function(id) {
  tagList(
    textInput(NS(id, "zip_input"), "Enter Zip Code:"),
    p(
      "In ", textOutput(NS(id, "month"), inline = TRUE),
      " for zip code ", textOutput(NS(id, "zip"), inline = TRUE),
      ", the average number of rainy days is ", textOutput(NS(id, "rainy_days"), inline = TRUE)
    )
  )
}

weatherServer <- function(id, month) {
  stopifnot(is.reactive(month))

  moduleServer(id, function(input, output, session) {
    rainy_days <- reactive({
      req(input$zip_input)  # Ensure zip code is entered
      zip <- input$zip_input
      avg_rain <- rain_data$rainy_days[rain_data$month == month() & rain_data$zip_code == zip]
      if (length(avg_rain) == 0) return("Data not available")
      avg_rain
    })

    output$month <- renderText(month())
    output$zip <- renderText(input$zip_input)
    output$rainy_days <- renderText(rainy_days())
  })
}
