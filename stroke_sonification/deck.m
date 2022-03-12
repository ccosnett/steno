#!/usr/bin/env wolframscript

file = "/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log";
Do[Print["here"],5];

Print[Last[Import[file,"List"]]]


(*Speak["hello world"];*)
(*Speak["hello world"];*)
(*Speak["hello world"];*)

(*vocalizer[file_] := Module[{lastline},*)
  (*lastline = Last[*)
    (*Import[file, "List"]*)
     (*];*)
  (*Print[lastline];*)
  (*Speak[ToLowerCase[StringDelete[*)
     (*StringTake[*)
      (*First[StringCases[lastline, "(" ~~ __ ~~ ":"] ] , {2, -3}]*)
     (*, "*"] ] ]*)
  (*];*)

(*UsingFrontEnd[vocalizer[file]]*)





While[True,

 modificationDate := FileDate[file, "Modification"];


 If[
  Abs[(modificationDate - CurrentDate[]) ] <= Quantity[1, "Seconds"],
  Print["YES"]; Pause[0.5],
  Print["NO"]
  ]
   ]