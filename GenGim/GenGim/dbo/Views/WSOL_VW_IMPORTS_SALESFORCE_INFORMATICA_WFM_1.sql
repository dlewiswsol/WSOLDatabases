

CREATE VIEW [dbo].[WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM]
AS
SELECT DISTINCT 
                      T.AGENT_ID, T.FIRST_NAME, T.LAST_NAME, NULLIF (T.CORPORATE_NAME, '0') AS CORPORATE_NAME, T.EMAIL_ADDRESS, 
                      T.PRIMARY_PHONE AS WORK_PHONE, T.MOBILE_PHONE, T.STREET_ADDRESS, T.CITY, T.STATE_PROVINCE, T.ZIP_POSTAL AS ZIP, 
                      CASE WHEN T .ZIP_POSTAL IS NULL THEN NULL WHEN ISNUMERIC(LEFT(T .ZIP_POSTAL, 5)) = 1 THEN 'USA' ELSE 'CANADA' END AS COUNTRY, 
                      T.NICKNAME, T.CATS_STATUS, ISNULL(T.CATS_PROFILE_NAME, '') AS CATS_PROFILE_NAME, 'Contact' AS sObject, 'Agent' AS RecordTypeName, 
                      '55' AS Client_ID
FROM         dbo.WSOL_TB_IMPORTS_SALESFORCE_INFORMATICA_WFM AS T INNER JOIN
                          (SELECT     AGENT_ID, MAX(RECORD_FILE_DATE) AS MAXDATE
                            FROM          dbo.WSOL_TB_IMPORTS_SALESFORCE_INFORMATICA_WFM
                            GROUP BY AGENT_ID) AS TM ON T.AGENT_ID = TM.AGENT_ID AND T.RECORD_FILE_DATE = TM.MAXDATE
GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[17] 2[27] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "T"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 261
               Right = 306
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TM"
            Begin Extent = 
               Top = 6
               Left = 344
               Bottom = 84
               Right = 495
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 19
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2220
         Alias = 1995
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'WSOL_VW_IMPORTS_SALESFORCE_INFORMATICA_WFM';

