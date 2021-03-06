tableSchema <- list(ActionSequence = c('Id','TemplateName','VisibleToTheseUsers'),
                    AffResource = c('Id','Notes','ProgramIds','ResourceHREF','ResourceHTML','ResourceOrder','ResourceType','Title'),
                    Affiliate = c('AffCode','AffName','ContactId','DefCommissionType','Id','LeadAmt','LeadCookieFor','LeadPercent','NotifyLead','NotifySale','ParentId','Password','PayoutType','SaleAmt','SalePercent','Status'),
                    CCharge = c('Amt','ApprCode','CCId','Id','MerchantId','OrderNum','PaymentGatewayId','PaymentId','RefNum'),
                    CProgram = c('Active','BillingType','DefaultCycle','DefaultFrequency','DefaultPrice','Description','Family','HideInStore','Id','ProductId','ProgramName','ShortDescription','Sku','Status','Taxable'),
                    Campaign = c('Id','Name','Status'),
                    CampaignStep = c('CampaignId','Id','StepStatus','StepTitle','TemplateId'),
                    Campaignee = c('Campaign','CampaignId','ContactId','Id','Status'),
                    Company = c('AccountId','Address1Type','Address2Street1','Address2Street2','Address2Type','Address3Street1','Address3Street2','Address3Type','Anniversary','AssistantName','AssistantPhone','BillingInformation','Birthday','City','City2','City3','Company','CompanyID','ContactNotes','ContactType','Country','Country2','Country3','CreatedBy','DateCreated','Email','EmailAddress2','EmailAddress3','Fax1','Fax1Type','Fax2','Fax2Type','FirstName','Groups','Id','JobTitle','LastName','LastUpdated','LastUpdatedBy','MiddleName','Nickname','OwnerID','Password','Phone1','Phone1Ext','Phone1Type','Phone2','Phone2Ext','Phone2Type','Phone3','Phone3Ext','Phone3Type','Phone4','Phone4Ext','Phone4Type','Phone5','Phone5Ext','Phone5Type','PostalCode','PostalCode2','PostalCode3','ReferralCode','SpouseName','State','State2','State3','StreetAddress1','StreetAddress2','Suffix','Title','Username','Validated','Website','ZipFour1','ZipFour2','ZipFour3'),
                    Contact = c('AccountId','Address1Type','Address2Street1','Address2Street2','Address2Type','Address3Street1','Address3Street2','Address3Type','Anniversary','AssistantName','AssistantPhone','BillingInformation','Birthday','City','City2','City3','Company','CompanyID','ContactNotes','ContactType','Country','Country2','Country3','CreatedBy','DateCreated','Email','EmailAddress2','EmailAddress3','Fax1','Fax1Type','Fax2','Fax2Type','FirstName','Groups','Id','JobTitle','LastName','LastUpdated','LastUpdatedBy','LeadSourceId','Leadsource','MiddleName','Nickname','OwnerID','Password','Phone1','Phone1Ext','Phone1Type','Phone2','Phone2Ext','Phone2Type','Phone3','Phone3Ext','Phone3Type','Phone4','Phone4Ext','Phone4Type','Phone5','Phone5Ext','Phone5Type','PostalCode','PostalCode2','PostalCode3','ReferralCode','SpouseName','State','State2','State3','StreetAddress1','StreetAddress2','Suffix','Title','Username','Validated','Website','ZipFour1','ZipFour2','ZipFour3'),
                    ContactAction = c('Accepted','ActionDate','ActionDescription','ActionType','CompletionDate','ContactId','CreatedBy','CreationDate','CreationNotes','EndDate','Id','IsAppointment','LastUpdated','LastUpdatedBy','ObjectType','OpportunityId','PopupDate','Priority','UserID'),
                    ContactGroup = c('GroupCategoryId','GroupDescription','GroupName','Id'),
                    ContactGroupAssign = c('Contact.Address1Type','Contact.Address2Street1','Contact.Address2Street2','Contact.Address2Type','Contact.Address3Street1','Contact.Address3Street2','Contact.Address3Type','Contact.Anniversary','Contact.AssistantName','Contact.AssistantPhone','Contact.BillingInformation','Contact.Birthday','Contact.City','Contact.City2','Contact.City3','Contact.Company','Contact.CompanyID','Contact.ContactNotes','Contact.ContactType','Contact.Country','Contact.Country2','Contact.Country3','Contact.CreatedBy','Contact.DateCreated','Contact.Email','Contact.EmailAddress2','Contact.EmailAddress3','Contact.Fax1','Contact.Fax1Type','Contact.Fax2','Contact.Fax2Type','Contact.FirstName','Contact.Groups','Contact.Id','Contact.JobTitle','Contact.LastName','Contact.LastUpdated','Contact.LastUpdatedBy','Contact.Leadsource','Contact.MiddleName','Contact.Nickname','Contact.OwnerID','Contact.Phone1','Contact.Phone1Ext','Contact.Phone1Type','Contact.Phone2','Contact.Phone2Ext','Contact.Phone2Type','Contact.Phone3','Contact.Phone3Ext','Contact.Phone3Type','Contact.Phone4','Contact.Phone4Ext','Contact.Phone4Type','Contact.Phone5','Contact.Phone5Ext','Contact.Phone5Type','Contact.PostalCode','Contact.PostalCode2','Contact.PostalCode3','Contact.ReferralCode','Contact.SpouseName','Contact.State','Contact.State2','Contact.State3','Contact.StreetAddress1','Contact.StreetAddress2','Contact.Suffix','Contact.Title','Contact.Website','Contact.ZipFour1','Contact.ZipFour2','Contact.ZipFour3','ContactGroup','ContactId','DateCreated','GroupId'),
                    ContactGroupCategory = c('CategoryDescription','CategoryName','Id'),
                    CreditCard = c('BillAddress1','BillAddress2','BillCity','BillCountry','BillName','BillState','BillZip','CVV2','CardNumber','CardType','ContactId','Email','ExpirationMonth','ExpirationYear','FirstName','Id','Last4','LastName','MaestroIssueNumber','NameOnCard','PhoneNumber','ShipAddress1','ShipAddress2','ShipCity','ShipCompanyName','ShipCountry','ShipFirstName','ShipLastName','ShipMiddleName','ShipName','ShipPhoneNumber','ShipState','ShipZip','StartDateMonth','StartDateYear','Status'),
                    DataFormField = c('DataType','DefaultValue','FormId','GroupId','Id','Label','ListRows','Name','Values'),
                    DataFormGroup = c('Id','Name','TabId'),
                    DataFormTab = c('FormId','Id','TabName'),
                    EmailAddStatus = c('DateCreated','Email','Id','LastClickDate','LastOpenDate','LastSentDate','Type'),
                    Expense = c('ContactId','DateIncurred','ExpenseAmt','ExpenseType','Id','TypeId'),
                    FileBox = c('ContactId','Extension','FileName','FileSize','Id','Public'),
                    GroupAssign = c('Admin','GroupId','Id','UserId'),
                    Invoice = c('AffiliateId','ContactId','CreditStatus','DateCreated','Description','Id','InvoiceTotal','InvoiceType','JobId','LastUpdated','LeadAffiliateId','PayPlanStatus','PayStatus','ProductSold','PromoCode','RefundStatus','Synced','TotalDue','TotalPaid'),
                    InvoiceItem = c('CommissionStatus','DateCreated','Description','Discount','Id','InvoiceAmt','InvoiceId','LastUpdated','OrderItemId'),
                    InvoicePayment = c('Amt','Id','InvoiceId','LastUpdated','PayDate','PayStatus','PaymentId','SkipCommission'),
                    Job = c('ContactId','DateCreated','DueDate','Id','JobNotes','JobRecurringId','JobStatus','JobTitle','OrderStatus','OrderType','ProductId','ShipCity','ShipCompany','ShipCountry','ShipFirstName','ShipLastName','ShipMiddleName','ShipPhone','ShipState','ShipStreet1','ShipStreet2','ShipZip','StartDate'),
                    JobRecurringInstance = c('AutoCharge','DateCreated','Description','EndDate','Id','InvoiceItemId','RecurringId','StartDate','Status'),
                    Lead = c('AffiliateId','ContactID','CreatedBy','DateCreated','DateInStage','EstimatedCloseDate','Id','IncludeInForecast','LastUpdated','LastUpdatedBy','Leadsource','MonthlyRevenue','NextActionDate','NextActionNotes','Objection','OpportunityNotes','OpportunityTitle','OrderRevenue','ProjectedRevenueHigh','ProjectedRevenueLow','StageID','StatusID','UserID'),
                    LeadSource = c('CostPerLead','Description','EndDate','Id','LeadSourceCategoryId','Medium','Message','Name','StartDate','Status','Vendor'),
                    LeadSourceCategory = c('Description','Id','Name'),
                    LeadSourceExpense = c('Amount','DateIncurred','Id','LeadSourceId','LeadSourceRecurringExpenseId','Notes','Title'),
                    LeadSourceRecurringExpense = c('Amount','EndDate','Id','LeadSourceId','NextExpenseDate','Notes','StartDate','Title'),
                    LinkedContactType = c('Id','MaxLinked','TypeName'),
                    MtgLead = c('ActualCloseDate','ApplicationDate','CreditReportDate','DateAppraisalDone','DateAppraisalOrdered','DateAppraisalReceived','DateRateLockExpires','DateRateLocked','DateTitleOrdered','DateTitleReceived','FundingDate','Id'),
                    OrderItem = c('CPU','Id','ItemDescription','ItemName','ItemType','Notes','OrderId','PPU','ProductId','Qty','SubscriptionPlanId'),
                    PayPlan = c('AmtDue','DateDue','FirstPayAmt','Id','InitDate','InvoiceId','StartDate','Type'),
                    PayPlanItem = c('AmtDue','AmtPaid','DateDue','Id','PayPlanId','Status'),
                    Payment = c('ChargeId','Commission','ContactId','Id','InvoiceId','PayAmt','PayDate','PayNote','PayType','RefundId','Synced','UserId'),
                    Product =c('BottomHTML','CityTaxable','CountryTaxable','Description','HideInStore','Id','InventoryLimit','InventoryNotifiee','IsPackage','NeedsDigitalDelivery','ProductName','ProductPrice','Shippable','ShippingTime','ShortDescription','Sku','StateTaxable','Status','Taxable','TopHTML','Weight'),
                    ProductCategory = c('CategoryDisplayName','CategoryImage','CategoryOrder','Id','ParentId'),
                    ProductCategoryAssign = c('Id','ProductCategoryId','ProductId'),
                    ProductInterest = c('DiscountPercent','Id','ObjType','ObjectId','ProductId','ProductType','Qty','SubscriptionPlanId'),
                    ProductInterestBundle = c('BundleName','Description','Id'),
                    ProductOptValue =c('Id','IsDefault','Label','Name','OptionIndex','PriceAdjustment','ProductOptionId','Sku'),
                    ProductOption = c('AllowSpaces','CanContain','CanEndWith','CanStartWith','Id','IsRequired','Label','MaxChars','MinChars','Name','OptionType','Order','ProductId','TextMessage'),
                    RecurringOrder = c('AffiliateId','AutoCharge','BillingAmt','BillingCycle','CC1','CC2','ContactId','EndDate','Frequency','Id','LastBillDate','LeadAffiliateId','MaxRetry','MerchantAccountId','NextBillDate','NumDaysBetweenRetry','OriginatingOrderId','PaidThruDate','PaymentGatewayId','ProductId','ProgramId','PromoCode','Qty','ReasonStopped','ShippingOptionId','StartDate','Status','SubscriptionPlanId'),
                    RecurringOrderWithContact = c('AffiliateId','AutoCharge','BillingAmt','BillingCycle','CC1','CC2','City','ContactId','Country','Email','EmailAddress2','EmailAddress3','EndDate','FirstName','Frequency','Id','LastBillDate','LastName','LeadAffiliateId','MaxRetry','MerchantAccountId','MiddleName','NextBillDate','Nickname','NumDaysBetweenRetry','OriginatingOrderId','PaidThruDate','PaymentGatewayId','Phone1','Phone1Ext','Phone1Type','Phone2','Phone2Ext','Phone2Type','PostalCode','ProductId','ProgramId','PromoCode','Qty','ReasonStopped','RecurringOrderId','ShippingOptionId','SpouseName','StartDate','State','Status','StreetAddress1','StreetAddress2','SubscriptionPlanId','Suffix','Title','ZipFour1'),
                    Referral = c('AffiliateId','ContactId','DateExpires','DateSet','IPAddress','Id','Info','Source','Type'),
                    SavedFilter =c('FilterName','Id','ReportStoredName','UserId'),
                    SocialAccount = c('AccountName','AccountType','ContactId','DateCreated','Id','LastUpdated'),
                    Stage = c('Id','StageName','StageOrder','TargetNumDays'),
                    StageMove = c('CreatedBy','DateCreated','Id','MoveDate','MoveFromStage','MoveToStage','OpportunityId','PrevStageMoveDate','UserId'),
                    Status = c('Id','StatusName','StatusOrder','TargetNumDays'),
                    SubscriptionPlan = c('Active','Cycle','Frequency','Id','NumberOfCycles','PlanPrice','PreAuthorizeAmount','ProductId','Prorate'),
                    Template = c('Categories','Id','PieceTitle','PieceType'),
                    ### Tickets are deprecated
                    #Ticket = c('CloseDate','ContactId','CreatedBy','DateCreated','DateInStage','DevId','FolowUpDate','HasCustomerCalled','Id','IssueId','LastUpdated','LastUpdatedBy','Ordering','Priority','Stage','Summary','TargetCompletionDate','TicketApplication','TicketCategory','TicketTitle','TicketTypeId','TimeSpent','UserId'),
                    #TicketStage = c('Id','StageName'),
                    #TicketType = c('CategoryId','Id','Label'),
                    User = c('City','Email','EmailAddress2','EmailAddress3','FirstName','GlobalUserId','HTMLSignature','Id','LastName','MiddleName','Nickname','Partner','Phone1','Phone1Ext','Phone1Type','Phone2','Phone2Ext','Phone2Type','PostalCode','Signature','SpouseName','State','StreetAddress1','StreetAddress2','Suffix','Title','ZipFour1'),
                    UserGroup = c('Id','Name','OwnerId')
)

supportedFileTypes <- c("doc",
                        "docx",
                        "log",
                        "msg",
                        "pages",
                        "rtf",
                        "txt",
                        "wpd",
                        "wps",
                        "err",
                        "text",
                        "pwd",
                        "notes",
                        "xdl",
                        "wp",
                        "wp4",
                        "wp5",
                        "wp7",
                        "wsd",
                        "tif",
                        "tiff",
                        "gif",
                        "jpeg",
                        "jpg",
                        "jif",
                        "jiff",
                        "jp2",
                        "jpx",
                        "j2k",
                        "fpx",
                        "pcd",
                        "png",
                        "pdf",
                        "bmp",
                        "psd",
                        "pspimage",
                        "thm",
                        "yuv",
                        "csv",
                        "xlr",
                        "xls",
                        "xlsx",
                        "key",
                        "pps",
                        "ppt",
                        "pptx",
                        "xml",
                        "wav",
                        "wma",
                        "mp3",
                        "mp4",
                        "mid",
                        "qt",
                        "mov",
                        "movie",
                        "hdmov",
                        "mnv",
                        "flv",
                        "f4p",
                        "hdv",
                        "divx",
                        "mp4",
                        "mp4v",
                        "mpg",
                        "mpeg",
                        "mpeg4",
                        "mpeg1",
                        "rm",
                        "vob",
                        "wmv",
                        "wm",
                        "avi",
                        "m4v",
                        "gvi",
                        "m2ts")