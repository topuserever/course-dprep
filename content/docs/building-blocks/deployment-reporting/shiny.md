## Shiny apps

https://www.youtube.com/watch?v=IgHHXcSfM7c
* Shiny is an open source R package which combintes the computational power of R with the interactivity of the modern web.
* It provides a powerful web framework for building web applications using R.
* Shiny helps you turn your analyses into interactive web applications without requiring HTML, CSS, or Javascript knowledge.
* Enables standalone apps on a webpage or embed them in R Markdown documents or build dashboards


A Shiny application has 2 parts
1. UI code (HTML5)
2. Server code (R)

Kunt ervoor kiezen om ze samen te voegen tot 1 bestand (`app.R`)

```
library(shiny)
ui <- fluidPage(
  # the design, look and feel
  )
server <- function(input, output){
  # logic / algorithms / charts
}

# initate basic Shiny app
shinyApp(ui = ui, server=server)

```

* Run App button
* Can also open the app in your browser


* Generate template with:
  - File > New File > Shiny Web App
