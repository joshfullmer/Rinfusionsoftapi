library(shiny)

source('./infusionsoft.R')

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  
  #########################################################################################
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
  
  #########################################################################################
  #File Attachments
  #TODO:
  #Gate files uploaded by filesize
  #Gate files uploaded by file extension
  library(base64enc)
  library(plyr)
  
  #DIRECTORY
  #opens the connection to the file directory picker
  shinyDirChoose(input, 'dir', roots = c(home = '~'), filetypes = c(''))
  
  #store the chosen directory
  dir <- reactive(input$dir)
  
  #displays directory on UI
  output$dir <- renderPrint(dir())
  
  #PATH
  #returns the path breakdown of the chosen directory
  path <- reactive({
    home <- normalizePath("~")
    file.path(home, paste(unlist(dir()$path[-1]), collapse = .Platform$file.sep))
  })
  
  #FILE UPLOAD
  #displays all files in the chosen directory
  output$files <- renderPrint(list.files(path()))
  
  #File upload handler
  fileUpload <- eventReactive(input$upload,{
    
    #reads uploaded attachment csv
    attachments <- read.csv(input$fileAttachmentsFile$datapath,header=T)
    
    attachments["errorReason"] <- ""
    
    #create empty data frame to store skipped attachments
    skippedattachments <- data.frame()
    
    #foreach row in attachments file
    for(x in 1:nrow(attachments)) {
      
            #valid file checker (confirms if entire row has data, and that file exists)
      containsNA <- anyNA(attachments[x,])
      print("Contains NA")
      print(containsNA)
      if (containsNA == T) {
        attachments[x,]$errorReason <- "Insufficient Data"
        skippedattachments <- rbind.fill(skippedattachments,attachments[x,])
        next
      }
      
      validFile <- file.exists(paste(parseDirPath(c(home = '~'),dir()),attachments[x,]$filepath,sep="/"))
      print("Valid File?")
      print(validFile)
      if (validFile == F) {
        attachments[x,]$errorReason <- "File not found"
        skippedattachments <- rbind.fill(skippedattachments,attachments[x,])
        next
      }
      
      #check for the current rows file size
      filesizecheck <- file.info(paste(parseDirPath(c(home = '~'),dir()),attachments[x,]$filepath,sep="/"))$size < 10 * 1024 * 1024
      print("Filesize?")
      print(filesizecheck)
      if (filesizecheck == F) {
        attachments[x,]$errorReason <- "File size limit exceeded"
        skippedattachments <- rbind.fill(skippedattachments,attachments[x,])
        next
      }
      
      #check that the files extension is in the list of supported file types
      extensioncheck <- attachments[x,]$extension %in% supportedFileTypes
      print("File extension?")
      print(extensioncheck)
      if (extensioncheck == F) {
        attachments[x,]$errorReason <- "Unsupported file type"
        skippedattachments <- rbind.fill(skippedattachments,attachments[x,])
        next
      }
      
      #API call
      #https://developer.infusionsoft.com/docs/xml-rpc/#file-upload-a-file
      xml.rpc(paste("https://",input$appnameAttachment,".infusionsoft.com/api/xmlrpc",sep=""),
              "FileService.uploadFile",
              input$apikeyAttachment,
              attachments[x,]$id,
              as.character(attachments[x,]$filename),
              base64encode(paste(parseDirPath(c(home = '~'),dir()),attachments[x,]$filepath,sep="/"))
      )
    }
    
    write.csv(skippedattachments,paste(parseDirPath(c(home = '~'),dir()),"Skipped Attachments.csv",sep="/"),row.names = F)
  })
  
  output$status <- renderPrint({
    fileUpload()
  })
  
  
  
  session$onSessionEnded(function() {
    stopApp()
  })
})
