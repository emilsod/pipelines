param location string = 'westeurope'

resource stgacc 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'pipelinestg0001'
  location: location
  sku: { 
    name: 'Standard_GRS' 
  }
  kind: 'BlobStorage'
  properties: {
    allowBlobPublicAccess: false
    allowSharedKeyAccess: false
    minimumTlsVersion: 'TLS1_2'
    
  }
}
