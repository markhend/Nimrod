discard """
  line: 21
  errormsg: "invalid type: 'TTable'"
"""

import tables

proc action1(arg: string) = 
  echo "action 1 ", arg

proc action2(arg: string) = 
  echo "action 2 ", arg

proc action3(arg: string) = 
  echo "action 3 ", arg

proc action4(arg: string) = 
  echo "action 4 ", arg

const
  actionTable = {
    "A": action1, 
    "B": action2, 
    "C": action3, 
    "D": action4}.toTable

actionTable["C"]("arg")

