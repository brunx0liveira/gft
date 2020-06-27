$resourceGroupName = Read-Host -Prompt "rs-gp-dev-001"
$location = Read-Host -Prompt "Brazil South"
$id = Read-Host -Prompt "bruno.mattos@einstein.br"

New-AzResourceGroup -Name $resourceGroupName -Location $location -Tag @{Company=“GFT Brasil”; Environment=“Dev”; Solution=“WebAPI”; Note= “KeepOnlineOnlyWorkTime”}

$rg = Get-AzResourceGroup -Name "rs-gp-dev-001"
New-AzVirtualNetwork -ResourceGroupName $rg -Location $location -Name vnet-gft-dev -AddressPrefix 172.21.0.0/16

$vnet = Get-AzVirtualNetwork -Name "vnet-gft-dev" -ResourceGroupName “rs-gp-dev-001"
$delegation = New-AzDelegation -Name “ApiDelegation" -ServiceName "Microsoft.ApiManagement/service"

Add-AzVirtualNetworkSubnetConfig -Name snet01-gft-dev -AddressPrefix 172.21.6.0/24 -VirtualNetwork $vnet -Delegation $delegation | Set-AzVirtualNetwork
