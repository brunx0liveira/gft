Caros,

Eu dividi a criação em duas partes, um template de criação de RG (schema de deploy na subscription) e um template de criação de resources (schema de deploy no RG):
 - Criação de um Resource Group => Arquivo: azuredeployrg.json.
 - Criação de recursos dentro do RG => Arquivo: azuredeployrs.json.

Para o deploy, acesse o Portal do Azure e execute os comandos abaixo no Cloud Shell PowerShell, ou via pipeline se conectando no link "https://github.com/brunx0liveira/gft", ou clonando (https://github.com/brunx0liveira/gft.git) e realizando deploy por algum repositório de preferência.

$templaterg = “./azuredeployrg.json” 
/
$templaters = “./azuredeployrs.json” 
/
New-AzSubscriptionDeployment -Location “Brazil South” -TemplateFile $templaterg 
/
New-AzResourceGroupDeployment -ResourceGroupName "rs-gp-dev-001" -TemplateFile $templaters

Obs: Infelizmente encontrei um problema no deploy do AKS e não tive tempo hábil para resolver e isso me atrasou pra criar a parte de Backend.

Obrigado.
