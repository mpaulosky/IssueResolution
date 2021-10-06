CREATE TABLE [dbo].[Sale] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [CashierId] NVARCHAR (128) NOT NULL,
    [SaleDate]  DATETIME2 (7)  NOT NULL,
    [SubTotal]  MONEY          NOT NULL,
    [Tax]       MONEY          NOT NULL,
    [Total]     MONEY          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Sale_ToUser] FOREIGN KEY ([CashierId]) REFERENCES [dbo].[User] ([Id])
);

