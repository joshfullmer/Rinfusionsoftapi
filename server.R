library(shiny)

source('./infusionsoft.R')

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  
  #Table Getter
  tableData <- reactive({
    getTable(input$appname,input$apikey,input$tableSelect)
    
  })
  
  output$tableContent <- renderTable({
    
    tableData()
    
  })
  
  output$tableDownload <- downloadHandler(
    filename = function() {paste(input$tableSelect,".csv",sep="")},
    content = function(file) {
      write.csv(tableData(),file,row.names=F,na="")
    }
  )
  
  #File Attachments
  # dir
  shinyDirChoose(input, 'dir', roots = c(home = '~'), filetypes = c('', 'txt'))
  dir <- reactive(input$dir)
  output$dir <- renderPrint(dir())
  
  # path
  path <- reactive({
    home <- normalizePath("~")
    file.path(home, paste(unlist(dir()$path[-1]), collapse = .Platform$file.sep))
  })
  
  # files
  output$files <- renderPrint(list.files(path()))
  
  session$onSessionEnded(function() {
    stopApp()
  })
})
