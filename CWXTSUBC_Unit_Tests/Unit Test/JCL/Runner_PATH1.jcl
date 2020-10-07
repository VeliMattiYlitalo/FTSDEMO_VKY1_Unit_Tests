<<<<<<< HEAD
//HFIVKY0T JOB ('EUDD,INTL'),'VELLU',NOTIFY=&SYSUID,
//             MSGLEVEL=(1,1),MSGCLASS=X,CLASS=A,REGION=6M
//*** SPECIFY JOBCARD IN TOTALTEST PREFERENCES TO SUBSTITUTE
//***
//*** THE JOB CARD MUST INCLUDE A NOTIFY STATEMENT SUCH
//*** AS NOTIFY=&SYSUID and also a REGION=0M parameter
//*
//********************************************************************
//* Execute Target Runner
//********************************************************************
//RUNNER EXEC PGM=TTTRUNNR
//*
//* You need to modify the following DD statements.
//*
//* The first DD statement should be changed to the ECC SLCXLOAD
//* dataset that contains the Topaz for Total Test TTTRUNNR program.
//*
//* The second DD statement should be changed to the loadlib
//* containing the programs to run during the test.
//*
//* The third DD statement is only required if running the JCL
//* from Topaz for Total Test CLI with Code Coverage support.
//* If testing an LE application it should be changed to the
//* loadlib containing the COBOL runtime(CEE.SCEERUN), otherwise
//* it can be removed.
//*
//STEPLIB  DD DISP=SHR,DSN=SYS2.CW.&CWGACX..SLCXLOAD
//         DD   DSN=CEE.SCEERUN,DISP=SHR
//         DD   DISP=SHR,DSN=SALESSUP.VKY1.DEV1.LOAD
//         DD   DISP=SHR,DSN=SALESSUP.VKY1.QA1.LOAD
//         DD   DISP=SHR,DSN=SALESSUP.VKY1.STG.LOAD
//         DD   DISP=SHR,DSN=SALESSUP.VKY1.PRD.LOAD
//*
//SLSF001  DD   DISP=SHR,DSN=SALESSUP.VKY1.DEV1.LOAD.SSD
//SLSF002  DD   DISP=SHR,DSN=SALESSUP.VKY1.QA1.LOAD.SSD
//SLSF003  DD   DISP=SHR,DSN=SALESSUP.VKY1.STG.LOAD.SSD
//SLSF004  DD   DISP=SHR,DSN=SALESSUP.VKY1.PRD.LOAD.SSD
//* some changes in ISPW so needed new DDIO-directories
//XPSL0001  DD  DISP=SHR,DSN=SALESSUP.VKY1.DEV1.LOAD.SSD
//XPSL0002  DD   DISP=SHR,DSN=SALESSUP.VKY1.QA1.LOAD.SSD
//XPSL0003  DD   DISP=SHR,DSN=SALESSUP.VKY1.STG.LOAD.SSD
//XPSL0004  DD   DISP=SHR,DSN=SALESSUP.VKY1.PRD.LOAD.SSD
//*
//TRPARM DD *
*
*        Optionally set your custom exit program here:
*
EXIT(NONE)
*
REPEAT(${TOTALTEST_REPEAT}),STUBS(${TOTALTEST_STUBS}),
DEBUG(OFF)
/*
=======
${TOTALTEST_JOBCARD}
//*** SPECIFY JOBCARD IN TOTALTEST PREFERENCES TO SUBSTITUTE
//***
//*** THE JOB CARD MUST INCLUDE A NOTIFY STATEMENT SUCH 
//*** AS NOTIFY=&SYSUID and also a REGION=0M parameter
//*
//********************************************************************
//* Execute Target Runner
//********************************************************************
//RUNNER EXEC PGM=TTTRUNNR
//*
//* You need to modify the following DD statements.
//*
//* The first DD statement should be changed to the ECC SLCXLOAD 
//* dataset that contains the Topaz for Total Test TTTRUNNR program.
//*
//* The second DD statement should be changed to the loadlib
//* containing the programs to run during the test.
//*
//* The third DD statement is only required if running the JCL 
//* from Topaz for Total Test CLI with Code Coverage support.
//* If testing an LE application it should be changed to the
//* loadlib containing the COBOL runtime(CEE.SCEERUN), otherwise 
//* it can be removed.
//*
//STEPLIB  DD DISP=SHR,DSN=SYS2.CW.&CWGACX..SLCXLOAD
//         DD   DSN=CEE.SCEERUN,DISP=SHR
//         DD   DISP=SHR,DSN=SALESSUP.VKY1.DEV1.LOAD
//         DD   DISP=SHR,DSN=SALESSUP.VKY1.QA1.LOAD
//         DD   DISP=SHR,DSN=SALESSUP.VKY1.STG.LOAD
//         DD   DISP=SHR,DSN=SALESSUP.VKY1.PRD.LOAD
//*
//SLSF001  DD   DISP=SHR,DSN=SALESSUP.VKY1.DEV1.LOAD.SSD
//SLSF002  DD   DISP=SHR,DSN=SALESSUP.VKY1.QA1.LOAD.SSD
//SLSF003  DD   DISP=SHR,DSN=SALESSUP.VKY1.STG.LOAD.SSD
//SLSF004  DD   DISP=SHR,DSN=SALESSUP.VKY1.PRD.LOAD.SSD
//* some changes in ISPW so needed new DDIO-directories
//XPSL0001  DD  DISP=SHR,DSN=SALESSUP.VKY1.DEV1.LOAD.SSD
//XPSL0002  DD   DISP=SHR,DSN=SALESSUP.VKY1.QA1.LOAD.SSD
//XPSL0003  DD   DISP=SHR,DSN=SALESSUP.VKY1.STG.LOAD.SSD
//XPSL0004  DD   DISP=SHR,DSN=SALESSUP.VKY1.PRD.LOAD.SSD
//*
//TRPARM DD *
*
*        Optionally set your custom exit program here:
* 
EXIT(NONE)
*
REPEAT(${TOTALTEST_REPEAT}),STUBS(${TOTALTEST_STUBS}),
DEBUG(OFF)
/* 
>>>>>>> branch 'master' of https://github.com/VeliMattiYlitalo/FTSDEMO_VKY1_Unit_Tests.git
//BININP DD DSN=${TOTALTEST_BININP},DISP=OLD
//BINREF DD DSN=${TOTALTEST_BINREF},DISP=OLD
//BINRES DD DSN=${TOTALTEST_BINRES},DISP=OLD
//*
//*      Optionally add your custom DD statements
//*DD1 DD DSN=HLQ.CUSTOM.TEST.LOAD,DISP=SHR
//SYSPRINT DD SYSOUT=*
//*
