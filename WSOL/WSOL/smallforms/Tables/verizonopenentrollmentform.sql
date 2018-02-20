CREATE TABLE [smallforms].[verizonopenentrollmentform] (
    [idVerizonOpenEntrollmentForm] BIGINT        IDENTITY (1515, 1) NOT NULL,
    [firstName]                    VARCHAR (100) NOT NULL,
    [lastName]                     VARCHAR (100) NOT NULL,
    [idVerizonManufacModel]        BIGINT        NOT NULL,
    [phoneNumber]                  CHAR (10)     NOT NULL,
    [coverageType]                 VARCHAR (6)   NOT NULL,
    [state]                        VARCHAR (250) NOT NULL,
    [datew]                        DATE          NOT NULL,
    [timew]                        TIME (7)      NOT NULL,
    [address]                      VARCHAR (250) DEFAULT (N'') NOT NULL,
    CONSTRAINT [PK_verizonopenentrollmentform_idVerizonOpenEntrollmentForm] PRIMARY KEY CLUSTERED ([idVerizonOpenEntrollmentForm] ASC)
);


GO
CREATE NONCLUSTERED INDEX [VerizonOpenEntrollmentFormi1]
    ON [smallforms].[verizonopenentrollmentform]([datew] ASC);

