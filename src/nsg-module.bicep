param name string

resource nsg 'Microsoft.Network/networkSecurityGroups@2020-06-01' = {
  name: name
  location: resourceGroup().location
}

output n object = {
  name: nsg.name
  id: nsg.id
}
