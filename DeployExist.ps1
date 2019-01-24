Set-AzureRmCurrentStorageAccount -ResourceGroupName functionappdedamien -Name functionappdeda8f46 

# get the URI with the SAS token
$templateuri = New-AzureStorageBlobSASToken -Container template -Blob ArmFunctionExistPlan.json -Permission r -ExpiryTime (Get-Date).AddHours(2.0) -FullUri
#$templateuri = "D:\ARM\ArmFunction01.json"
New-AzureRmResourceGroup -Name ExampleGroup -Location "Central US"
New-AzureRmResourceGroupDeployment -ResourceGroupName ExampleGroup -TemplateUri $templateuri


