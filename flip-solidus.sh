#!/usr/bin/env fontforge

i = 1
while (i < $argc)
  Open($argv[i])

  Select("/")
  Copy()

  Select(0u005c)
  Paste()
  HFlip()

  SelectNone()

  Generate("fonts/dst/" + $argv[i]:t)
  Close()

  i = i + 1
endloop
