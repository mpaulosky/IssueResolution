CREATE TABLE [dbo].[SaleDetail] (
    [Id]            INT   IDENTITY (1, 1) NOT NULL,
    [SaleId]        INT   NOT NULL,
    [ProductId]     INT   NOT NULL,
    [Quantity]      INT   DEFAULT ((1)) NOT NULL,
    [PurchasePrice] MONEY NOT NULL,
    [Tax]           MONEY DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SaleDetail_ToProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id]),
    CONSTRAINT [FK_SaleDetail_ToSale] FOREIGN KEY ([SaleId]) REFERENCES [dbo].[Sale] ([Id])
);

