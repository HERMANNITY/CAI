CREATE TABLE [dbo].[Product]
(
	[ProductID] INT NOT NULL PRIMARY KEY, 
    [ProductName] NCHAR(500) NULL, 
    [Description] NCHAR(1000) NULL, 
    [IsPublished] BIT NULL, 
    [Quantity] INT NULL, 
    [Price] MONEY NULL, 
    [ImageFile] VARCHAR(500) NULL, 
    [DateCreated] DATETIME NULL, 
    [CreatedBy] VARCHAR(50) NULL, 
    [DateModified] DATETIME NULL, 
    [ModifiedBy] VARCHAR(50) NULL
)
