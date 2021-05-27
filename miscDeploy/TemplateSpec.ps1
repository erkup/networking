param (
    [Parameter(Manditory = $true)]
    [String]
    $location, 

    # Resource Group to deploy Template Spec in
    [Parameter(Mandatory = $true)]
    [string]
    $RG
)

New-AzResourceGroup -Name $RG -Location $location -Force

New-AzTemplateSpec -Name networkDeploy -Version 1.0 -ResourceGroupName $RG `
    -Location $location -TemplateFile .\nestedVnetDeploy\azuredeploy.network2.json

New-AzTemplateSpec -Name AD -Version 1.0 -ResourceGroupName $RG `
    -Location $location -TemplateFile .\vmDeploy\azureDeploy.ad.json

New-AzTemplateSpec -Name edi -Version 1.0 -ResourceGroupName $RG `
    -Location $location -TemplateFile .\vmDeploy\azureDeploy.edi.json

New-AzTemplateSpec -Name file -Version 1.0 -ResourceGroupName $RG `
-Location $location -TemplateFile .\vmDeploy\azureDeploy.file.json

New-AzTemplateSpec -Name iis -Version 1.0 -ResourceGroupName $RG `
    -Location $location -TemplateFile .\vmDeploy\azureDeploy.iis.json

New-AzTemplateSpec -Name rdsh -Version 1.0 -ResourceGroupName $RG `
    -Location $location -TemplateFile .\vmDeploy\azureDeploy.rdsh.json

New-AzTemplateSpec -Name sql -Version 1.0 -ResourceGroupName $RG `
    -Location $location -TemplateFile .\vmDeploy\azureDeploy.sql.json

New-AzTemplateSpec -Name task -Version 1.0 -ResourceGroupName $RG `
    -Location $location -TemplateFile .\vmDeploy\azureDeploy.task.json

New-AzTemplateSpec -Name storage -Version 1.0 -ResourceGroupName $RG `
    -Location $location -TemplateFile .\miscDeploy\azuredeploy.storage.json