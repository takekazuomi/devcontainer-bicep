// Output loops.
// Directly referencing a resource module or module collection is not currently supported in output loops. In order to loop outputs we need to apply an array indexer to the expression.

var nsgNames = [
  'nsg1'
  'nsg2'
  'nsg3'
]

output nsgs array = [for i in range(0, length(nsgNames)): {
  name: nsg[i].outputs.n.name
  resourceId: nsg[i].outputs.n.id
}]

module nsg 'nsg-module.bicep' = [for name in nsgNames: {
  name: name
  params:{
    name: name
  }
}]
