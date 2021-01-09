@ECHO OFF
ECHO �
ECHO �        Print Tutorial and Reference Manual for Vanilla SNOBOL4
ECHO �
ECHO �The manual is approximately 150 pages long.
ECHO �
ECHO �Your printer should contain 8-1/2 x 11" paper, and be set to print
ECHO �in 10 pitch (Courier) type, six lines per inch.
ECHO �
ECHO �Position the paper so that the top-of-form perforation is aligned
ECHO �with the print head.
ECHO �
PAUSE
ECHO �
ECHO �Press Control-C to terminate printing . . .
IF EXIST PM.EXE GOTO LOCAL
IF NOT EXIST A:PM.EXE GOTO FAIL
A:PM -P >NUL
GOTO JOIN
:LOCAL
PM -P >NUL
:JOIN
IF ERRORLEVEL 1 GOTO FAIL
ECHO �
GOTO DONE
:FAIL
ECHO �      Manual printing Failed.  Either the PM.EXE file is corrupted,
ECHO �      or the Vanilla SNOBOL4 diskette is not in drive A:
ECHO �
ECHO �      Replacement Vanilla SNOBOL4 diskettes may be obtained by
ECHO �      sending $10 to:   Catspaw, Inc.
ECHO �                        P.O. Box 1123
ECHO �                        Salida, CO 81201
:DONE
ECHO ON
