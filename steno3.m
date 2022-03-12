BeginPackage["steno3`"];
Unprotect["MyPack`*"]; ClearAll["MyPack`*"]; ClearAll["MyPack`Private`*"];

(*dic::usage = "dic[]";*)
di::usage = "di[str]";
id::usage = "id[str]";
$ii::usage = "$ii[]";
myOwnDictionary::usage = "myOwnDictionary[]";
dd::usage = "dd[word]";
listdd::usage = "listdd[]";

bme::usage = "bme[beginning, middle, end]";
Begin["`Private`"];

bme[b_String, m_String, e_String] := Cases[WordList[], word_ /; StringMatchQ[word, b ~~ ___ ~~ m ~~ ___ ~~ e]]
green = RGBColor[0.22899251821568467`, 0.7568250097244553, 0.18772375680879838`];
yellow= RGBColor[253/255, 234/255, 67/255];


$ii =Module[{}, Join[
   Import[
    "/Users/johncosnett/Dropbox/05_PROGRAMS/17_steno/000_plover_dictionary" <>
     "/my_main_.json"],
   Import[
    "/Users/johncosnett/Dropbox/05_PROGRAMS/17_steno/000_plover_dictionary" <>
     "/my_commands_.json"]
   ]];

di[str_String] := Module[{j},
  j = Cases[$ii, HoldPattern[_ -> str]];
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

dd[str_String,col_:yellow] :=
  Highlighted[#,Background->col]& /@ (Last /@
     Cases[myOwnDictionary, HoldPattern[str -> _]]);

dd[str_] := dd[ToString[str]];

listdd:=Sequence[Row[dd /@ Global`ideal]];
(***************** my own dictionary *****************)
End[];
EndPackage[];





















