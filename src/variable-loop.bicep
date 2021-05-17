var array1 = [
  1
  2
  3
  4
  5
]

var array2 = [for a in array1: a ]

var array3 = [for (e, i) in array1: {
  i: e
}]

var array4 = [for (item, index) in array1: index != 0 ? item : null ]

output r2 array = array2
output r4 array = array4
