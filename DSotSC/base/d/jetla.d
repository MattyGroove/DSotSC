BEGIN ~JETLA~

IF WEIGHT #1 ~NumberOfTimesTalkedTo(0)
ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)
~ THEN BEGIN 0
  SAY @1 
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 3
END

IF WEIGHT #2 ~NumberOfTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)
~ THEN BEGIN 1
  SAY @4 
  IF ~~ THEN REPLY @2 GOTO 4
  IF ~~ THEN REPLY @3 GOTO 3
END

IF WEIGHT #3 ~NumberOfTimesTalkedTo(0)
ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
~ THEN BEGIN 2
  SAY @5 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @10
  IF ~~ THEN DO ~SetGlobalTimer("Jetla","GLOBAL",TEN_DAYS)
SetGlobal("TalkedJet","GLOBAL",1)
RevealAreaOnMap("DSC001")
JoinParty()
~ UNSOLVED_JOURNAL @90800 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @12
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~True()
~ THEN BEGIN 7
  SAY @13 
  IF ~~ THEN REPLY @14 EXIT
  IF ~~ THEN REPLY @15 GOTO 4
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 8
  SAY @16 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @17 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @18 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
  SAY @19
  IF ~~ THEN EXIT
END