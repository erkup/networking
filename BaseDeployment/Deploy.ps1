New-AzDeployment -Location EastUS `
                      -TemplateUri https://raw.githubusercontent.com/erkup/networking/BaseDeployment/azuredeploy.baseDeploy.json 
                      # -TemplateParameterFile <path to the azuredeploy.network.parameters.json file> `
