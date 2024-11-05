monthFeedbackUI <- function(id) {
  textOutput(NS(id, "feedback"))
}
monthFeedbackServer <- function(id, month) {
  stopifnot(is.reactive(month))

  moduleServer(id, function(input, output, session) {
    output$feedback <- renderText({
      interesting_month_fact |>
        dplyr::filter(month() == Month) |>
        dplyr::pull(Fact)
    })
  })
}
