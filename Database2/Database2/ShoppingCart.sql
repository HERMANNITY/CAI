CREATE TABLE [dbo].[ShoppingCart]
(
	[ShoppingCartID] INT NOT NULL PRIMARY KEY, 
    [UserID] INT NOT NULL FOREIGN KEY REFERENCES User1(UserID), 
    [DateCreated] DATETIME NULL, 
    [CreatedBy] VARCHAR(50) NULL, 
    [DateModified] DATETIME NULL, 
    [ModifiedBy] VARCHAR(50) NULL
)
