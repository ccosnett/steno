BeginPackage["steno2`"];
Unprotect["MyPack`*"]; ClearAll["MyPack`*"]; ClearAll["MyPack`Private`*"];
speaker::usage = "speaker[]";
breathe::usage = "breathe[]";
pract::usage = "pract[]";
dm::usage = "dm[]";
dMinor::usage = "dMinor[t,n]";
eDiminished::usage = "eDiminished[]";
veryGood::usage = "veryGood[]";
veryGood2::usage = "veryGood2[]";
instruments::usage = "instruments[]";
play::usage = "play[instrument,n]";

upperQ::usage = "upperQ[str]";
good::usage = "good[]";
bad::usage = "bad[]";
lis::usage = "lis[]";
Begin["`Private`"];
lis = {};
bad := Do[(eDiminished; Pause[.2]), 3];
good := dMinor[.1, Length[lis]];
upperQ[str_] := ContainsAny[Characters[str], ToUpperCase[Alphabet[]]];




(*Clear[x];*)
speaker:=Module[{},
             {InputField[Dynamic[x], String, ContinuousAction -> True], Dynamic[If[ContainsAny[Characters[x], {" "}], (Speak[x];Pause[.2]; x = ""), x]]}];

chords1={{"A", "CSharp", "E"},{"D", "F", "A"}, {"G", "BFlat", "D"}, {"C", "E", "G"}, {"F", "A", "C"}, {"BFlat", "D", "F"}, {"E", "G", "BFlat"}};
chords2={{"A", "CSharp", "E"},{"E", "GSharp", "A"},{"D", "F", "A"}, {"G", "BFlat", "D"}, {"C", "E", "G"}, {"F", "A", "C"}, {"BFlat", "D", "F"}, {"E", "G", "BFlat"}};

play[instrument_,n_] := EmitSound[Sound[SoundNote[chords2[[Max[1,Mod[n, 8]]]], 0.4, instrument]]];

(*Do[Pause[1]; p[mat][i], {i, 1, 8}]*)
(*modular arithmetic is involved in music*)
dMinor[t_,n_] := EmitSound[Sound[SoundNote[chords1[[1+Mod[n, 7]]], t, randomInstrument]]];
viola[chords_,t_,n_] := EmitSound[Sound[SoundNote[chords[[1+Mod[n, 7]]], t, randomInstrument]]];
veryGood := Do[(Pause[.3]; dMinor[.3, #]) & /@ Range[8], 3];
veryGood2:= (Pause[.3]; viola[chords2,.3, #]) & /@RandomInteger[{1,7},20];
eDiminished := EmitSound[Sound[SoundNote[{"E", "G", "BFlat"}, .1, randomInstrument]]];
stringe[ideal_][lis_] := If[SubsetQ[ideal, lis] \[And] DuplicateFreeQ[lis], dMinor, Do[(eDiminished; Pause[.2]), 3]];

shrink90=Magnify[#,.9]&;
practGuts1:=Module[{},Cell[BoxData[
 RowBox[{"{",
  RowBox[{
   InputFieldBox[Dynamic[steno2`Private`x], String,
    ContinuousAction->True], ",",
   DynamicBox[ToBoxes[
     If[
      ContainsAny[
       Characters[steno2`Private`x], {" "}],
      Speak[steno2`Private`x]; Pause[0.3];
      steno2`Private`x = "", steno2`Private`x],
     StandardForm],
    ImageSizeCache->{0., {0., 13.}}]}],
  "}"}]], "Output",
 CellChangeTimes->{3.765782562022704*^9},
 CellLabel->"Out[52]="]];
practGuts2:=Module[{},Module[{},CellPrint[ExpressionCell[shrink90[Import["~/Dropbox/05_PROGRAMS/13_images/home_position.png"]], "Print", Evaluatable -> False, CellAutoOverwrite -> False]]]];

pract:=Module[{},
  (*CellPrint[mmaCompGuts1];*)
  
  CellPrint[practGuts1];
  practGuts2
  (*CellPrint[mmaCompGuts4];*)

  (*now to delete input cell*)
];


dmGuts1:=Module[{},Cell[BoxData[{
 RowBox[{
  RowBox[{"reload", ";"}], "\[IndentingNewLine]",
  RowBox[{"(*", " ",
   RowBox[{"n", "-"}], " ", "*)"}]}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{
   RowBox[{"ideal1", "=",
    RowBox[{"Drop", "[",
     RowBox[{
      RowBox[{
       RowBox[{"(", GridBox[{
          {"\"\<noun\>\""},
          {"\"\<inhibit\>\""},
          {"\"\<nudge\>\""},
          {"\"\<notes\>\""},
          {"\"\<knack\>\""},
          {"\"\<enacts\>\""},
          {"\"\<neck\>\""},
          {"\"\<known\>\""},
          {"\"\<knock\>\""},
          {"\"\<gnome\>\""},
          {"\"\<noise\>\""},
          {"\"\<novice\>\""},
          {"\"\<named\>\""},
          {"\"\<neural\>\""},
          {"\"\<snide\>\""},
          {"\"\<announce\>\""}
         }], ")"}], "//", "Flatten"}], ",", "0"}], "]"}]}], ";"}],
  "\[IndentingNewLine]", "\[IndentingNewLine]",
  RowBox[{"(*", " ",
   RowBox[{"-", "n"}], " ", "*)"}]}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{
   RowBox[{"ideal2", "=",
    RowBox[{"Drop", "[",
     RowBox[{
      RowBox[{
       RowBox[{"(", GridBox[{
          {"\"\<loin\>\""},
          {"\"\<donor\>\""},
          {"\"\<winner\>\""},
          {"\"\<dinner\>\""},
          {"\"\<learned\>\""},
          {"\"\<lend\>\""},
          {"\"\<allowance\>\""},
          {"\"\<flaunt\>\""},
          {"\"\<deference\>\""},
          {"\"\<different\>\""},
          {"\"\<dance\>\""},
          {"\"\<diner\>\""},
          {"\"\<demand\>\""},
          {"\"\<grunt\>\""},
          {"\"\<grant\>\""},
          {"\"\<gleans\>\""},
          {"\"\<severance\>\""},
          {"\"\<cement\>\""},
          {"\"\<design\>\""}
         }], ")"}], "//", "Flatten"}], ",", "0"}], "]"}]}], ";"}],
  "\[IndentingNewLine]",
  RowBox[{"(*", " ",
   RowBox[{"m", "-"}], " ", "*)"}]}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{
   RowBox[{"ideal3", "=",
    RowBox[{"Drop", "[",
     RowBox[{
      RowBox[{
       RowBox[{"(", GridBox[{
          {"\"\<mound\>\""},
          {"\"\<mourn\>\""},
          {"\"\<maim\>\""},
          {"\"\<matter\>\""},
          {"\"\<commit\>\""},
          {"\"\<commend\>\""},
          {"\"\<smudge\>\""},
          {"\"\<smuggle\>\""},
          {"\"\<semester\>\""}
         }], ")"}], "//", "Flatten"}], ",", "0"}], "]"}]}], ";"}],
  "\[IndentingNewLine]",
  RowBox[{"(*", " ",
   RowBox[{"-", "m"}], " ", "*)"}]}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{
   RowBox[{"ideal4", "=",
    RowBox[{"Drop", "[",
     RowBox[{
      RowBox[{
       RowBox[{"(", GridBox[{
          {"\"\<forms\>\""},
          {"\"\<primed\>\""},
          {"\"\<rhymes\>\""},
          {"\"\<serum\>\""},
          {"\"\<time\>\""},
          {"\"\<hermit\>\""},
          {"\"\<maim\>\""},
          {"\"\<plumb\>\""},
          {"\"\<dream\>\""},
          {"\"\<gym\>\""},
          {"\"\<germ\>\""},
          {"\"\<jam\>\""},
          {"\"\<blame\>\""},
          {"\"\<bottom\>\""},
          {"\"\<grammar\>\""}
         }], ")"}], "//", "Flatten"}], ",", "0"}], "]"}]}], ";"}],
  "\[IndentingNewLine]",
  RowBox[{"(*", " ",
   RowBox[{"-", "lm"}], " ", "*)"}]}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{
   RowBox[{"ideal5", "=",
    RowBox[{"Drop", "[",
     RowBox[{
      RowBox[{
       RowBox[{"(", GridBox[{
          {"\"\<balm\>\""},
          {"\"\<psalm\>\""}
         }], ")"}], "//", "Flatten"}], ",", "0"}], "]"}]}], ";"}],
  "\[IndentingNewLine]",
  RowBox[{"(*", " ",
   RowBox[{"j", "-"}], " ", "*)"}]}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{
   RowBox[{"ideal6", "=",
    RowBox[{"Drop", "[",
     RowBox[{
      RowBox[{
       RowBox[{"(", GridBox[{
          {"\"\<judge\>\""},
          {"\"\<journal\>\""},
          {"\"\<join\>\""},
          {"\"\<joyful\>\""},
          {"\"\<jam\>\""},
          {"\"\<gerunds\>\""}
         }], ")"}], "//", "Flatten"}], ",", "0"}], "]"}]}], ";"}],
  "\[IndentingNewLine]",
  RowBox[{"(*", " ",
   RowBox[{"-", "j"}], " ", "*)"}]}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{
   RowBox[{"ideal7", "=",
    RowBox[{"Drop", "[",
     RowBox[{
      RowBox[{
       RowBox[{"(", GridBox[{
          {"\"\<forge\>\""},
          {"\"\<budgets\>\""},
          {"\"\<average\>\""},
          {"\"\<leverage\>\""},
          {"\"\<merge\>\""},
          {"\"\<beige\>\""},
          {"\"\<carriage\>\""},
          {"\"\<fidget\>\""},
          {"\"\<frigid\>\""},
          {"\"\<digit\>\""},
          {"\"\<gadget\>\""},
          {"\"\<garage\>\""},
          {"\"\<grudge\>\""},
          {"\"\<turgid\>\""}
         }], ")"}], "//", "Flatten"}], ",", "0"}], "]"}]}], ";"}],
  "\[IndentingNewLine]",
  RowBox[{"(*", " ",
   RowBox[{"y", "-"}], " ", "*)"}]}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{"ideal8", "=",
   RowBox[{"Drop", "[",
    RowBox[{
     RowBox[{
      RowBox[{"(", GridBox[{
         {"\"\<year\>\""},
         {"\"\<yearn\>\""},
         {"\"\<yolk\>\""}
        }], ")"}], "//", "Flatten"}], ",", "0"}], "]"}]}],
  ";"}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{
   RowBox[{"ideal", "=", "ideal3"}], ";"}],
  "\[IndentingNewLine]"}], "\[IndentingNewLine]",
 RowBox[{
  RowBox[{"{", "\[IndentingNewLine]",
   RowBox[{
    RowBox[{"InputField", "[",
     RowBox[{
      RowBox[{"Dynamic", "[", "x", "]"}], ",", "String", ",",
      RowBox[{"ContinuousAction", "->", "True"}]}], "]"}], ",",
    "\[IndentingNewLine]",
    RowBox[{"Dynamic", "[", "\[IndentingNewLine]",
     RowBox[{"If", "[", "\[IndentingNewLine]",
      RowBox[{
       RowBox[{"(",
        RowBox[{
         RowBox[{"Not", "[",
          RowBox[{"x", "===", "\"\< \>\""}], "]"}], "\[And]",
         RowBox[{"ContainsAny", "[",
          RowBox[{
           RowBox[{"Characters", "[", "x", "]"}], ",",
           RowBox[{"{", "\"\< \>\"", "}"}]}], "]"}]}], ")"}], ",",
       "\[IndentingNewLine]", "\[IndentingNewLine]",
       RowBox[{"If", "[", "\[IndentingNewLine]",
        RowBox[{
         RowBox[{"upperQ", "[", "x", "]"}], ",", "\[IndentingNewLine]",
         RowBox[{"(",
          RowBox[{
           RowBox[{"x", "=", "\"\<\>\""}], ";", "bad", ";",
           RowBox[{"lis", "=",
            RowBox[{"{", "}"}]}]}], ")"}], ",", "\[IndentingNewLine]",
         "\[IndentingNewLine]",
         RowBox[{"(",
          RowBox[{
           RowBox[{"AppendTo", "[",
            RowBox[{"lis", ",",
             RowBox[{"x", "//", "StringTrim"}]}], "]"}], ";",
           RowBox[{"Speak", "[", "x", "]"}], ";",
           RowBox[{"Pause", "[", ".2", "]"}], ";",
           RowBox[{"If", "[",
            RowBox[{
             RowBox[{"ideal", "===", "lis"}], ",",
             RowBox[{"Do", "[",
              RowBox[{"veryGood", ",", "3"}], "]"}]}], "]"}], ";",
           "\[IndentingNewLine]",
           RowBox[{"If", "[", "\[IndentingNewLine]",
            RowBox[{
             RowBox[{
              RowBox[{"SubsetQ", "[",
               RowBox[{"ideal", ",", "lis"}], "]"}], "\[And]",
              RowBox[{"DuplicateFreeQ", "[", "lis", "]"}]}], ",",
             "\[IndentingNewLine]", "good", ",", "\[IndentingNewLine]",
             RowBox[{"(",
              RowBox[{"bad", ";",
               RowBox[{"lis", "=",
                RowBox[{"{", "}"}]}]}], ")"}]}], "]"}], ";",
           RowBox[{"x", "=", "\"\<\>\""}]}], ")"}]}], "]"}], ",",
       "\[IndentingNewLine]",
       RowBox[{"x", ";",
        RowBox[{"Column", "[",
         RowBox[{"{",
          RowBox[{
           RowBox[{"Row", "[",
            RowBox[{"MapIndexed", "[",
             RowBox[{
              RowBox[{
               RowBox[{"Highlighted", "[",
                RowBox[{"#1", ",",
                 RowBox[{"If", "[",
                  RowBox[{
                   RowBox[{
                    RowBox[{"First", "[", "#2", "]"}], "<=",
                    RowBox[{"Length", "[", "lis", "]"}]}], ",",
                   RowBox[{"Background", "->", "Red"}], ",",
                   RowBox[{"Background", "->", "yellow"}]}], "]"}]}], "]"}], "&"}],
               ",", "ideal"}], "]"}], "]"}], ",",
           RowBox[{"Row", "[",
            RowBox[{"MapIndexed", "[",
             RowBox[{
              RowBox[{
               RowBox[{"dd", "[",
                RowBox[{"#1", ",",
                 RowBox[{"If", "[",
                  RowBox[{
                   RowBox[{
                    RowBox[{"First", "[", "#2", "]"}], "<=",
                    RowBox[{"Length", "[", "lis", "]"}]}], ",", "Red", ",",
                   "yellow"}], "]"}]}], "]"}], "&"}], ",", "ideal"}], "]"}], "]"}],
            ",",
           RowBox[{"Row", "[",
            RowBox[{
             RowBox[{
              RowBox[{"Highlighted", "[",
               RowBox[{"#1", ",",
                RowBox[{"Background", "->", "Red"}]}], "]"}], "&"}], "/@", "lis"}],
             "]"}], ",",
           RowBox[{"Row", "[",
            RowBox[{
             RowBox[{
              RowBox[{"dd", "[",
               RowBox[{"#1", ",", "Red"}], "]"}], "&"}], "/@", "lis"}], "]"}]}],
          "}"}], "]"}]}]}], "]"}], "\[IndentingNewLine]", "]"}]}],
   "\[IndentingNewLine]", "}"}], "//", "Column"}]}], "Input",
 CellFrame->{{True, True}, {False, True}},
 CellFrameLabels->{{None, None}, {None, "input (mathematica code)"}},
 CellChangeTimes->{{3.765798291840516*^9, 3.76579830018512*^9},
   3.765798513152731*^9, {3.765798852789351*^9, 3.765798876590151*^9}, {
   3.765798916479268*^9, 3.765798933270568*^9}, {3.76579902274013*^9,
   3.765799043378112*^9}, {3.765799204840247*^9, 3.7657992074593077`*^9}, {
   3.765799298904316*^9, 3.765799431276922*^9}, {3.76579946825373*^9,
   3.765799477412218*^9}, {3.76579954412115*^9, 3.7657995502747793`*^9}, {
   3.765799606201891*^9, 3.765799646384618*^9}, {3.765799681195366*^9,
   3.765799690779035*^9}, {3.7657998113275537`*^9, 3.765799880799505*^9}, {
   3.7657999363859377`*^9, 3.765799953920168*^9}, {3.765800077573535*^9,
   3.76580011320441*^9}, 3.765800172176371*^9, {3.765800247040144*^9,
   3.765800286041581*^9}, {3.7658003334821033`*^9, 3.765800430004375*^9}, {
   3.765800485135429*^9, 3.765800512630266*^9}, {3.76580219523602*^9,
   3.765802208290551*^9}, 3.76580379138268*^9, {3.765804156742731*^9,
   3.765804292260803*^9}, {3.765804561631921*^9, 3.765804650228827*^9}, {
   3.765804720803195*^9, 3.7658048297856913`*^9}, {3.7658051430434427`*^9,
   3.765805143674712*^9}, {3.765805602592901*^9, 3.7658056817188883`*^9}, {
   3.765806181326915*^9, 3.765806183448037*^9}, {3.7658067165886927`*^9,
   3.765806762193583*^9}, {3.765807016915558*^9, 3.765807087794269*^9}, {
   3.766040257621719*^9, 3.766040346424425*^9}, {3.7660416472087173`*^9,
   3.7660416709790497`*^9}, {3.7660513616339397`*^9, 3.7660514239600267`*^9}, {
   3.7660515020084963`*^9, 3.7660515061330833`*^9}, {3.766051658064844*^9,
   3.766051687546938*^9}, {3.766051947584939*^9, 3.766051948583033*^9},
   3.766051989490082*^9, 3.766053162569756*^9, 3.766053482150395*^9,
   3.766056487424881*^9, {3.766056721387282*^9, 3.766056736739183*^9},
   3.766056965831849*^9, {3.76605788561447*^9, 3.766057891435555*^9}, {
   3.7660579298050003`*^9, 3.766057955731694*^9}, 3.766058002788416*^9, {
   3.766058152472499*^9, 3.766058153031323*^9}, 3.766058238481838*^9,
   3.766058319066856*^9, 3.7660589799817867`*^9, 3.7660591325903873`*^9, {
   3.766061042219469*^9, 3.766061063648596*^9}, {3.766061275621612*^9,
   3.766061279787607*^9}, {3.766061719951765*^9, 3.766061738281814*^9},
   3.766062246212775*^9, {3.76606234283267*^9, 3.7660624023426*^9},
   3.766062487606048*^9, {3.76606272029652*^9, 3.7660627207111263`*^9},
   3.766062753697736*^9, {3.766063661421711*^9, 3.766063740510008*^9},
   3.766065139132269*^9, 3.766065454106436*^9, {3.76629188277847*^9,
   3.766292060907824*^9}, {3.766292097502191*^9, 3.7662921754246893`*^9}, {
   3.766292215705289*^9, 3.766292395379726*^9}, {3.766292518372546*^9,
   3.766292614542029*^9}, {3.76629268742548*^9, 3.7662928913935127`*^9}, {
   3.76629793186381*^9, 3.766297945469858*^9}, {3.766298780822258*^9,
   3.7662987996768312`*^9}, {3.766298961844591*^9, 3.76629896660758*^9}, {
   3.766303827080255*^9, 3.7663038344246817`*^9}, {3.766307800438933*^9,
   3.766307804250885*^9}, {3.76638106045417*^9, 3.766381060645924*^9},
   3.766381769700036*^9, {3.766381804413205*^9, 3.766381822721994*^9},
   3.7663818550966663`*^9, {3.7663818868236837`*^9, 3.766381910158095*^9}},
 Background->GrayLevel[0.95],
 CellLabel->"In[70]:="]];
dm:= Module[{},
  (*CellPrint[mmaCompGuts1];*)
  CellPrint[dmGuts1];
  (*CellPrint[mmaCompGuts4];*)

  (*now to delete input cell*)
  SelectionMove[EvaluationCell[], All, EvaluationCell];
  NotebookDelete[];
  SelectionMove[EvaluationNotebook[], Next, CellContents];
];


(*

(StringTake[x, -1] === " ") \[Or] (StringTake[x, 1] === " ")

*)

breathe := Monitor[i = 0; While[i < 100, Pause[0.01]; i++]; i, ProgressIndicator[i, {1, 100}]];



instruments := Module[{}, Flatten[( {
      {"Accordion", "Agogo", "AltoSax", "Applause"},
      {"Atmosphere", "Bagpipe", "Bandoneon", "Banjo"},
      {"BaritoneSax", "Bass", "BassAndLead", "Bassoon"},
      {"Bird", "BlownBottle", "Bowed", "BrassSection"},
      {"Breath", "Brightness", "BrightPiano", "Calliope"},
      {"Celesta", "Cello", "Charang", "Chiff"},
      {"Choir", "Clarinet", "Clavi", "Contrabass"},
      {"Crystal", "DrawbarOrgan", "Dulcimer", "Echoes"},
      {"ElectricBass", "ElectricGrandPiano", "ElectricGuitar",
       "ElectricPiano"},
      {"ElectricPiano2", "EnglishHorn", "Fiddle", "Fifths"},
      {"Flute", "FrenchHorn", "FretlessBass", "FretNoise"},
      {"Glockenspiel", "Goblins", "Guitar", "GuitarDistorted"},
      {"GuitarHarmonics", "GuitarMuted", "GuitarOverdriven",
       "Gunshot"},
      {"Halo", "Harmonica", "Harp", "Harpsichord"},
      {"Helicopter", "HonkyTonkPiano", "JazzGuitar", "Kalimba"},
      {"Koto", "Marimba", "MelodicTom", "Metallic"},
      {"MusicBox", "MutedTrumpet", "NewAge", "Oboe"},
      {"Ocarina", "OrchestraHit", "Organ", "PanFlute"},
      {"PercussiveOrgan", "Piano", "Piccolo", "PickedBass"},
      {"PizzicatoStrings", "Polysynth", "Rain", "Recorder"},
      {"ReedOrgan", "ReverseCymbal", "RockOrgan", "Sawtooth"},
      {"SciFi", "Seashore", "Shakuhachi", "Shamisen"},
      {"Shanai", "Sitar", "SlapBass", "SlapBass2"},
      {"SopranoSax", "Soundtrack", "Square", "Steeldrums"},
      {"SteelGuitar", "Strings", "Strings2", "Sweep"},
      {"SynthBass", "SynthBass2", "SynthBrass", "SynthBrass2"},
      {"SynthDrum", "SynthStrings", "SynthStrings2", "SynthVoice"},
      {"Taiko", "Telephone", "TenorSax", "Timpani"},
      {"Tinklebell", "TremoloStrings", "Trombone", "Trumpet"},
      {"Tuba", "TubularBells", "Vibraphone", "Viola"},
      {"Violin", "Voice", "VoiceAahs", "VoiceOohs"},
      {"Warm", "Whistle", "Woodblock", "Xylophone"}
     } )]];
randomInstrument:= RandomChoice[instruments];


End[];
EndPackage[];;
    (*//"KAOEUPS":"{#Caps_Lock}",*)