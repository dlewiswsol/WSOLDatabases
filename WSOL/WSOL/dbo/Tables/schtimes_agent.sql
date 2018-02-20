CREATE TABLE [dbo].[schtimes_agent] (
    [idtl]     BIGINT        DEFAULT ((0)) NOT NULL,
    [id]       BIGINT        IDENTITY (5009199, 1) NOT NULL,
    [idagent]  BIGINT        DEFAULT ((0)) NOT NULL,
    [waytype]  CHAR (1)      DEFAULT (N'0') NOT NULL,
    [waytypec] VARCHAR (250) DEFAULT (N'') NOT NULL,
    [datesch]  DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [idprogr]  BIGINT        DEFAULT ((0)) NOT NULL,
    [idevent]  BIGINT        DEFAULT ((0)) NOT NULL,
    [f0000]    INT           DEFAULT ((0)) NOT NULL,
    [f0015]    INT           DEFAULT ((0)) NOT NULL,
    [f0030]    INT           DEFAULT ((0)) NOT NULL,
    [f0045]    INT           DEFAULT ((0)) NOT NULL,
    [f0100]    INT           DEFAULT ((0)) NOT NULL,
    [f0115]    INT           DEFAULT ((0)) NOT NULL,
    [f0130]    INT           DEFAULT ((0)) NOT NULL,
    [f0145]    INT           DEFAULT ((0)) NOT NULL,
    [f0200]    INT           DEFAULT ((0)) NOT NULL,
    [f0215]    INT           DEFAULT ((0)) NOT NULL,
    [f0230]    INT           DEFAULT ((0)) NOT NULL,
    [f0245]    INT           DEFAULT ((0)) NOT NULL,
    [f0300]    INT           DEFAULT ((0)) NOT NULL,
    [f0315]    INT           DEFAULT ((0)) NOT NULL,
    [f0330]    INT           DEFAULT ((0)) NOT NULL,
    [f0345]    INT           DEFAULT ((0)) NOT NULL,
    [f0400]    INT           DEFAULT ((0)) NOT NULL,
    [f0415]    INT           DEFAULT ((0)) NOT NULL,
    [f0430]    INT           DEFAULT ((0)) NOT NULL,
    [f0445]    INT           DEFAULT ((0)) NOT NULL,
    [f0500]    INT           DEFAULT ((0)) NOT NULL,
    [f0515]    INT           DEFAULT ((0)) NOT NULL,
    [f0530]    INT           DEFAULT ((0)) NOT NULL,
    [f0545]    INT           DEFAULT ((0)) NOT NULL,
    [f0600]    INT           DEFAULT ((0)) NOT NULL,
    [f0615]    INT           DEFAULT ((0)) NOT NULL,
    [f0630]    INT           DEFAULT ((0)) NOT NULL,
    [f0645]    INT           DEFAULT ((0)) NOT NULL,
    [f0700]    INT           DEFAULT ((0)) NOT NULL,
    [f0715]    INT           DEFAULT ((0)) NOT NULL,
    [f0730]    INT           DEFAULT ((0)) NOT NULL,
    [f0745]    INT           DEFAULT ((0)) NOT NULL,
    [f0800]    INT           DEFAULT ((0)) NOT NULL,
    [f0815]    INT           DEFAULT ((0)) NOT NULL,
    [f0830]    INT           DEFAULT ((0)) NOT NULL,
    [f0845]    INT           DEFAULT ((0)) NOT NULL,
    [f0900]    INT           DEFAULT ((0)) NOT NULL,
    [f0915]    INT           DEFAULT ((0)) NOT NULL,
    [f0930]    INT           DEFAULT ((0)) NOT NULL,
    [f0945]    INT           DEFAULT ((0)) NOT NULL,
    [f1000]    INT           DEFAULT ((0)) NOT NULL,
    [f1015]    INT           DEFAULT ((0)) NOT NULL,
    [f1030]    INT           DEFAULT ((0)) NOT NULL,
    [f1045]    INT           DEFAULT ((0)) NOT NULL,
    [f1100]    INT           DEFAULT ((0)) NOT NULL,
    [f1115]    INT           DEFAULT ((0)) NOT NULL,
    [f1130]    INT           DEFAULT ((0)) NOT NULL,
    [f1145]    INT           DEFAULT ((0)) NOT NULL,
    [f1200]    INT           DEFAULT ((0)) NOT NULL,
    [f1215]    INT           DEFAULT ((0)) NOT NULL,
    [f1230]    INT           DEFAULT ((0)) NOT NULL,
    [f1245]    INT           DEFAULT ((0)) NOT NULL,
    [f1300]    INT           DEFAULT ((0)) NOT NULL,
    [f1315]    INT           DEFAULT ((0)) NOT NULL,
    [f1330]    INT           DEFAULT ((0)) NOT NULL,
    [f1345]    INT           DEFAULT ((0)) NOT NULL,
    [f1400]    INT           DEFAULT ((0)) NOT NULL,
    [f1415]    INT           DEFAULT ((0)) NOT NULL,
    [f1430]    INT           DEFAULT ((0)) NOT NULL,
    [f1445]    INT           DEFAULT ((0)) NOT NULL,
    [f1500]    INT           DEFAULT ((0)) NOT NULL,
    [f1515]    INT           DEFAULT ((0)) NOT NULL,
    [f1530]    INT           DEFAULT ((0)) NOT NULL,
    [f1545]    INT           DEFAULT ((0)) NOT NULL,
    [f1600]    INT           DEFAULT ((0)) NOT NULL,
    [f1615]    INT           DEFAULT ((0)) NOT NULL,
    [f1630]    INT           DEFAULT ((0)) NOT NULL,
    [f1645]    INT           DEFAULT ((0)) NOT NULL,
    [f1700]    INT           DEFAULT ((0)) NOT NULL,
    [f1715]    INT           DEFAULT ((0)) NOT NULL,
    [f1730]    INT           DEFAULT ((0)) NOT NULL,
    [f1745]    INT           DEFAULT ((0)) NOT NULL,
    [f1800]    INT           DEFAULT ((0)) NOT NULL,
    [f1815]    INT           DEFAULT ((0)) NOT NULL,
    [f1830]    INT           DEFAULT ((0)) NOT NULL,
    [f1845]    INT           DEFAULT ((0)) NOT NULL,
    [f1900]    INT           DEFAULT ((0)) NOT NULL,
    [f1915]    INT           DEFAULT ((0)) NOT NULL,
    [f1930]    INT           DEFAULT ((0)) NOT NULL,
    [f1945]    INT           DEFAULT ((0)) NOT NULL,
    [f2000]    INT           DEFAULT ((0)) NOT NULL,
    [f2015]    INT           DEFAULT ((0)) NOT NULL,
    [f2030]    INT           DEFAULT ((0)) NOT NULL,
    [f2045]    INT           DEFAULT ((0)) NOT NULL,
    [f2100]    INT           DEFAULT ((0)) NOT NULL,
    [f2115]    INT           DEFAULT ((0)) NOT NULL,
    [f2130]    INT           DEFAULT ((0)) NOT NULL,
    [f2145]    INT           DEFAULT ((0)) NOT NULL,
    [f2200]    INT           DEFAULT ((0)) NOT NULL,
    [f2215]    INT           DEFAULT ((0)) NOT NULL,
    [f2230]    INT           DEFAULT ((0)) NOT NULL,
    [f2245]    INT           DEFAULT ((0)) NOT NULL,
    [f2300]    INT           DEFAULT ((0)) NOT NULL,
    [f2315]    INT           DEFAULT ((0)) NOT NULL,
    [f2330]    INT           DEFAULT ((0)) NOT NULL,
    [f2345]    INT           DEFAULT ((0)) NOT NULL,
    [dateins]  DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    CONSTRAINT [PK_schtimes_agent_id] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_schtimes_agent_174823CB9EFEE7C6336A5CA2265686D5]
    ON [dbo].[schtimes_agent]([idprogr] ASC, [datesch] ASC, [f2200] ASC)
    INCLUDE([dateins], [f0000], [f0015], [f0030], [f0045], [f0100], [f0115], [f0130], [f0145], [f0200], [f0215], [f0230], [f0245], [f0300], [f0315], [f0330], [f0345], [f0400], [f0415], [f0430], [f0445], [f0500], [f0515], [f0530], [f0545], [f0600], [f0615], [f0630], [f0645], [f0700], [f0715], [f0730], [f0745], [f0800], [f0815], [f0830], [f0845], [f0900], [f0915], [f0930], [f0945], [f1000], [f1015], [f1030], [f1045], [f1100], [f1115], [f1130], [f1145], [f1200], [f1215], [f1230], [f1245], [f1300], [f1315], [f1330], [f1345], [f1400], [f1415], [f1430], [f1445], [f1500], [f1515], [f1530], [f1545], [f1600], [f1615], [f1630], [f1645], [f1700], [f1715], [f1730], [f1745], [f1800], [f1815], [f1830], [f1845], [f1900], [f1915], [f1930], [f1945], [f2000], [f2015], [f2030], [f2045], [f2100], [f2115], [f2130], [f2145], [f2215], [f2230], [f2245], [f2300], [f2315], [f2330], [f2345], [idagent], [idevent], [idtl], [waytype], [waytypec]);


GO
CREATE NONCLUSTERED INDEX [nci_wi_schtimes_agent_6A0D4623C9982BAD254C5F699581876C]
    ON [dbo].[schtimes_agent]([idagent] ASC, [idprogr] ASC, [datesch] ASC)
    INCLUDE([dateins], [f0000], [f0015], [f0030], [f0045], [f0100], [f0115], [f0130], [f0145], [f0200], [f0215], [f0230], [f0245], [f0300], [f0315], [f0330], [f0345], [f0400], [f0415], [f0430], [f0445], [f0500], [f0515], [f0530], [f0545], [f0600], [f0615], [f0630], [f0645], [f0700], [f0715], [f0730], [f0745], [f0800], [f0815], [f0830], [f0845], [f0900], [f0915], [f0930], [f0945], [f1000], [f1015], [f1030], [f1045], [f1100], [f1115], [f1130], [f1145], [f1200], [f1215], [f1230], [f1245], [f1300], [f1315], [f1330], [f1345], [f1400], [f1415], [f1430], [f1445], [f1500], [f1515], [f1530], [f1545], [f1600], [f1615], [f1630], [f1645], [f1700], [f1715], [f1730], [f1745], [f1800], [f1815], [f1830], [f1845], [f1900], [f1915], [f1930], [f1945], [f2000], [f2015], [f2030], [f2045], [f2100], [f2115], [f2130], [f2145], [f2200], [f2215], [f2230], [f2245], [f2300], [f2315], [f2330], [f2345], [idevent], [idtl], [waytype], [waytypec]);


GO
CREATE NONCLUSTERED INDEX [waytype]
    ON [dbo].[schtimes_agent]([waytype] ASC);


GO
ALTER INDEX [waytype]
    ON [dbo].[schtimes_agent] DISABLE;


GO
CREATE NONCLUSTERED INDEX [schtimes_agent_i10]
    ON [dbo].[schtimes_agent]([idagent] ASC, [datesch] ASC);


GO
ALTER INDEX [schtimes_agent_i10]
    ON [dbo].[schtimes_agent] DISABLE;


GO
CREATE NONCLUSTERED INDEX [schtimes_agent_i03]
    ON [dbo].[schtimes_agent]([datesch] ASC, [idprogr] ASC, [idagent] ASC);


GO
ALTER INDEX [schtimes_agent_i03]
    ON [dbo].[schtimes_agent] DISABLE;


GO
CREATE NONCLUSTERED INDEX [nci_wi_schtimes_agent_C2BF99433DE51519A7F214DA05E58BF3]
    ON [dbo].[schtimes_agent]([datesch] ASC, [idagent] ASC, [idprogr] ASC)
    INCLUDE([dateins], [f0000], [f0015], [f0030], [f0045], [f0100], [f0115], [f0130], [f0145], [f0200], [f0215], [f0230], [f0245], [f0300], [f0315], [f0330], [f0345], [f0400], [f0415], [f0430], [f0445], [f0500], [f0515], [f0530], [f0545], [f0600], [f0615], [f0630], [f0645], [f0700], [f0715], [f0730], [f0745], [f0800], [f0815], [f0830], [f0845], [f0900], [f0915], [f0930], [f0945], [f1000], [f1015], [f1030], [f1045], [f1100], [f1115], [f1130], [f1145], [f1200], [f1215], [f1230], [f1245], [f1300], [f1315], [f1330], [f1345], [f1400], [f1415], [f1430], [f1445], [f1500], [f1515], [f1530], [f1545], [f1600], [f1615], [f1630], [f1645], [f1700], [f1715], [f1730], [f1745], [f1800], [f1815], [f1830], [f1845], [f1900], [f1915], [f1930], [f1945], [f2000], [f2015], [f2030], [f2045], [f2100], [f2115], [f2130], [f2145], [f2200], [f2215], [f2230], [f2245], [f2300], [f2315], [f2330], [f2345], [idevent], [idtl], [waytype], [waytypec]);


GO
CREATE NONCLUSTERED INDEX [nci_wi_schtimes_agent_9AA99A3050DFED3A2CCF5D68236AA8F7]
    ON [dbo].[schtimes_agent]([idtl] ASC)
    INCLUDE([f0000], [f0015], [f0030], [f0045], [f0100], [f0115], [f0130], [f0145], [f0200], [f0215], [f0230], [f0245], [f0300], [f0315], [f0330], [f0345], [f0400], [f0415], [f0430], [f0445], [f0500], [f0515], [f0530], [f0545], [f0600], [f0615], [f0630], [f0645], [f0700], [f0715], [f0730], [f0745], [f0800], [f0815], [f0830], [f0845], [f0900], [f0915], [f0930], [f0945], [f1000], [f1015], [f1030], [f1045], [f1100], [f1115], [f1130], [f1145], [f1200], [f1215], [f1230], [f1245], [f1300], [f1315], [f1330], [f1345], [f1400], [f1415], [f1430], [f1445], [f1500], [f1515], [f1530], [f1545], [f1600], [f1615], [f1630], [f1645], [f1700], [f1715], [f1730], [f1745], [f1800], [f1815], [f1830], [f1845], [f1900], [f1915], [f1930], [f1945], [f2000], [f2015], [f2030], [f2045], [f2100], [f2115], [f2130], [f2145], [f2200], [f2215], [f2230], [f2245], [f2300], [f2315], [f2330], [f2345]);


GO
CREATE NONCLUSTERED INDEX [nci_wi_schtimes_agent]
    ON [dbo].[schtimes_agent]([datesch] ASC, [idagent] ASC, [idprogr] ASC)
    INCLUDE([dateins], [f0000], [f0015], [f0030], [f0045], [f0100], [f0115], [f0130], [f0145], [f0200], [f0215], [f0230], [f0245], [f0300], [f0315], [f0330], [f0345], [f0400], [f0415], [f0430], [f0445], [f0500], [f0515], [f0530], [f0545], [f0600], [f0615], [f0630], [f0645], [f0700], [f0715], [f0730], [f0745], [f0800], [f0815], [f0830], [f0845], [f0900], [f0915], [f0930], [f0945], [f1000], [f1015], [f1030], [f1045], [f1100], [f1115], [f1130], [f1145], [f1200], [f1215], [f1230], [f1245], [f1300], [f1315], [f1330], [f1345], [f1400], [f1415], [f1430], [f1445], [f1500], [f1515], [f1530], [f1545], [f1600], [f1615], [f1630], [f1645], [f1700], [f1715], [f1730], [f1745], [f1800], [f1815], [f1830], [f1845], [f1900], [f1915], [f1930], [f1945], [f2000], [f2015], [f2030], [f2045], [f2100], [f2115], [f2130], [f2145], [f2200], [f2215], [f2230], [f2245], [f2300], [f2315], [f2330], [f2345], [idevent], [idtl], [waytype], [waytypec]);


GO
CREATE NONCLUSTERED INDEX [idtlind]
    ON [dbo].[schtimes_agent]([idtl] ASC);


GO
ALTER INDEX [idtlind]
    ON [dbo].[schtimes_agent] DISABLE;


GO
CREATE NONCLUSTERED INDEX [idprogr]
    ON [dbo].[schtimes_agent]([idprogr] ASC, [datesch] ASC);


GO
ALTER INDEX [idprogr]
    ON [dbo].[schtimes_agent] DISABLE;


GO
CREATE NONCLUSTERED INDEX [idagent]
    ON [dbo].[schtimes_agent]([idagent] ASC);


GO
ALTER INDEX [idagent]
    ON [dbo].[schtimes_agent] DISABLE;


GO
CREATE NONCLUSTERED INDEX [datesch]
    ON [dbo].[schtimes_agent]([datesch] ASC, [idprogr] ASC);


GO
ALTER INDEX [datesch]
    ON [dbo].[schtimes_agent] DISABLE;


GO
CREATE TRIGGER schtimes_agent_suppress_duplicates_2
    ON schtimes_agent AFTER INSERT
    AS
    BEGIN

        DECLARE @recordsExists int

        SELECT 
            @recordsExists = COUNT(*) 
        FROM 
            schtimes_agent s, inserted i
        WHERE
            s.idagent=i.idagent
            AND
            s.idprogr=i.idprogr
            AND
            s.datesch=i.datesch
            AND
            (
            (i.f0700=1 AND s.f0700=1)
                          OR
            (i.f0715=1 AND s.f0715=1)
                          OR
            (i.f0730=1 AND s.f0730=1)
                          OR
            (i.f0745=1 AND s.f0745=1)
                          OR
            (i.f0800=1 AND s.f0800=1)
                          OR
            (i.f0815=1 AND s.f0815=1)
                          OR
            (i.f0830=1 AND s.f0830=1)
                          OR
            (i.f0845=1 AND s.f0845=1)
                          OR
            (i.f0900=1 AND s.f0900=1)
                          OR
            (i.f0915=1 AND s.f0915=1)
                          OR
            (i.f0930=1 AND s.f0930=1)
                          OR
            (i.f0945=1 AND s.f0945=1)
                          OR
            (i.f1000=1 AND s.f1000=1)
                          OR
            (i.f1015=1 AND s.f1015=1)
                          OR
            (i.f1030=1 AND s.f1030=1)
                          OR
            (i.f1045=1 AND s.f1045=1)
                          OR
            (i.f1100=1 AND s.f1100=1)
                          OR
            (i.f1115=1 AND s.f1115=1)
                          OR
            (i.f1130=1 AND s.f1130=1)
                          OR
            (i.f1145=1 AND s.f1145=1)
                          OR
            (i.f1200=1 AND s.f1200=1)
                          OR
            (i.f1215=1 AND s.f1215=1)
                          OR
            (i.f1230=1 AND s.f1230=1)
                          OR
            (i.f1245=1 AND s.f1245=1)
                          OR
            (i.f1300=1 AND s.f1300=1)
                          OR
            (i.f1315=1 AND s.f1315=1)
                          OR
            (i.f1330=1 AND s.f1330=1)
                          OR
            (i.f1345=1 AND s.f1345=1)
                          OR
            (i.f1400=1 AND s.f1400=1)
                          OR
            (i.f1415=1 AND s.f1415=1)
                          OR
            (i.f1430=1 AND s.f1430=1)
                          OR
            (i.f1445=1 AND s.f1445=1)
                          OR
            (i.f1500=1 AND s.f1500=1)
                          OR
            (i.f1515=1 AND s.f1515=1)
                          OR
            (i.f1530=1 AND s.f1530=1)
                          OR
            (i.f1545=1 AND s.f1545=1)
                          OR
            (i.f1600=1 AND s.f1600=1)
                          OR
            (i.f1615=1 AND s.f1615=1)
                          OR
            (i.f1630=1 AND s.f1630=1)
                          OR
            (i.f1645=1 AND s.f1645=1)
                          OR
            (i.f1700=1 AND s.f1700=1)
                          OR
            (i.f1715=1 AND s.f1715=1)
                          OR
            (i.f1730=1 AND s.f1730=1)
                          OR
            (i.f1745=1 AND s.f1745=1)
                          OR
            (i.f1800=1 AND s.f1800=1)
                          OR
            (i.f1815=1 AND s.f1815=1)
                          OR
            (i.f1830=1 AND s.f1830=1)
                          OR
            (i.f1845=1 AND s.f1845=1)
                          OR
            (i.f1900=1 AND s.f1900=1)
                          OR
            (i.f1915=1 AND s.f1915=1)
                          OR
            (i.f1930=1 AND s.f1930=1)
                          OR
            (i.f1945=1 AND s.f1945=1)
                          OR
            (i.f2000=1 AND s.f2000=1)
                          OR
            (i.f2015=1 AND s.f2015=1)
                          OR
            (i.f2030=1 AND s.f2030=1)
                          OR
            (i.f2045=1 AND s.f2045=1)
                          OR
            (i.f2100=1 AND s.f2100=1)
                          OR


            (i.f0000=1 AND s.f0000=1)
                          OR
            (i.f0015=1 AND s.f0015=1)
                          OR
            (i.f0030=1 AND s.f0030=1)
                          OR
            (i.f0045=1 AND s.f0045=1)
                          OR
            (i.f0100=1 AND s.f0100=1)
                          OR
            (i.f0115=1 AND s.f0115=1)
                          OR
            (i.f0130=1 AND s.f0130=1)
                          OR
            (i.f0145=1 AND s.f0145=1)
                          OR
            (i.f0200=1 AND s.f0200=1)
                          OR
            (i.f0215=1 AND s.f0215=1)
                          OR
            (i.f0230=1 AND s.f0230=1)
                          OR
            (i.f0245=1 AND s.f0245=1)
                          OR
            (i.f0300=1 AND s.f0300=1)
                          OR
            (i.f0315=1 AND s.f0315=1)
                          OR
            (i.f0330=1 AND s.f0330=1)
                          OR
            (i.f0345=1 AND s.f0345=1)
                          OR
            (i.f0400=1 AND s.f0400=1)
                          OR
            (i.f0415=1 AND s.f0415=1)
                          OR
            (i.f0430=1 AND s.f0430=1)
                          OR
            (i.f0445=1 AND s.f0445=1)
                          OR
            (i.f0500=1 AND s.f0500=1)
                          OR
            (i.f0515=1 AND s.f0515=1)
                          OR
            (i.f0530=1 AND s.f0530=1)
                          OR
            (i.f0545=1 AND s.f0545=1)
                          OR
            (i.f0600=1 AND s.f0600=1)
                          OR
            (i.f0615=1 AND s.f0615=1)
                          OR
            (i.f0630=1 AND s.f0630=1)
                          OR
            (i.f0645=1 AND s.f0645=1)


                          OR
            (i.f2115=1 AND s.f2115=1)
                          OR
            (i.f2130=1 AND s.f2130=1)
                          OR
            (i.f2145=1 AND s.f2145=1)
                          OR
            (i.f2200=1 AND s.f2200=1)
                          OR
            (i.f2215=1 AND s.f2215=1)
                          OR
            (i.f2230=1 AND s.f2230=1)
                          OR
            (i.f2245=1 AND s.f2245=1)
                          OR
            (i.f2300=1 AND s.f2300=1)
                          OR
            (i.f2315=1 AND s.f2315=1)
                          OR
            (i.f2330=1 AND s.f2330=1)
                          OR
            (i.f2345=1 AND s.f2345=1)
            )

        IF @recordsExists > 1
        BEGIN
            ROLLBACK TRANSACTION
        END
    END
GO
CREATE TRIGGER schtimes_agent_suppress_duplicates
    ON schtimes_agent AFTER INSERT
    AS
    BEGIN

        DECLARE @recordsExists int

        SELECT 
            @recordsExists = COUNT(*) 
        FROM 
            schtimes_agent s, inserted i
        WHERE 
            s.idtl=i.idtl
            AND
            s.idagent=i.idagent
            AND
            s.f0015=i.f0015
            AND
            s.f0030=i.f0030
            AND
            s.f0045=i.f0045
            AND
            s.f0100=i.f0100
            AND
            s.f0115=i.f0115
            AND
            s.f0130=i.f0130
            AND
            s.f0145=i.f0145
            AND
            s.f0200=i.f0200
            AND
            s.f0215=i.f0215
            AND
            s.f0230=i.f0230
            AND
            s.f0245=i.f0245
            AND
            s.f0300=i.f0300
            AND
            s.f0315=i.f0315
            AND
            s.f0330=i.f0330
            AND
            s.f0345=i.f0345
            AND
            s.f0400=i.f0400
            AND
            s.f0415=i.f0415
            AND
            s.f0430=i.f0430
            AND
            s.f0445=i.f0445
            AND
            s.f0500=i.f0500
            AND
            s.f0515=i.f0515
            AND
            s.f0530=i.f0530
            AND
            s.f0545=i.f0545
            AND
            s.f0600=i.f0600
            AND
            s.f0615=i.f0615
            AND
            s.f0630=i.f0630
            AND
            s.f0645=i.f0645
            AND
            s.f0700=i.f0700
            AND
            s.f0715=i.f0715
            AND
            s.f0730=i.f0730
            AND
            s.f0745=i.f0745
            AND
            s.f0800=i.f0800
            AND
            s.f0815=i.f0815
            AND
            s.f0830=i.f0830
            AND
            s.f0845=i.f0845
            AND
            s.f0900=i.f0900
            AND
            s.f0915=i.f0915
            AND
            s.f0930=i.f0930
            AND
            s.f0945=i.f0945
            AND
            s.f1000=i.f1000
            AND
            s.f1015=i.f1015
            AND
            s.f1030=i.f1030
            AND
            s.f1045=i.f1045
            AND
            s.f1100=i.f1100
            AND
            s.f1115=i.f1115
            AND
            s.f1130=i.f1130
            AND
            s.f1145=i.f1145
            AND
            s.f1200=i.f1200
            AND
            s.f1215=i.f1215
            AND
            s.f1230=i.f1230
            AND
            s.f1245=i.f1245
            AND
            s.f1300=i.f1300
            AND
            s.f1315=i.f1315
            AND
            s.f1330=i.f1330
            AND
            s.f1345=i.f1345
            AND
            s.f1400=i.f1400
            AND
            s.f1415=i.f1415
            AND
            s.f1430=i.f1430
            AND
            s.f1445=i.f1445
            AND
            s.f1500=i.f1500
            AND
            s.f1515=i.f1515
            AND
            s.f1530=i.f1530
            AND
            s.f1545=i.f1545
            AND
            s.f1600=i.f1600
            AND
            s.f1615=i.f1615
            AND
            s.f1630=i.f1630
            AND
            s.f1645=i.f1645
            AND
            s.f1700=i.f1700
            AND
            s.f1715=i.f1715
            AND
            s.f1730=i.f1730
            AND
            s.f1745=i.f1745
            AND
            s.f1800=i.f1800
            AND
            s.f1815=i.f1815
            AND
            s.f1830=i.f1830
            AND
            s.f1845=i.f1845
            AND
            s.f1900=i.f1900
            AND
            s.f1915=i.f1915
            AND
            s.f1930=i.f1930
            AND
            s.f1945=i.f1945
            AND
            s.f2000=i.f2000
            AND
            s.f2015=i.f2015
            AND
            s.f2030=i.f2030
            AND
            s.f2045=i.f2045
            AND
            s.f2100=i.f2100
            AND
            s.f2115=i.f2115
            AND
            s.f2130=i.f2130
            AND
            s.f2145=i.f2145
            AND
            s.f2200=i.f2200
            AND
            s.f2215=i.f2215
            AND
            s.f2230=i.f2230
            AND
            s.f2245=i.f2245
            AND
            s.f2300=i.f2300
            AND
            s.f2315=i.f2315
            AND
            s.f2330=i.f2330
            AND
            s.f2345=i.f2345

        IF @recordsExists > 1
        BEGIN
            ROLLBACK TRANSACTION
        END
    END