BEGIN ~DSKENB~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 2
  SAY @3
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @4
  IF ~~ THEN EXTERN ~DSSPEC~ 4
END

IF ~~ THEN BEGIN 4
  SAY @5
  IF ~~ THEN EXTERN ~DSSPEC~ 5
END

IF ~~ THEN BEGIN 5
  SAY @6
  IF ~~ THEN EXTERN ~DSSPEC~ 6
END

IF ~~ THEN BEGIN 6
  SAY @7
  IF ~~ THEN DO ~SetGlobal("AttackSpec","GLOBAL",1)~ EXIT
END
