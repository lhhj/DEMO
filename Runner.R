#Loading AzureStore file
print("before")
library(AzureStor,lib.loc='/CustomR')
#azurestore loaded
print("after load")
keystring<-"ts5KGX0irB9tTPCOzo89GC6KJTc0UM9bpUvJLLnP2nyUxZ5sEVokQb1iO3pGdNP6M7l33jQslBaE5cjIBZQUOQ=="
account_name <- "https://scidemostorage.blob.core.windows.net/"
#before access attempt
print("before enc")
bl_endp_key<- storage_endpoint(account_name,key=keystring)
cont<-storage_container(bl_endp_key,"datablob")
dataInput <- storage_read_csv(cont,"world-happiness-report-2021.csv")
print("after get")
print(dataInput)
storage_write_csv(dataInput,cont,as.character(Sys.time(), usetz = TRUE))
print("after write")
