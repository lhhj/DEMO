library(AzureStor)

keystring<-"EnalwGNW0OHCFLrogamszCu129rn5W687VVOebGcGqvyQXic7mongIHPdDoQkNEMVavicRK1vVy82hOOjBLAXg=="
account_name <- "https://lakefsscidemo.blob.core.windows.net/"

bl_endp_key<- storage_endpoint(account_name,key=keystring)
cont<-storage_container(bl_endp_key,"datablob")
dataInput <- storage_read_csv(cont,"world-happiness-report-2021.csv")
storage_write_csv(dataInput,cont,as.character(Sys.time(), usetz = TRUE))
Sys.time()

