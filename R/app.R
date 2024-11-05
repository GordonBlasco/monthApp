#' Run the app
#'
#' @param ... passed on to \code{\link{shiny::shinyApp}}
#'
#' @export
#'
monthApp <- function(...) {
  months <- c(
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  )

  ui <- navbarPage(
    "Sample app",
    id = 'homepage',
    tabPanel("Pick a month",
      selectInput("month", "What's your favourite month?", choices = months)
    ),
    tabPanel("Feedback", monthFeedbackUI("tab1")),
    tabPanel("Birthstone", birthstoneUI("tab2")),
    tabPanel("Weather", weatherUI("tab3"))
  )
  server <- function(input, output, session) {
    shinylogs::track_usage(storage_mode = shinylogs::store_rds(path = "logs/"))
    monthFeedbackServer("tab1", reactive(input$month))
    birthstoneServer("tab2", reactive(input$month))
    weatherServer("tab3", reactive(input$month))
  }
  shinyApp(ui, server, ...)
}
