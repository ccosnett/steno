#!/usr/bin/env wolframscript

vocalizer[file_] := Module[{lastline},
  lastline = Last[
    Import[file, "List"]
     ];
  Print[lastline];
  Speak[ToLowerCase[StringDelete[
     StringTake[
      First[StringCases[lastline, "(" ~~ __ ~~ ":"] ] , {2, -3}]
     , "*"] ] ]
  ];



file = "/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log";

While[True,

 modificationDate := FileDate[file, "Modification"];


 If[
  Abs[(modificationDate - CurrentDate[]) ] <= Quantity[1, "Seconds"],
  PrintMessage["YES"]; vocalizer[file]; Pause[0.5],
  PrintMessage["NO"]
  ]
   ]