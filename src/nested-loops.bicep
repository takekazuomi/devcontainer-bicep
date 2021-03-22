var parents = [
  {
    name: 'name'
    enabled: true
    children: [
      {
        name: 'name'
        settingValue: 'value'
      }
    ]
  }
]

resource parentResources 'Microsoft.Example/examples@2020-06-06' = [for parent in parents: if (parent.enabled) {
  name: parent.name
  properties: {
    children: [for child in parent.children: {
      name: child.name
      setting: child.settingValue
    }]
  }
}]
