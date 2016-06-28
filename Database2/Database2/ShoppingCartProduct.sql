CREATE TABLE [dbo].[ShoppingCartProduct]
(
	[ShoppingCartProductID] INT NOT NULL PRIMARY KEY, 
    [ShoppingCartID] INT NULL FOREIGN KEY REFERENCES ShoppingCart(ShoppingCartID), 
    [ProductID] INT NULL FOREIGN KEY REFERENCES Product(ProductID), 
    [Quantity] INT NULL, 
    [Price] MONEY NULL, 
    [DateCreated] DATETIME NULL, 
    [CreatedBy] VARCHAR(50) NULL, 
    [DateModified] DATETIME NULL, 
    [ModfiedBy] VARCHAR(50) NULL
)
