$deployName = "Deploy" + (Get-Random)
New-AzDeployment -Location 'EastUS' `
    -TemplateFile .\azuredeploy.TempSpecDeploy.json -Name $deployName
# -TemplateParameterFile <path to the azuredeploy.network.parameters.json file> 
