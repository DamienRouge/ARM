$templateuri = "D:\ARM\ArmFunction01.json"
New-AzureRmResourceGroupDeployment -ResourceGroupName ExampleGroup -TemplateUri $templateuri
