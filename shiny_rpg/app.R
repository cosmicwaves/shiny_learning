rpgSelect <- function(inputId, label, choices,
                      selected = NULL, multiple = FALSE,
                      size = NULL
){
  shiny::selectInput(
    inputId,
    label,
    choices,
    selected,
    multiple,
    selectize=FALSE,
    width= NULL,
    size
  )
}

rpgSelect(inputId = "variable",
          label = "Variable:",
          choices = c("Cylinders" = "cyl",
                      "Transmission" = "am",
                      "Gears" = "gear")
          )


