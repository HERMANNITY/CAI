CREATE TABLE [dbo].[Orderr]
(
	[OrderiD] INT NOT NULL PRIMARY KEY, 
    [UserID] INT NULL, 
    [AddressID] INT NULL, 
    [OrderDate] DATETIME NULL, 
    [Total] MONEY NULL, 
    [StatusID] INT NULL, 
    [DateCreated] DATETIME NULL, 
    [CreatedBy] VARCHAR(50) NULL, 
    [DateModified] DATETIME NULL, 
    [ModifiedBy] VARCHAR(50) NULL
)
