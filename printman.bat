@ECHO OFF
ECHO ÿ
ECHO ÿ        Print Tutorial and Reference Manual for Vanilla SNOBOL4
ECHO ÿ
ECHO ÿThe manual is approximately 150 pages long.
ECHO ÿ
ECHO ÿYour printer should contain 8-1/2 x 11" paper, and be set to print
ECHO ÿin 10 pitch (Courier) type, six lines per inch.
ECHO ÿ
ECHO ÿPosition the paper so that the top-of-form perforation is aligned
ECHO ÿwith the print head.
ECHO ÿ
PAUSE
ECHO ÿ
ECHO ÿPress Control-C to terminate printing . . .
IF EXIST PM.EXE GOTO LOCAL
IF NOT EXIST A:PM.EXE GOTO FAIL
A:PM -P >NUL
GOTO JOIN
:LOCAL
PM -P >NUL
:JOIN
IF ERRORLEVEL 1 GOTO FAIL
ECHO ÿ
GOTO DONE
:FAIL
ECHO ÿ      Manual printing Failed.  Either the PM.EXE file is corrupted,
ECHO ÿ      or the Vanilla SNOBOL4 diskette is not in drive A:
ECHO ÿ
ECHO ÿ      Replacement Vanilla SNOBOL4 diskettes may be obtained by
ECHO ÿ      sending $10 to:   Catspaw, Inc.
ECHO ÿ                        P.O. Box 1123
ECHO ÿ                        Salida, CO 81201
:DONE
ECHO ON
