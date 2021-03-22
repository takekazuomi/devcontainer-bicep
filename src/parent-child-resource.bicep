resource myParent 'My.Rp/parentType@2020-01-01' = {
  name: 'myParent'
  location: 'West US'
}

resource myChild 'My.Rp/parentType/childType@2020-01-01' = {
  parent: myParent // pass parent reference
  name: 'myChild' // don't require the full name to be formatted with '/' characters
}

output childProp string = myChild.properties.someProp
