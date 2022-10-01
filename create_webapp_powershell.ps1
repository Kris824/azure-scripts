# Create Variables
$webappName = "mywebapp$(Get-Random)"
$rgName = "learn-appservices"
$location = "westus"

# Create a resource group
New-AzResourceGroup -Name $rgName -Location $location

# Create an app service plan in s1 tier
New-AzAppServicePlan -Name $webappName -Location $location -ResourceGroupName $rgName -Tier s1

# Create a web app
New-AzWebApp -Name $webappName -AppServicePlan $webappName -ResourceGroupName $rgName -Location $location