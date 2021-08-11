module m './mod.bicep' = {
  name:'mod'
  params: {
    p1:'abc'
  }
}

output name string = m.name
output o1 string = m.outputs.o1

