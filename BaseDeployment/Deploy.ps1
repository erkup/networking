$deployName = "Deploy" + (Get-Random)
New-AzDeployment -Location EastUS
-TemplateUri https://raw.githubusercontent.com/erkup/networking/master/BaseDeployment/azuredeploy.baseDeploy.json 
#    -TemplateFile .\azuredeploy.TempSpecDeploy.json -Name $deployName
# -TemplateParameterFile <path to the azuredeploy.network.parameters.json file> 
