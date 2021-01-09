@ECHO OFF
IF NOT EXIST %1SNOBOL4.EXE GOTO FAIL
IF NOT EXIST %1DEMO.SNO GOTO FAIL
%1SNOBOL4 %1DEMO.SNO;%1DEMO.TXT
IF ERRORLEVEL 1 GOTO FAIL
GOTO DONE
:FAIL
ECHO *
ECHO *      I'm unable to locate the SNOBOL4 compiler or the
ECHO *      demonstration files.  Retype the DEMO command and
ECHO *      provide the disk drive where the SNOBOL4 demonstation
ECHO *      is located.
ECHO *
ECHO *      For example, if the demonstration files are located on
ECHO *      drive B:, enter
ECHO *
ECHO *      B:DEMO B:
ECHO *
ECHO *      You can also specify a full pathname to the directory
ECHO *      containing the demonstration files.  Just be sure to
ECHO *      end the pathname with a \, as in:
ECHO *
ECHO *      D:\FILES\SNOBOL4\DEMO D:\FILES\SNOBOL4\
ECHO *
ECHO *      
ECHO *      
:DONE
ECHO ON
