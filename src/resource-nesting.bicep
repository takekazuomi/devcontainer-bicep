// https://github.com/Azure/bicep/blob/main/docs/spec/resources.md#resource-nesting
resource myParent 'My.Rp/parentType@2020-01-01' = {
  name: 'myParent'
  location: 'West US'

  // declares a resource of type 'My.Rp/parentType/childType@2020-01-01'
  resource myChild 'childType' = {
    name: 'myChild'
    properties: {
      displayName: 'child in ${parent.location}'
    }
  }
}

output childProp string = myParent::myChild.properties.displayName


// Error BCP082: The name "parent" does not exist in the current context. Did you mean "myParent"?
