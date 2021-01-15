New-AzDeployment -Location westus `
                      -TemplateUri https://raw.githubusercontent.com/erkup/networking/master/BaseDeployment/azuredeploy.baseDeploywest.json
                      # -TemplateParameterFile <path to the azuredeploy.network.parameters.json file> `
