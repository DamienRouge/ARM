Set-AzureRmCurrentStorageAccount -ResourceGroupName functionappdedamien -Name functionappdeda8f46 

# get the URI with the SAS token
$templateuri = New-AzureStorageBlobSASToken -Container template -Blob ArmfunctionExistPlanFunctions2.json -Permission r -ExpiryTime (Get-Date).AddHours(2.0) -FullUri
# Create new RG for the Function
New-AzureRmResourceGroup -Name ExampleGroup -Location "Central US"
# Deploy your function app using the uriof the template which stored in the blob storage
New-AzureRmResourceGroupDeployment -ResourceGroupName ExampleGroup -TemplateUri $templateuri

