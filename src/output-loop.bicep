// Output loops.
// Directly referencing a resource module or module collection is not currently supported in output loops. In order to loop outputs we need to apply an array indexer to the expression.

var nsgNames = [
  'nsg1'
  'nsg2'
  'nsg3'
]

resource nsg 'Microsoft.Network/networkSecurityGroups@2020-06-01' = [for name in nsgNames: {
  name: name
  location: resourceGroup().location
}]

output nsgs array = [for i in range(0, length(nsgNames)): {
  name: nsg[i].name

  resourceId: nsg[i].id
}]
