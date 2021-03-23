New-AzDeployment -Location 'East US' `
                      -TemplateFile .\azuredeploy.baseDeploy.json
                      # -TemplateParameterFile <path to the azuredeploy.network.parameters.json file> `
