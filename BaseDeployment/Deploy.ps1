$deployName= "Deploy"+(Get-Random)
New-AzDeployment -Location 'EastUS' `
                      -TemplateFile .\azuredeploy.baseDeploy.json -Name $deployName
                      # -TemplateParameterFile <path to the azuredeploy.network.parameters.json file> `
