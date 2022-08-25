param name string
param location string = resourceGroup().location

resource site 'Microsoft.Web/staticSites@2022-03-01' = {
  location: location
  name: 'stapp-${name}'

  sku: {
    name: 'Free'
    tier: 'Free'
  }
}
