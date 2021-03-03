resource parentResources 'Microsoft.Example/examples@2020-06-06' = [for parent in parents where parent.enabled: {
  name: parent.name
  properties: {
    children: [for child in parent.children where parent.includeChildren && child.enabled: {
      name: child.name
      setting: child.settingValue
    }]
  }
}]