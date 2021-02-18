New-AzDeployment -Location canadacentral `
                      -TemplateUri https://raw.githubusercontent.com/erkup/networking/master/BaseDeployment/azuredeploy.baseDeploy.json
                      # -TemplateParameterFile <path to the azuredeploy.network.parameters.json file> `
