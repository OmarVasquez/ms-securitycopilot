targetScope = 'resourceGroup'

@minLength(3)
@maxLength(63)
param capacityName string



@allowed([
    'US'
    'EU'
    'ANZ'
    'UK'
])
param geo string

var regionGeoMap = {
  US: 'eastus'
  EU: 'westeurope'
  ANZ: 'australiaeast'
  UK: 'uksouth'
}

var capacityRegion = regionGeoMap[?geo] ?? 'eastus'

param numberOfUnits int

@allowed([
    'NotAllowed'
    'Allowed'
])
param crossGeoCompute string

resource Copilot 'Microsoft.SecurityCopilot/capacities@2024-11-01-preview' = {
    name: capacityName
    location: capacityRegion
    properties: {
        numberOfUnits: numberOfUnits
        crossGeoCompute: crossGeoCompute
        geo: geo
    }
}
