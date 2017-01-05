#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyFiles)

# Define UI for application that draws a histogram
shinyUI(navbarPage(theme = "bootstrap.css","Infusionsoft API Tools",
                   tabPanel("Get Table",
                            sidebarLayout(
                              sidebarPanel(
                                textInput("appname","App Name:"),
                                textInput("apikey","API Key:"),
                                #submitButton("Get Table"),
                                p("This function will remove all blank columns contained in a CSV file.")
                              ),
                              mainPanel(
                                            selectInput("tableSelect",
                                            label = h3("Choose a table"),
                                            choices = list("ActionSequence"="ActionSequence","AffResource"="AffResource","Affiliate"="Affiliate","CCharge"="CCharge","CProgram"="CProgram","Campaign"="Campaign","CampaignStep"="CampaignStep","Campaignee"="Campaignee","Company"="Company","Contact"="Contact","ContactAction"="ContactAction","ContactGroup"="ContactGroup","ContactGroupAssign"="ContactGroupAssign","ContactGroupCategory"="ContactGroupCategory","CreditCard"="CreditCard","DataFormField"="DataFormField","DataFormGroup"="DataFormGroup","DataFormTab"="DataFormTab","EmailAddStatus"="EmailAddStatus","Expense"="Expense","FileBox"="FileBox","GroupAssign"="GroupAssign","Invoice"="Invoice","InvoiceItem"="InvoiceItem","InvoicePayment"="InvoicePayment","Job"="Job","JobRecurringInstance"="JobRecurringInstance","Lead"="Lead","LeadSource"="LeadSource","LeadSourceCategory"="LeadSourceCategory","LeadSourceExpense"="LeadSourceExpense","LeadSourceRecurringExpense"="LeadSourceRecurringExpense","LinkedContactType"="LinkedContactType","MtgLead"="MtgLead","OrderItem"="OrderItem","PayPlan"="PayPlan","PayPlanItem"="PayPlanItem","Payment"="Payment","Product"="Product","ProductCategory"="ProductCategory","ProductCategoryAssign"="ProductCategoryAssign","ProductInterest"="ProductInterest","ProductInterestBundle"="ProductInterestBundle","ProductOptValue"="ProductOptValue","ProductOption"="ProductOption","RecurringOrder"="RecurringOrder","RecurringOrderWithContact"="RecurringOrderWithContact","Referral"="Referral","SavedFilter"="SavedFilter","SocialAccount"="SocialAccount","Stage"="Stage","StageMove"="StageMove","Status"="Status","SubscriptionPlan"="SubscriptionPlan","Template"="Template","User"="User","UserGroup"="UserGroup")),
                                tags$hr(),
                                downloadButton('tableDownload', 'Download CSV'),
                                h2("Table Output"),
                                tableOutput('tableContent')
                              ))
                   ),
                   tabPanel("File Attachments",
                            sidebarLayout(
                              sidebarPanel(
                                textInput("appname","App Name:"),
                                textInput("apikey","API Key:"),
                                #submitButton("Get Table"),
                                p("This function will remove all blank columns contained in a CSV file.")
                              ),
                              mainPanel(
                                fileInput('fileAttachmentsFile', 'Choose Attachments CSV to upload',
                                          accept = c(
                                            'text/csv',
                                            'text/comma-separated-values',
                                            '.csv'
                                          )
                                ),
                                tags$hr(),
                                shinyDirButton("dir","Choose where file attachments are located","Upload"),
                                h4("output$dir"),
                                verbatimTextOutput("dir"), br(),
                                h4("Files in that dir"),
                                verbatimTextOutput("files")
                              ))
                   )
)
)
