BeginPackage["steno1`"];
lo::usage = "lo[]";
qs::usage = "qs[]";
slo::usage = "slo[]";
slot::usage = "slot[]";

right::usage = "right[]";
left::usage = "left[]";
leri::usage = "leri[]";

lerip::usage = "lerip[]";
leftp::usage = "leftp[]";
rightp::usage = "rightp[]";
homePositionP::usage = "homePositionP[]";
nemonic::usage = "nemonic[]";
cheat::usage = "cheat[]";
commandSquare::usage = "commandSquare[]";
shortcuts::usage = "shortcuts[]";
editCommandSquare::usage = "editCommandSquare[]";
commandSquare::usage = "commandSquare[]";
editFingerSpellSquare::usage = "editFingerSpellSquare[]";
fingerSpellSquare::usage = "fingerSpellSquare[]";
soundSquare::usage = "soundSquare[]";
phonemeSquare::usage = "phonemeSquare[]";
editPhonemeSquare::usage = "editPhonemeSquare[]";


copyStenoOrder::usage = "copyStenoOrder[]";
copyMathematicaInterfaceLink1::usage = "copyMathematicaInterfaceLink1[]";

Begin["`Private`"];

copyMathematicaInterfaceLink1:=CopyToClipboard["guide/GamepadAndDeviceInterface"];

copyStenoOrder := CopyToClipboard["STKPWHRAO*EUFRPBLGTSDZ"]
cheat:=SystemOpen["/Users/johncosnett/Dropbox/05_PROGRAMS/13_images/plover_cheat_sheet_.pdf"];
commandSquare:=SystemOpen["/Users/johncosnett/Dropbox/05_PROGRAMS/13_images/shortcuts.pdf"];shortcuts:=commandSquare;
editCommandSquare:=SystemOpen["/Users/johncosnett/Dropbox/05_PROGRAMS/17_steno/steno_2_scratch/command_square/01_command_square_nb.nb"];
fingerSpellSquare:=SystemOpen["/Users/johncosnett/Dropbox/05_PROGRAMS/13_images" <> "/fingerSpellSquare.pdf"]
editFingerSpellSquare:=SystemOpen@"/Users/johncosnett/Dropbox/05_PROGRAMS/17_steno/steno_2_scratch/command_square/03_finger_spell_square.nb";
phonemeSquare:=SystemOpen["/Users/johncosnett/Dropbox/05_PROGRAMS/13_images" <> "/soundSquare.pdf"];
soundSquare:=phonemeSquare;
editPhonemeSquare:=SystemOpen@"/Users/johncosnett/Dropbox/05_PROGRAMS/17_steno/steno_2_scratch/command_square/04_phoneme_square.nb";


nemonic:=Module[{},Module[{},CellPrint[Cell[TextData[StyleBox["Should The King Please Wear His Red And Orange STARry \
Elephant Underwear For Royal Purposes Before Lunch Gets Totally Super Devoured \
(by) Zombies",
 StripOnInput->False,
 LineColor->RGBColor[
  0.22899251821568467`, 0.7568250097244553, 0.18772375680879838`],
 FrontFaceColor->RGBColor[
  0.22899251821568467`, 0.7568250097244553, 0.18772375680879838`],
 BackFaceColor->RGBColor[
  0.22899251821568467`, 0.7568250097244553, 0.18772375680879838`],
 GraphicsColor->RGBColor[
  0.22899251821568467`, 0.7568250097244553, 0.18772375680879838`],
 FontWeight->Normal,
 FontColor->RGBColor[
  0.22899251821568467`, 0.7568250097244553, 0.18772375680879838`]]], "Text",
 Evaluatable->True,
 CellGroupingRules->"InputGroupin",
 CellEvaluationFunction->cel`gTalker,
 CellFrameLabels->{{None, ""}, {None, None}},
 CellChangeTimes->{{3.766034843602828*^9, 3.766034906704156*^9}},
 CellLabel->"In[309]:="]]];NotebookDelete[];SelectionMove[EvaluationNotebook[], Next, CellContents];];


shrink90:=Magnify[#,.9]&;
shrink50:=Magnify[#,.5]&;
shrink40:=Magnify[#,.4]&;
shrink30:=Magnify[#,.3]&;


homePositionP  := Module[{},CellPrint[ExpressionCell[shrink90[Import["~/Dropbox/05_PROGRAMS/13_images/home_position.png"]], "Print", Evaluatable -> False, CellAutoOverwrite -> False]];
  SelectionMove[EvaluationCell[], All, EvaluationCell];
  NotebookDelete[];
  SelectionMove[EvaluationNotebook[], Next, CellContents];];

lerip  := Module[{},CellPrint[ExpressionCell[shrink90[Import["~/Dropbox/05_PROGRAMS/13_images/left_right.pdf"][[1]]], "Print", Evaluatable -> False, CellAutoOverwrite -> False]];SelectionMove[EvaluationCell[], All, EvaluationCell];
  NotebookDelete[];
  SelectionMove[EvaluationNotebook[], Next, CellContents];];

leftp  := Module[{},CellPrint[ExpressionCell[shrink30[Import["~/Dropbox/05_PROGRAMS/13_images/left.png"]], "Print", Evaluatable -> False, CellAutoOverwrite -> False]]];
rightp := Module[{},CellPrint[ExpressionCell[shrink30[Import["~/Dropbox/05_PROGRAMS/13_images/right.png"]], "Print", Evaluatable -> False, CellAutoOverwrite -> False]]];
slop   := Module[{},CellPrint[ExpressionCell[shrink30[Import["~/Dropbox/05_PROGRAMS/13_images/preview.html"]], "Print", Evaluatable -> False, CellAutoOverwrite -> False]]];


leri:= Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/left_right.pdf"]];
left:=Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/left.png"]];
right:=Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/right.png"]];
slo:=Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/preview.html"]];

lo:=Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/splitography_layout.jpg"]];
qs:=Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/quick_start.jpg"]];


End[];
EndPackage[];