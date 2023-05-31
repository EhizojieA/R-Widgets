library('shiny')

ui <-fluidPage(
  titlePanel("Basic Widgets"),
  
  fluidRow(
    
    column(3,
           h3("Buttons"),
           actionButton("Action", "Submit"),
           br(),
           br(),
           submitButton("Submit")),
  
    column(3,
         h3("Single Checkbox"),
         checkboxInput("Checkbox", "Choice A", value = TRUE))
,

    column(3,
          checkboxGroupInput("checkGroup",
                        h3("Checkbox Group"),
                        choices = list("Choice 1" = 1,
                                       "Choice 2" = 2,
                                       "Choice 3" = 3),
                        selected = 1)
                        ),
          ),
                        
    column(3,
           dateInput("date",
                         h3("Date input"),
                         value = "2014-01-01")
                        ),
          

    fluidRow(
      
      column(3,
             dateRangeInput("dates", h3("Date range"))),
      
      column(3, 
             fileInput("file", h3("File upload here"))),
      
      column(3,
             h3("Help Text"),
             helpText("Not a true widget")),
column(3,
       numericInput("Numeric Input",
         h3("Please enter a numeric input here"),
       value = 1))),

    fluidRow(
      
      column(3,
             radioButtons("radio", h3("Radio Buttons"),
                          choices = list("Choice 1" = 1,
                                         "Choice 2" = 2,
                                         "Choice 3" = 3),
                          selected = 1)),
      
      column(3,
             selectInput("select", h3("Select box"),
                         choices = list("Choice 1" = 1,
                                        "Choice 2" = 2,
                                        "Choice 3" = 3),
                         selected = 3)),
      
      column(3, 
             sliderInput("select", h3("Sliders"),
                         min = 0, max = 100, value = 25),
             sliderInput("slider2", "",
                         min = 0, max = 100, value = c(25, 75))
    ),
    
    column(3,
           textInput("text", h3("Text input"),
                     value = "Please type here..."))
)
)

    



server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)
