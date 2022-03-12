BeginPackage["stenoLinux`"];
Unprotect["MyPack`*"]; ClearAll["MyPack`*"]; ClearAll["MyPack`Private`*"];



(**************   steno1    **************)
cheat::usage = "cheat[]";
lo::usage = "lo[]";
lerip::usage = "lerip[]";
homePositionP::usage = "homePositionP[]";
nemonic::usage = "nemonic[]";
shortcuts2::usage = "shortcuts2";
editCommandSquare::usage = "editCommandSquare[]";
commandSquare::usage = "commandSquare[]";
editFingerSpellSquare::usage = "editFingerSpellSquare[]";
fingerSpellSquare::usage = "fingerSpellSquare[]";
editSingleNoteSquare::usage = "editSingleNoteSquare[]";
singleNoteSquare::usage = "singleNoteSquare[]";

soundSquare::usage = "soundSquare[]";
phonemeSquare::usage = "phonemeSquare[]";
editPhonemeSquare::usage = "editPhonemeSquare[]";

editCompleteAlphabetSquare::usage = "editCompleteAlphabetSquare[]";
completeAlphabetSquare::usage = "completeAlphabetSquare[]";

copyStenoOrder::usage = "copyStenoOrder[]";
(**************   steno1    **************)

(**************   steno2    **************)
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
(**************   steno2    **************)

(**************   steno3    **************)
di::usage = "di[str]";
id::usage = "id[str]";
$ii::usage = "$ii[]";
myOwnDictionary::usage = "myOwnDictionary[]";
dd::usage = "dd[word]";
listdd::usage = "listdd[]";
bme::usage = "bme[beginning, middle, end]";
viola::usage = "viola[chords, n,t]";
(**************   steno3    **************)

(**************   steno4    **************)
(**************   steno4    **************)

Begin["`Private`"];


(**************   steno4    **************)
(**************   steno4    **************)


(**************   steno4    **************)
(**************   steno4    **************)



(**************   steno3    **************)
(**************   steno3    **************)
bme[b_String, m_String, e_String] := Cases[WordList[], word_ /; StringMatchQ[word, b ~~ ___ ~~ m ~~ ___ ~~ e]];

green = RGBColor[0.22899251821568467`, 0.7568250097244553, 0.18772375680879838`];
yellow= RGBColor[253/255, 234/255, 67/255];
$ii =Module[{}, Join[
   Import[$HomeDirectory<>"/Dropbox/05_PROGRAMS/17_steno/000_plover_dictionary/03_trucated_dictionary_linux_oct_2020_.json"],
   Import[$HomeDirectory<>"/Dropbox/05_PROGRAMS/17_steno/000_plover_dictionary/01_command_mode_linux_.json"]
   ]];

di[str_String] := Module[{j},
    str2=StringJoin[StringSplit[str]];
  j = Cases[List@@@$ii, {_,str2}];
  Column[Highlighted /@ (First /@ j)]];

di[str_]:=di[str//ToString];
(*reverse of id*)

id[str_String] := Module[{j}, j = Cases[$ii, HoldPattern[str -> _]];
   Column[Highlighted /@ (Last /@ j)]];
id[str_] := id[str // ToString];
(***************** my own dictionary *****************)
myOwnDictionary= {
  "several"->"SEFRL",
  "suppress"->"SPRES",
  "averages"->"AFRGS",
  "tablet"->"TABLT",
  "tepid"->"TEPD",
  "superb"->"SPERB",
  "scaffold"->"SKAFLD",
  "starlet"->"STARLT",
  "started"->"STARTD",
  "ruffled"->"R*UFL/-D",
  "scuffled"->"SKUFLD",
  "corrupted"->"KRUPT/-D",
  "spotted"->"SPOT/-D",
  "horrible"->"HORBL",
  "effort"->"EFRT",
  "edit"->"ETD",
  "elves"->"EFLS",
  "twelve"->"TWEFL",
  "credit"->"KRETD",
  "portal"->"PORLT",
  "still"->"STEUL",
  "rig"->"REUG",
  "hit"->"HEUT",
  "sip"->"SEUP",
  "sir"->"SEUR",
  "skirt"->"SKEURT",
  "crypt"->"KREUPT",
  "syrup"->"SEURP",
  "pig"->"PEUG",
  "rift"->"REUFT",
  "scribble"->"SKREUBL",
  "rid"->"REUD",
  "river"->"REUFR",
  "hid"->"HEUD",
  "wilt"->"WEULT",
  "wig"->"WEUG",
  "wit"->"WEUT",
  "spill"->"SPEUL",

  (*ay*)

  "aids"->"AEUDZ",
  "ace"->"AEUS",
  "ate"->"AEUT",
  "able"->"AEUBL",
  "ape"->"AEUP",
  "raid"->"RAEUD",
  "raise"->"RAEUZ",
  "rail"->"RAEUL",
  "rate"->"RAEUT",
  "race"->"RAEUS",
  "pay"->"PAEU",
  "paid"->"PAEUD",
  "pace"->"PAEUS",
  "tape"->"TAEUP",
  "spray"->"SPRAEU",
  "praise"->"PRAEUZ",

  (*ee*)
  (*Kenneth discovered the augmentation potential of the terminal and vim! an unexplored domain! The strange advantage of its narrow code oriented domain, it exploits the no free lunch idea  of funnelling the enemy into a thermopolaic pass*)
  "weaver"->"WAOEFR",
  "trees"->"TRAOES",
  "eel"->"AOEL",
  "eat"->"AOET",
  "evil"->"AOEFL",
  "ear"->"AOER",
  "heat"->"HAOET",
  "heap"->"HAOEP",
  "wield"->"WAOELD",
  "weird"->"WAOERD",
  "peer"->"PAOER",
  "priest"->"PRAOEFT",
  "tree"->"TRAOE",
  "tweeze"->"TWAOEZ",
  "tweed"->"TWAOED",
  "seat"->"SAOET",
  "cease"->"SAOES",
  "seed"->"SAOED",
  "seize"->"SAOEZ",
  "secrete"->"SKRAOET",

  (*aye*)
  "ire"->"AOEUR",
  (*"I'll"->"AOEUL",*)
  "ice"->"AOEUS",
  "rifle"->"RAOEUFL",
  "ripe"->"RAOEUP",
  "right"->"RAOEUT",
  "height"->"HAOEUT",
  "wild"->"WAOEULD",
  "pipe"->"PAOEUP",
  "pride"->"PRAOEUD",
  "prize"->"PRAOEUZ",
  "kite"->"KAOEUT",
  "type"->"TAOEUP",
  "spite"->"SPAOEUT",

  (*o*)

  "hope"->"HOEP",
  "spore"->"SPOER",
  "post"->"POEFT",
  "sold"->"SOELD",
  "prose"->"PROES",
  "ode"->"OED",
  "oat"->"OET",
  "over"->"OEFR",
  "robe"->"ROEB",
  "rope"->"ROEP",
  "roar"->"ROER",
  "rove"->"ROEF",
  "host"->"HOEFT",
  "wove"->"WOEF",
  "wrote"->"WROET",
  "pole"->"POEL",
  "pose"->"POES",
  "cope"->"KOEP",
  "coat"->"KOET",
  "code"->"KOED",
  "crow"->"KROE",
  "told"->"TOELD",

  (*ew and oo but no spelled oo*)

  "cube"->"KAOUB",
  "use"->"AOUZ",
  "rude"->"RAOUD",
  "rule"->"RAOUL",
  "pure"->"PAOUR",
  "prude"->"PRAOUD",
  "Proust"->"PRAOUFT",
  "cure"->"KAOUR",
  "cute"->"KAOUT",
  "crew"->"KRAOU",
  "cruel"->"KRAOUL",
  "crude"->"KRAOUD",
  "cruise"->"KRAOUS",
  "truce"->"TRAOUS",
  "truth"->"TRAOUT",
  "spew"->"SPAOU",
  "skew"->"SKAOU",


  (*aw*)
  "all"->"AUL",
  "awful"->"AUFL",
  "raw"->"RAU",
  "call"->"KAUL",
  "caught"->"KAUT",
  "crawl"->"KRAUL",
  "sprawl"->"SPRAUL",
  "scald"->"SKAULD",
  "straw"->"STRAU",
  "halt"->"HAULT",
  "hall"->"HAUL",
  "wall"->"WAUL",

  (*ow*)
  "out"->"OUT",
  "how"->"HOU",
  "howl"->"HOUL",
  "house"->"HOUS",
  "pout"->"POUT",
  "power"->"POUR",
  "prowl"->"PROUL",
  "tower"->"TOUR",
  "spouse"->"SPOUS",
  "sprout"->"SPROUT",
  "scour"->"SKOUR",

  (*oi*)
  "soy"->"SOEU",
  "oil"->"OEUL",
  "coil"->"KOEUL",
  "toil"->"TOEUL",
  "soil"->"SOEUL",


  (*vowel disambiguator chords*)


  "wheel"->"WHAOEL",
  "wheal"->"WHAEL",
  "reed"->"RAOED",
  "read"->"RAED",
  "reel"->"RAOEL",
  "real"->"RAEL",
  "heel"->"HAOEL",
  "heal"->"HAEL",
  "here"->"HAOER",
  "hear"->"HAER",
  "ware"->"WAEUR",
  "wear"->"WAER",
  "pee"->"PAOE",
  "pea"->"PAE",
  "piece"->"PAOES",
  "peace"->"PAES",
  "tee"->"TAOE",
  "tea"->"TAE",
  "see"->"SAOE",
  "sea"->"SAE",
  "tail"->"TAEUL",
  "tale"->"TAEL",
  "sail"->"SAEUL",
  "sale"->"SAEL",
  "stair"->"STAEUR",
  "stare"->"STAER",
  "waist"->"WAEUFT",
  "waste"->"WAEFT",
  "hood"->"HAOD",
  "rude"->"RAOUD",
  "pool"->"PAOL",
  "crew"->"KRAOU",
  "soot"->"SAOT",
  "truce"->"TRAOUS",
  "school"->"SKAOL",
  "ruse"->"RAOUZ",
  "road"->"RAOD",
  "rode"->"ROED",
  "roar"->"RAOR",
  "toad"->"TAOD",
  "soar"->"SAOR",
  "sore"->"SOR",


  (*the missing keys*)
  "due"->"TKAOU",
  "duffer"->"TKUFR",
  "deferral"->"TKEFRL",
  "devil"->"TKEFL",
  "double"->"TKUBL",
  "debt"->"TKET",
  "dabble"->"TKABL",
  "drug"->"TKRUG",
  "depress"->"TKPRES",
  "desire"->"STKAOEUR",
  "dessert"->"STKERT",
  "destroyed"->"STKROEUD",
  "feral"->"TPERL",
  "ford"->"TPORD",
  "for"->"TPOR",
  "phrase"->"TPRAEUZ",
  "fierce"->"TPAOERS",
  "fable"->"TPAEUBL",
  "feeble"->"TPAOEBL",
  "sphere"->"STPAOER",
  "fries"->"TPRAOEUS",
  "leader"->"HRAOERD",
  "lace"->"HRAEUS",
  "letter"->"HRERT",
  "lust"->"HRUFT",
  "lovers"->"HROFRS",
  "leaders"->"HRAOERDZ",
  "glad"->"TKPWHRAD",
  "glare"->"TKPWHRAEUR",
  "glides"->"TKPWHRAOEUDZ",
  "give"->"TKPWEUF",
  "get"->"TKPWET",
  "group"->"TKPWRAOUP",
  "guest"->"TKPWEFT",
  "guide"->"TKPWAOEUD",
  "gravel"->"TKPWRAFL",
  "cigarette"->"STKPWRET",
  "goblet"->"TKPWOBLT",
  "bored"->"PWORD",
  "board"->"PWAORD",
  "bruise"->"PWORD",
  "buyer"->"PWAOEUR",
  "bobble"->"PWOBL",
  "brutal"->"PWRAOULT",
  "zest"->"S*EFT",
  "zap"->"SA*P",
  "zag"->"SA*G",
  "vile"->"SRAOEUL",
  "vase"->"SRAEUS",
  "virus"->"SRAOEURS",
  "eke"->"AOEBG",
  "rockets"->"ROBGTS",
  "correct"->"KREBGT",
  "quake"->"KWAEUBG",
  "task"->"TAFBG",



(*n-*)
  "nag"->"TPHAG",
  "nap"->"TPHAP",
  "nab"->"TPHAB",
  "nut"->"TPHUT",
  "nub"->"TPHUB",
  "never"->"TPHEFR",
  "nestle"->"TPHEFL",
  "nod"->"TPHOD",
  "nest"->"TPHEFT",
  "nerd"->"TPHERD",
  (*plus previous*)
  "noun"->"TPHOUPB",
  "inhibit"->"TPHEUBT",
  "nudge"->"TPHUPBLG",
  "notes"->"TPHOETS",
  "knack"->"TPHABG",
  "enacts"->"TPHABGTS",
  "neck"->"TPHEBG",
  "known"->"TPHOEPB",
  "knock"->"TPHOBG",
  "gnome"->"TPHOEPL",
  "noise"->"TPHOEUS",
  "novice"->"TPHOFS",
  "named"->"TPHAEUPLD",
  "neural"->"TPHAOURL",
  "snide"->"STPHAOEUD",
  "announce"->"TPHOUPBS",


(*-n*)
  "pent"->"PEPBT",
  "parent"->"PARPBT",
  "went"->"WEPBT",
  "earns"->"ERPBS",
  "rant"->"RAPBT",
  "hunt"->"HUPBT",
  "hand"->"HAPBD",
  "panel"->"PAPBL",
  "stun"->"STUPB",
  (*plus previous*)
  "loin"->"HROEUPB",
  "donor"->"TKOERPB",
  "winner"->"WEURPB",
  "dinner"->"TKEURPB",
  "learned"->"HRERPBD",
  "lend"->"HREPBD",
  "allowance"->"HROUPBS",
  "flaunt"->"TPHRAUPBT",
  "deference"->"TKEFRPBS",
  "different"->"TKEUFRPBT",
  "dance"->"TKAPBS",
  "diner"->"TKAOEURPB",
  "demand"->"TKPHAPBD",
  "grunt"->"TKPWRUPBT",
  "grant"->"TKPWRAPBT",
  "gleans"->"TKPWHRAOEPBS",
  "severance"->"SEFRPBS",
  "cement"->"SPHEPBT",
  "design"->"STKAOEUPB",

(*m-*)
  "must"->"PHUFT",
  "muffle"->"PHUFL",
  "maggot"->"PHAGT",
  "mallet"->"PHALT",
  "smuggle"->"SPHULG",
  "morals"->"PHORLS",
  (*plus previous*)

  (*plus previous*)
  "mound"->"PHOUPBD",
  "mourn"->"PHOURPB",
  "main"->"PHAEUPL",
  "matter"->"PHAEURT",
  "commit"->"KPHEUT",
  "commend"->"KPHEPBD",
  "smudge"->"SPHUPBLG",
  "smuggle"->"SPHULG",
  "semester"->"SPHEFRT",



(*sound is the key to my ability and disability, I am bad at hearing my inner voice, and I cannot shut out outside sounds*)
  (*-m*)
  "arm"->"ARPL",
  "rum"->"RUPL",
  "harm"->"HARPL",
  "tempt"->"TEPLT",
  "term"->"TERPL",
  (*plus previous*)

  (*plus previous*)
  "forms"->"TPORPLS",
  "primed"->"PRAOEUPLD",
  "rhymes"->"RAOEUPLS",
  "serum"->"SAOERPL",
  "time"->"TAOEUPL",
  "hermit"->"HERPLT",
  "maim"->"PHAEUPL",
  "plumb"->"PHRUPL",
  "dream"->"TKRAOEPL",
  "gym"->"SKWREUPL",
  "germ"->"SKWRERPL",
  "jam"->"SKWRAPL",
  "blame"->"PWHRAEUPL",
  "bottom"->"PWOPLT",
  "grammar"->"TKPWRARPL",


(*-lm*)
  "calmed"->"KAPLD",
  "palm"->"PAPL",
  "qualms"->"KWAPLS",
  (*plus previous*)

  (*plus previous*)
  "balm"->"PWAUPL",
  "psalm"->"SAUPL",


(*j-*)
  "jut"->"SKWRUT",
  "jug"->"SKWRUG",
  "just"->"SKWRUFT",
  "jest"->"SKWREFT",
  "jets"->"SKWRETS",
  "job"->"SKWROB",
  "jostle"->"SKWROFL",
  "jazz"->"SKWRAZ",
  "jagged"->"SKWRAGD",
  (*plus previous*)

  (*plus previous*)
  "judge"->"SKWRUPBLG",
  "journal"->"SKWRURPBL",
  "join"->"SKWROEUPB",
  "joyful"->"SKWROEUFL",
  "jam"->"SKWRAPL",
  "gerunds"->"SKWRERPBDZ",


(*-j*)
  "urge"->"URPBLG",
  "edge"->"EPBLG",
  "average"->"AFRPBLG",
  "purge"->"PURPBLG",
  "porridge"->"PORPBLG",
  "trudge"->"TRUPBLG",
  "storage"->"STORPBLG",
  (*plus previous*)

  (*plus previous*)
  "forge"->"TPORPBLG",
  "budgets"->"PWUPBLGTS",
  "average"->"AFRPBLG",
  "leverage"->"HREFRPBLG",
  "merge"->"PHERPBLG",
  "beige"->"PWAEUPBLG",
  "carriage"->"KAEURPBLG",
  "fidget"->"TPEUPBLGT",
  "frigid"->"TPREUPBLGD",
  "digit"->"TKEUPBLGT",
  "gadget"->"TKPWAPBLGT",
  "garage"->"TKPWRAPBLG",
  "grudge"->"TKPWRUPBLG",
  "turgid"->"TURPBLGD",

(*y-*)
  "yard"->"KWRARD",
  "yet"->"KWRET",
  "yurt"->"KWRURT",
  (*plus previous*)

  (*plus previous*)
  "year"->"KWRAOER",
  "yearn"->"KWRERPB",
  "yolk"->"KWROEBG",
  (*we identified our weaknesses and we adapted with this steno, remember that laser exam, if you could have typed out chapter 5 weeks before it would have been easier*)


  (* th- *)

  "thefts"->"THEFTS",
  "thud"->"THUD",
  "thus"->"THUS",
  "thug"->"THUG",
  "thing"->"THEUPBG",
  "thence"->"THEPBS",
  "them"->"THEPL",
  "thumb"->"THUPL",
  "thrill"->"THREUL",
  "throng"->"THROPBG",
  "thrash"->"THRARB",


  (* -th *)
  "hath"->"HA*T",
  "earth"->"*ERT",
  "oath"->"O*ET",
  "health"->"H*ELT",
  "wealth"->"W*ELT",
  "worth"->"WO*RT",
  "path"->"PA*T",
  "troth"->"TRO*T",
  "seethe"->"SAO*ET",
  "method"->"PH*ETD",
  "math"->"PHA*T",
  "birth"->"PW*EURT",
  "breath"->"PWR*ET",
  "fifth"->"TP*EUFT",
  "death"->"TK*ET",
  "sleuth"->"SHRAO*UT",
  "blithe"->"PWHRAO*EUT",
  "growth"->"TKPWHRO*ET",


  (* ch- *)
  "chess"->"KHES",
  "chest"->"KHEFT",
  "chart"->"KHART",
  "chat"->"KHAT",
  "chop"->"KHOP",
  "chore"->"KHOR",
  "chaff"->"KHAF",
  "choose"->"KHAOS",
  "chasm"->"KHAFPL",
  "chuck"->"KHUBG",
  "check"->"KHEBG",
  "churn"->"KHURPB",
  "cherub"->"KHERB",
  "chin"->"KHEUPB",
  "channel"->"KHAPBL",
  "chant"->"KHAPBT",
  "chance"->"KHAPBS",
  "chive"->"KHAOEUF",
  "charm"->"KHARPL",


  (* -ch *)
  "touch"->"TUFP",
  "etch"->"EFP",
  "ratchet"->"RAFPT",
  "hutch"->"HUFP",
  "hatch"->"HAFP",
  "watch"->"WAFP",
  "patch"->"PAFP",
  "catch"->"KAFP",
  "crutch"->"KRUFP",
  "such"->"SUFP",
  "sketch"->"SKEFP",
  "stretch"->"STREFP",
  "retch"->"REFP",
  "bleach"->"PWHRAOEFP",
  "much"->"PHUFP",
  "latch"->"HRAFP",
  "leech"->"HRAOEFP",
  "match"->"PHAFP",
  "botch"->"PWOFP",
  "fetch"->"TPEFP",
  "ditch"->"TKEUFP",
  "glitch"->"TKPWHREUFP",
  "vouch"->"SROUFP",
  "slouch"->"SHROUFP",
  "smooch"->"SPHAOFP",
  "splotch"->"SPHROFP",


  (* sh_ : SH_  *)
  "shell"->"SHEL",
  "shuffled"->"SHUFLD",
  "shall"->"SHAL",
  "shore"->"SHOR",
  "shovels"->"SHOFLS",
  "shim"->"SHEUPM",
  "slime"->"SHRAOEUPL",
  "shrewd"->"SHRAOUD",
  "shrine"->"SHRAOEUPB",
  "shush"->"SHURB",
  "shuck"->"SHUBG",
  "shark"->"SHARBG",
  "shock"->"SHOBG",
  "sheesh"->"SHAOERB",
  "shrivel"->"SHREUFL",
  "sugar"->"SHAOURG",

  (* _sh : _RB  *)
  "ash"->"ARB",
  "rush"->"RURB",
  "rash"->"RARB",
  "hush"->"HURB",
  "hash"->"HARB",
  "wash"->"WARB",
  "push"->"PURB",
  "posh"->"PORB",
  "crush"->"KRURB",
  "crash"->"KRARB",
  "trash"->"TRARB",
  "squash"->"SKWARB",
  "stash"->"STARB",
  "lash"->"HRARB",
  "mesh"->"PHERB",
  "mash"->"PHARB",
  "plush"->"PHRURB",
  "bush"->"PWURB",
  "brush"->"PWRURB",
  "blush"->"PWHRURB",
  "fish"->"TPEURB",
  "fresh"->"TPRERB",
  "flush"->"TPHRURB",
  "flesh"->"TPHRERB",
  "flash"->"TPHRARB",
  "dash"->"TKARB",
  "delish"->"TKHREURB",
  "gosh"->"TKPWORB",
  "gash"->"TKPWARB",
  "shush"->"SHURB",
  "slash"->"SHRARB",
  "smush"->"SPHURB",
  "slosh"->"SHRORB",
  "splash"->"SPHRARB",
  "squish"->"SKWEURB",
  "Irish"->"AOEURB",

  (* -ng : _PBG  *)
  "anger"->"ARPBG",
  "storing"->"ARPBG",
  "rung"->"RUPBG",
  "rang"->"RAPBG",
  "prong"->"PROPBG",
  "tongue"->"TUPBG",
  "twang"->"TWAPBG",
  "song"->"SOPBG",
  "stung"->"STUPBG",
  "strong"->"STROPBG",
  "finger"->"TPEURPBG",
  "dung"->"TKUPBG",
  "lung"->"HRUPBG",
  "ping"->"PEUPBG",
  "pong"->"POPBG",
  "among"->"PHOPBG",
  "bring"->"PWREUPBG",
  "young"->"KWRUPBG",
  "fang"->"TPAPBG",
  "flung"->"TPHRUPBG",
  "gang"->"TKPWAPBG",
  "belong"->"PWHROPBG",


  (* _nj : _PBG*)
  "sponge"->"SPOPBG",
  "orange"->"ORPBG",
  "change"->"KHAEUPBG",
  "range"->"RAEUPBG",
  "hinge"->"HEUPBG",
  "lounge"->"HROUPBG",
  "plunge"->"PHRUPBG",
  "cringe"->"KREUPBG",
  "tinge"->"TEUPBG",
  "fringe"->"TPREUPBG",
  "derange"->"TKRAEUPBG",
  "grunge"->"TKPWRUPBG",
  "syringe"->"SREUPBG"




};
dd[str_String,col_:yellow] := Highlighted[#,Background->col]& /@ (Last /@ Cases[myOwnDictionary, HoldPattern[str -> _]]);
dd[str_] := dd[ToString[str]];
listdd:=Sequence[Row[dd /@ Global`ideal]];
(***************** my own dictionary *****************)

(**************   steno3    **************)
(**************   steno3    **************)



(**************   steno2    **************)
(**************   steno2    **************)
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
(**************   steno2    **************)
(**************   steno2    **************)


(**************   steno1    **************)
(**************   steno1    **************)
copyMathematicaInterfaceLink1:=CopyToClipboard["guide/GamepadAndDeviceInterface"];
copyStenoOrder := CopyToClipboard["STKPWHRAO*EUFRPBLGTSDZ"];
cheat:=SystemOpen[$HomeDirectory<>"/Dropbox/05_PROGRAMS/13_images/plover_cheat_sheet_.pdf"];
commandSquare:=SystemOpen[$HomeDirectory<>"/Dropbox/05_PROGRAMS/13_images/shortcuts2.pdf"];shortcuts2:=commandSquare;
editCommandSquare:=SystemOpen[$HomeDirectory<>"/Dropbox/05_PROGRAMS/17_steno/steno_2_scratch/command_square/01_command_square_nb.nb"];
fingerSpellSquare:=SystemOpen[$HomeDirectory<>"/Dropbox/05_PROGRAMS/13_images" <> "/fingerSpellSquare.pdf"];
editFingerSpellSquare:=SystemOpen[$HomeDirectory<>"/Dropbox/05_PROGRAMS/17_steno/steno_2_scratch/command_square/03_finger_spell_square.nb"];
phonemeSquare:=SystemOpen["~/Dropbox/05_PROGRAMS/13_images" <> "/soundSquare.pdf"];
soundSquare:=phonemeSquare;
editPhonemeSquare:=SystemOpen[$HomeDirectory<>"/Dropbox/05_PROGRAMS/17_steno/steno_2_scratch/command_square/04_phoneme_square.nb"];
singleNoteSquare:=SystemOpen[($HomeDirectory<>"/Dropbox/05_PROGRAMS/13_images" <> "/singleNoteSquare.pdf")];
editSingleNoteSquare:=SystemOpen[$HomeDirectory<>"/Dropbox/05_PROGRAMS/17_steno/steno_2_scratch/command_square/05_single_note_square.nb"];
completeAlphabetSquare:=SystemOpen[($HomeDirectory<>"/Dropbox/05_PROGRAMS/13_images" <> "/completeAlphabetSquare.pdf")];
editCompleteAlphabetSquare:=SystemOpen[$HomeDirectory<>"/Dropbox/05_PROGRAMS/17_steno/steno_2_scratch/command_square/06_steno_complete_alphabet_square_.nb"];

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
leri:= Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/left_right.pdf"]];
left:=Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/left.png"]];
right:=Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/right.png"]];
lo:=Module[{},SystemOpen["~/Dropbox/05_PROGRAMS/13_images/splitography_layout.jpg"]];
(**************   steno1    **************)
(**************   steno1    **************)

End[];
EndPackage[];

