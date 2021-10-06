CREATE TABLE [dbo].[Inventory] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [ProductId]     INT           NOT NULL,
    [Quantity]      INT           DEFAULT ((1)) NOT NULL,
    [PurchasePrice] MONEY         NOT NULL,
    [PurchaseDate]  DATETIME2 (7) DEFAULT (getutcdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Inventory_ToProduct] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([Id])
);

