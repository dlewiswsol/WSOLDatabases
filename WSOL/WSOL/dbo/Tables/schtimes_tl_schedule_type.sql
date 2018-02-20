CREATE TABLE [dbo].[schtimes_tl_schedule_type] (
    [id]              BIGINT        DEFAULT ((0)) NOT NULL,
    [datesch]         DATE          DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [idprogr]         BIGINT        DEFAULT ((0)) NOT NULL,
    [limithr]         BIGINT        DEFAULT ((0)) NOT NULL,
    [f0000]           INT           DEFAULT ((0)) NOT NULL,
    [f0015]           INT           DEFAULT ((0)) NOT NULL,
    [f0030]           INT           DEFAULT ((0)) NOT NULL,
    [f0045]           INT           DEFAULT ((0)) NOT NULL,
    [f0100]           INT           DEFAULT ((0)) NOT NULL,
    [f0115]           INT           DEFAULT ((0)) NOT NULL,
    [f0130]           INT           DEFAULT ((0)) NOT NULL,
    [f0145]           INT           DEFAULT ((0)) NOT NULL,
    [f0200]           INT           DEFAULT ((0)) NOT NULL,
    [f0215]           INT           DEFAULT ((0)) NOT NULL,
    [f0230]           INT           DEFAULT ((0)) NOT NULL,
    [f0245]           INT           DEFAULT ((0)) NOT NULL,
    [f0300]           INT           DEFAULT ((0)) NOT NULL,
    [f0315]           INT           DEFAULT ((0)) NOT NULL,
    [f0330]           INT           DEFAULT ((0)) NOT NULL,
    [f0345]           INT           DEFAULT ((0)) NOT NULL,
    [f0400]           INT           DEFAULT ((0)) NOT NULL,
    [f0415]           INT           DEFAULT ((0)) NOT NULL,
    [f0430]           INT           DEFAULT ((0)) NOT NULL,
    [f0445]           INT           DEFAULT ((0)) NOT NULL,
    [f0500]           INT           DEFAULT ((0)) NOT NULL,
    [f0515]           INT           DEFAULT ((0)) NOT NULL,
    [f0530]           INT           DEFAULT ((0)) NOT NULL,
    [f0545]           INT           DEFAULT ((0)) NOT NULL,
    [f0600]           INT           DEFAULT ((0)) NOT NULL,
    [f0615]           INT           DEFAULT ((0)) NOT NULL,
    [f0630]           INT           DEFAULT ((0)) NOT NULL,
    [f0645]           INT           DEFAULT ((0)) NOT NULL,
    [f0700]           INT           DEFAULT ((0)) NOT NULL,
    [f0715]           INT           DEFAULT ((0)) NOT NULL,
    [f0730]           INT           DEFAULT ((0)) NOT NULL,
    [f0745]           INT           DEFAULT ((0)) NOT NULL,
    [f0800]           INT           DEFAULT ((0)) NOT NULL,
    [f0815]           INT           DEFAULT ((0)) NOT NULL,
    [f0830]           INT           DEFAULT ((0)) NOT NULL,
    [f0845]           INT           DEFAULT ((0)) NOT NULL,
    [f0900]           INT           DEFAULT ((0)) NOT NULL,
    [f0915]           INT           DEFAULT ((0)) NOT NULL,
    [f0930]           INT           DEFAULT ((0)) NOT NULL,
    [f0945]           INT           DEFAULT ((0)) NOT NULL,
    [f1000]           INT           DEFAULT ((0)) NOT NULL,
    [f1015]           INT           DEFAULT ((0)) NOT NULL,
    [f1030]           INT           DEFAULT ((0)) NOT NULL,
    [f1045]           INT           DEFAULT ((0)) NOT NULL,
    [f1100]           INT           DEFAULT ((0)) NOT NULL,
    [f1115]           INT           DEFAULT ((0)) NOT NULL,
    [f1130]           INT           DEFAULT ((0)) NOT NULL,
    [f1145]           INT           DEFAULT ((0)) NOT NULL,
    [f1200]           INT           DEFAULT ((0)) NOT NULL,
    [f1215]           INT           DEFAULT ((0)) NOT NULL,
    [f1230]           INT           DEFAULT ((0)) NOT NULL,
    [f1245]           INT           DEFAULT ((0)) NOT NULL,
    [f1300]           INT           DEFAULT ((0)) NOT NULL,
    [f1315]           INT           DEFAULT ((0)) NOT NULL,
    [f1330]           INT           DEFAULT ((0)) NOT NULL,
    [f1345]           INT           DEFAULT ((0)) NOT NULL,
    [f1400]           INT           DEFAULT ((0)) NOT NULL,
    [f1415]           INT           DEFAULT ((0)) NOT NULL,
    [f1430]           INT           DEFAULT ((0)) NOT NULL,
    [f1445]           INT           DEFAULT ((0)) NOT NULL,
    [f1500]           INT           DEFAULT ((0)) NOT NULL,
    [f1515]           INT           DEFAULT ((0)) NOT NULL,
    [f1530]           INT           DEFAULT ((0)) NOT NULL,
    [f1545]           INT           DEFAULT ((0)) NOT NULL,
    [f1600]           INT           DEFAULT ((0)) NOT NULL,
    [f1615]           INT           DEFAULT ((0)) NOT NULL,
    [f1630]           INT           DEFAULT ((0)) NOT NULL,
    [f1645]           INT           DEFAULT ((0)) NOT NULL,
    [f1700]           INT           DEFAULT ((0)) NOT NULL,
    [f1715]           INT           DEFAULT ((0)) NOT NULL,
    [f1730]           INT           DEFAULT ((0)) NOT NULL,
    [f1745]           INT           DEFAULT ((0)) NOT NULL,
    [f1800]           INT           DEFAULT ((0)) NOT NULL,
    [f1815]           INT           DEFAULT ((0)) NOT NULL,
    [f1830]           INT           DEFAULT ((0)) NOT NULL,
    [f1845]           INT           DEFAULT ((0)) NOT NULL,
    [f1900]           INT           DEFAULT ((0)) NOT NULL,
    [f1915]           INT           DEFAULT ((0)) NOT NULL,
    [f1930]           INT           DEFAULT ((0)) NOT NULL,
    [f1945]           INT           DEFAULT ((0)) NOT NULL,
    [f2000]           INT           DEFAULT ((0)) NOT NULL,
    [f2015]           INT           DEFAULT ((0)) NOT NULL,
    [f2030]           INT           DEFAULT ((0)) NOT NULL,
    [f2045]           INT           DEFAULT ((0)) NOT NULL,
    [f2100]           INT           DEFAULT ((0)) NOT NULL,
    [f2115]           INT           DEFAULT ((0)) NOT NULL,
    [f2130]           INT           DEFAULT ((0)) NOT NULL,
    [f2145]           INT           DEFAULT ((0)) NOT NULL,
    [f2200]           INT           DEFAULT ((0)) NOT NULL,
    [f2215]           INT           DEFAULT ((0)) NOT NULL,
    [f2230]           INT           DEFAULT ((0)) NOT NULL,
    [f2245]           INT           DEFAULT ((0)) NOT NULL,
    [f2300]           INT           DEFAULT ((0)) NOT NULL,
    [f2315]           INT           DEFAULT ((0)) NOT NULL,
    [f2330]           INT           DEFAULT ((0)) NOT NULL,
    [f2345]           INT           DEFAULT ((0)) NOT NULL,
    [dateins]         DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [dateupd]         DATETIME2 (0) DEFAULT ([dbo].[GETDATE]()) NOT NULL,
    [limitHoursUntil] DATETIME2 (0) DEFAULT ('1970-01-01 00:00:00') NOT NULL,
    [typeOfSchedule]  VARCHAR (10)  DEFAULT (N'Original') NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [nci_wi_schtimes_tl_schedule_type_FF3FE745A6BCE9849910C584FFDE5CA9]
    ON [dbo].[schtimes_tl_schedule_type]([datesch] ASC, [idprogr] ASC, [typeOfSchedule] ASC)
    INCLUDE([dateins], [dateupd], [f0000], [f0015], [f0030], [f0045], [f0100], [f0115], [f0130], [f0145], [f0200], [f0215], [f0230], [f0245], [f0300], [f0315], [f0330], [f0345], [f0400], [f0415], [f0430], [f0445], [f0500], [f0515], [f0530], [f0545], [f0600], [f0615], [f0630], [f0645], [f0700], [f0715], [f0730], [f0745], [f0800], [f0815], [f0830], [f0845], [f0900], [f0915], [f0930], [f0945], [f1000], [f1015], [f1030], [f1045], [f1100], [f1115], [f1130], [f1145], [f1200], [f1215], [f1230], [f1245], [f1300], [f1315], [f1330], [f1345], [f1400], [f1415], [f1430], [f1445], [f1500], [f1515], [f1530], [f1545], [f1600], [f1615], [f1630], [f1645], [f1700], [f1715], [f1730], [f1745], [f1800], [f1815], [f1830], [f1845], [f1900], [f1915], [f1930], [f1945], [f2000], [f2015], [f2030], [f2045], [f2100], [f2115], [f2130], [f2145], [f2200], [f2215], [f2230], [f2245], [f2300], [f2315], [f2330], [f2345], [id], [limitHoursUntil], [limithr]);


GO
CREATE NONCLUSTERED INDEX [idprogr]
    ON [dbo].[schtimes_tl_schedule_type]([idprogr] ASC, [datesch] ASC);


GO
ALTER INDEX [idprogr]
    ON [dbo].[schtimes_tl_schedule_type] DISABLE;


GO
CREATE NONCLUSTERED INDEX [id]
    ON [dbo].[schtimes_tl_schedule_type]([id] ASC);


GO
ALTER INDEX [id]
    ON [dbo].[schtimes_tl_schedule_type] DISABLE;


GO
CREATE NONCLUSTERED INDEX [datesch]
    ON [dbo].[schtimes_tl_schedule_type]([datesch] ASC, [idprogr] ASC);


GO
ALTER INDEX [datesch]
    ON [dbo].[schtimes_tl_schedule_type] DISABLE;

