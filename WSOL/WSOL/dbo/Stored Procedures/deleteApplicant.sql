

--DWL 2-16-18
--removed for DB Cleanup
--it was determined that this proc was not being used.
--the proc is being held for compatability only
   CREATE PROCEDURE [dbo].[deleteApplicant] (@idToDelete int) AS
   BEGIN
   SET NOCOUNT ON;
   return
 --   BEGIN TRY
	--BEGIN TRANSACTION
	      
		
      --INSERT INTO AperSentArchived
      --    SELECT [ID],[CREATED],[SUBJECT],[CCLIST],[APERUSER_ID],[APEREMAIL_ID],[IDAPPLICANT]  FROM AperSent a WHERE a.idapplicant=@idToDelete;
      --DELETE FROM AperSent  WHERE idapplicant=@idToDelete;


  --    INSERT INTO applicantform_url_paramsArch
  --        SELECT * FROM applicantform_url_params a WHERE a.idapplicant=@idToDelete;
  --    DELETE FROM applicantform_url_params  WHERE idapplicant=@idToDelete;

  --    INSERT INTO convictedArchived
  --        SELECT * FROM convicted a WHERE a.idapplicant=@idToDelete;
  --    DELETE FROM convicted  WHERE idapplicant=@idToDelete;


  --    INSERT INTO projectstatusArchived
  --        SELECT [IDPROJECTSTATUS],[IDAPPLICANT],[IDPROJECT],[IDPROJECTSTATUSTYPE],[NOTIFIED],[STATUSDATE],[NOTE],[IDUSER],[DATECREATED],[STARTDATE],[DONOTPURSUE] FROM projectstatus WHERE idapplicant=@idToDelete;
  --    DELETE FROM projectstatus WHERE idapplicant=@idToDelete;

  --    INSERT INTO trainedArchived
  --        SELECT [IDTRAINED],[IDAPPLICANT],[NOTE],[DATEFORM],[IDTRAINEDON],[IDPROJECT],[DATECREATED],[IDUSER],[IDPREPGROUP],[IDPREPSTATUS] FROM trained WHERE idapplicant=@idToDelete;
  --    DELETE FROM trained WHERE idapplicant=@idToDelete;

  --    INSERT INTO testedArchived
  --        SELECT [IDTESTED],[IDAPPLICANT],[NOTE],[DATEFORM],[IDTESTEDTYPE],[IDTESTEDSTATUS],[DATECREATED],[IDUSER] FROM tested WHERE idapplicant=@idToDelete;
  --    DELETE FROM tested WHERE idapplicant=@idToDelete;

  --    INSERT INTO performanceArchived
  --        SELECT [IDPERFORMANCE],[IDAPPLICANT],[IDPROJECT],[NOTE],[DATECREATED],[IDUSER] FROM performance WHERE idapplicant=@idToDelete;
  --    DELETE FROM performance WHERE idapplicant=@idToDelete;

  --    INSERT INTO interviewedArchived
  --        SELECT [IDINTERVIEWED],[IDAPPLICANT],[NOTE],[DATEFORM],[DATECREATED],[IDUSER],[IDPROJECT],[INTERVRATING],[IDINTERVIEWEDRECOM] FROM interviewed WHERE idapplicant=@idToDelete;
  --    DELETE FROM interviewed WHERE idapplicant=@idToDelete;

  --    INSERT INTO statusupdateArchived
  --        SELECT [IDSTATUSUPDATE],[IDAPPLICANT],[NOTE],[DATECREATED],[IDUSER] FROM statusupdate WHERE idapplicant=@idToDelete;
  --    DELETE FROM statusupdate WHERE idapplicant=@idToDelete;

  --    INSERT INTO hrnoteArchived
  --        SELECT [IDHRNOTE],[IDAPPLICANT],[NOTE],[DATECREATED],[IDUSER] FROM hrnote WHERE idapplicant=@idToDelete;
  --    DELETE FROM hrnote WHERE idapplicant=@idToDelete;

  --    INSERT INTO projtypesuseArchived
  --        SELECT [IDAPPLICANT],[IDPROJTYPESLIST] FROM projtypesuse WHERE idapplicant=@idToDelete;
  --    DELETE FROM projtypesuse WHERE idapplicant=@idToDelete;

  --    INSERT INTO projtypesableuseArchived
  --        SELECT * FROM projtypesableuse WHERE idapplicant=@idToDelete;
  --    DELETE FROM projtypesableuse WHERE idapplicant=@idToDelete;

  --    INSERT INTO languseArchived
  --        SELECT [IDAPPLICANT],[IDLANGLIST] FROM languse WHERE idapplicant=@idToDelete;
  --    DELETE FROM languse WHERE idapplicant=@idToDelete;

  --    INSERT INTO availabilityuseArchived
  --        SELECT [IDAPPLICANT],[IDAVAILABILITYLIST] FROM availabilityuse WHERE idapplicant=@idToDelete;
  --    DELETE FROM availabilityuse WHERE idapplicant=@idToDelete;

  --    INSERT INTO compappuseArchived
  --        SELECT [IDAPPLICANT],[IDCOMPAPPLIST] FROM compappuse WHERE idapplicant=@idToDelete;
  --    DELETE FROM compappuse WHERE idapplicant=@idToDelete;


  --    INSERT INTO apostevalArchived
  --        SELECT [IDAPOST],[IDUSER],[DATECREATED] FROM aposteval WHERE idapost IN
  --              (SELECT idapost FROM apost WHERE idapplicant=@idToDelete);

  --    DELETE FROM aposteval WHERE idapost IN
  --          (SELECT idapost FROM apost WHERE idapplicant=@idToDelete);


  --    INSERT INTO apostArchived
  --        SELECT [IDAPOST],[IDAPPLICANT],[IDAPOSTPR],[REPLY1],[REPLY2],[REPLY3],[REPLY4],[REPLY5],[HOURSWEEK],[DATEINSERT],[IDAPOSTSTATUS],[REASON1],[REASON2],[REASON3],[REASON4],[REASON5],[REASON6],[REASON7],[REASON8],[REASON9],[REASON10],[COMMENTS],[SHOULDCONSID] FROM apost WHERE idapplicant=@idToDelete;
  --    DELETE FROM apost WHERE idapplicant=@idToDelete;

  --    INSERT INTO agentloginArchived
  --        SELECT [IDAGENTLOGIN],[IDPROJECT],[IDAPPLICANT],[USERID],[PASSWORD],[COMMENTS],[DATECREATED],[IDUSER] FROM agentlogin WHERE idapplicant=@idToDelete;
  --    DELETE FROM agentlogin WHERE idapplicant=@idToDelete;

  --    INSERT INTO aplcontractArchived
  --        SELECT [IDAPLCONTRACT],[IDAPPLICANT],[IDCLIENT],[CONTRACTDATE],[NOTE],[IDUSER],[DATECREATED],[CONTACTCONTENT],[CONTACTFILENAME],[CONTACTFILESIZE],[CONTACTDATE],[APLCONTRACT_TYPE_DOC_ID] FROM aplcontract WHERE idapplicant=@idToDelete;
  --    DELETE FROM aplcontract WHERE idapplicant=@idToDelete;

  --    INSERT INTO part1testingArchived
  --        SELECT * FROM part1testing WHERE idapplicant=@idToDelete;
  --    DELETE FROM part1testing WHERE idapplicant=@idToDelete;


  --    INSERT INTO part2testingArchived
  --        SELECT * FROM part2testing WHERE agentIdentNum=
  --            (SELECT agentIdentNum FROM applicant WHERE idapplicant=@idToDelete);

  --    DELETE FROM part2testing WHERE agentIdentNum=
  --          (SELECT agentIdentNum FROM applicant WHERE idapplicant=@idToDelete);


  --    INSERT INTO screenIntervFormArchived
  --        SELECT * FROM screenIntervForm WHERE idapplicant=@idToDelete;
  --    DELETE FROM screenIntervForm WHERE idapplicant=@idToDelete;

  --    INSERT INTO letterHistoryArchived
  --        SELECT * FROM letterHistory WHERE idapplicant=@idToDelete;
  --    DELETE FROM letterHistory WHERE idapplicant=@idToDelete;

  --    INSERT INTO SatsInfoArchived
  --        SELECT * FROM SatsInfo WHERE idapplicant=@idToDelete;
  --    DELETE FROM SatsInfo WHERE idapplicant=@idToDelete;

  --    INSERT INTO idappstatusHistoryArchived
  --        SELECT * FROM idappstatusHistory WHERE idapplicant=@idToDelete;
  --    DELETE FROM idappstatusHistory WHERE idapplicant=@idToDelete;

  --    INSERT INTO nameChageHisttoryArchived
  --        SELECT * FROM nameChageHisttory WHERE idapplicant=@idToDelete;
  --    DELETE FROM nameChageHisttory WHERE idapplicant=@idToDelete;

  --    INSERT INTO REFERRALPROGRAMARCHIVED
  --        SELECT [ID],[IDAPPLICANT],[REWARDTYPE],[REWARDPAID],[NOTES],[CREATED],[REWARDPAIDDATE] FROM referralProgram WHERE idapplicant=@idToDelete;
  --    DELETE FROM referralProgram WHERE idapplicant=@idToDelete;

  --    INSERT INTO ookla_tech_scanArchived
  --        SELECT * FROM ookla_tech_scan WHERE idapplicant=@idToDelete;
  --    DELETE FROM ookla_tech_scan WHERE idapplicant=@idToDelete;


	 --     INSERT INTO resumeFileArchived
  --        SELECT * FROM resumeFile WHERE idapplicant=@idToDelete;
  --    DELETE FROM resumeFile WHERE idapplicant=@idToDelete;

	  
	 -- Insert into HireIQResultArchived
		-- select * from  HireIQResult WHERE idapplicant=@idToDelete;
		--  DELETE FROM HireIQResult WHERE idapplicant=@idToDelete;

  --    INSERT INTO applicantArchived
  --        SELECT [IDAPPLICANT],[FIRSTNAME],[LASTNAME],[MAILADDR],[CITY],[IDSTATE],[IDCOUNTRY],[ZIP],[PHONE],[PHONEALT],[EMAIL],[AIMNAME],[PASSWORD],[IDSECRETQUESTION],[SECRETANSWER],[IDTIMEZONE],[IDMODEM],[IDABLEOBTAINBB],[IDOPERSYSTEM],[IDABLEWIN2K],[IDOFTENUSE],[IDWORKPLACE],[HOURSWEEK],[LANGOTHER],[YEARS18],[WPM],[INDACCOU],[INDADMIN],[INDCALLCEN],[INDCUSTF2F],[INDCUSTTEL],[INDDATEENT],[INDFINANC],[INDHUMRES],[INDINSURAN],[INDLEGAL],[INDMEDICAL],[INDMARKET],[INDMARKRES],[INDPROGR],[INDPRMAN],[INDREALEST],[INDRETAIL],[INDSALES],[INDTECHSUP],[INDTELEMAR],[INDTRANMUL],[INDWEBDES],[INDOTHER],[IDLEVELEDUC],[OPTPROF],[IDHEARABOUT],[OPTREFBY],[IDINTEREST],[OPTMOTIV],[IDSEX],[IDRACE],[IDAGE],[OPTADDINFO],[DATECREATED],[DATEUPDATED],[IDAPPSTATUS],[AGENTID],[WANTNEWSLETTER],[UPPER_FIRSTNAME],[UPPER_LASTNAME],[HIDDEN_PHONE],[HIDDEN_PHONEALT],[MIDDLINIT],[CORPORATNAME],[CORPORATNAMEPAID],[W9],[INDTRAVEL],[NICKNAME],[PENDINGPURGE],[PENDINGPURGEDATE],[AGENTIDENTNUM],[INDCALLCENQA],[REFERREDBYREWARDPAID],[REFERREDBYREWARDPAIDDATE],[CORPORATEW9],[CORPORATEW9DATECREATED],[PART1ASSESSMENTKEYSPEECH],[PART2ASSESSMENTKEYGENERAL],[CONVICTED],[BIRTHDATEMMDD],[SSNLAST4DIGITS],[MOBILEPHONE],[HIDDEN_MOBILEPHONE],[MOBILETERMS],[INTPROVIDER],[TELPROVIDER],[OPTFIELDSTUDY],[TSIPADDRESS],[TSPLATFORM],[TSBROWSER],[TSRESOLUTION],[TSDLBANDWIDTH],[TSMICROPHONE],[INDDBMANAGMENT],[INDWORKFROMHOME],[ADDITINDUSORSKILL],[ALLFIELDSOFSTUDY],[PROFCERTIFICAT],[WHATMOTIVATESYOU],[TELLUSMORE],[MILITARY_MEMBER_ID],[IDTELEPHONESERVICETYPE],[IDHEARABOUT_DATE], dbo.GETDATE() FROM applicant a WHERE a.idapplicant=@idToDelete;


  --    DELETE FROM applicant WHERE idapplicant=@idToDelete;

  --    COMMIT TRANSACTION;
	 -- END TRY

	 -- BEGIN CATCH
	 -- IF @@TRANCOUNT > 0
		--BEGIN
		--    raiserror('Transaction Failed', 16, 1);
		--	ROLLBACK TRANSACTION
		--END
	 -- END CATCH

   END;