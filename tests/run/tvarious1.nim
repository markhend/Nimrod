discard """
  file: "tlenopenarray.nim"
  output: '''1
0
Whopie'''
"""

echo len([1_000_000]) #OUT 1

type 
  TArray = array[0..3, int]
  TVector = distinct array[0..3, int]
proc `[]`(v: TVector; idx: int): int = TArray(v)[idx]
var v: TVector
echo v[2]

# bug #569

import queues

type
  TWidget = object
    names: TQueue[string]

var w = TWidget(names: initQueue[string]())

add(w.names, "Whopie")

for n in w.names: echo(n)
