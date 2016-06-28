CREATE TABLE [dbo].[OrderProduct]
(
	[OrderProductID] INT NOT NULL PRIMARY KEY, 
    [OrderID] INT NULL FOREIGN KEY REFERENCES Orderr(OrderiD), 
    [ProductID] INT NULL FOREIGN KEY REFERENCES Product(ProductID),
    [Quantity] INT NULL, 
    [Price] MONEY NULL, 
    [DateCreated] DATETIME NULL, 
    [CreatedBy] VARCHAR(50) NULL, 
    [DateModified] DATETIME NULL, 
    [ModifiedBy] VARCHAR(50) NULL
)
