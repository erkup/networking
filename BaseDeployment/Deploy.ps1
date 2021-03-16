New-AzDeployment -Location 'East US 2' `
                      -TemplateFile .\azuredeploy.baseDeploy.json
                      # -TemplateParameterFile <path to the azuredeploy.network.parameters.json file> `
