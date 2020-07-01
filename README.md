Caros,

Eu dividi a criação em duas partes: um template de criação de RG (schema de deploy na subscription) e um template de criação de resources (schema de deploy no RG):
 - Criação de um Resource Group => Arquivo: azuredeployrg.json.
 - Criação de recursos dentro do RG => Arquivo: azuredeployrs.json.

Para o deploy, poderá criar um pipeline no Azure DevOps utilizando o arquivo "azure-pipelines.yml" localizado no meu repositório do GitHub, se conectando no link "https://github.com/brunx0liveira/gft", onde também encontrarão os dois templatres - .JSON - informados anteriormente.

Obs: Infelizmente encontrei um problema no deploy do AKS e não tive tempo hábil para resolver e isso me atrasou pra criar a parte de Backend.

Obrigado.
