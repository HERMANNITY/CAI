CREATE TABLE [dbo].[User1]
(
	[UserID] INT NOT NULL PRIMARY KEY, 
    [UserName] VARCHAR(200) NULL, 
    [Password] VARBINARY(500) NULL, 
    [EmailAddress] VARCHAR(255) NULL, 
    [IsAdmin] BIT NULL, 
    [DateCreated] DATETIME NULL, 
    [CreatedBy] VARCHAR(50) NULL, 
    [DateModified] DATETIME NULL, 
    [ModifiedBy] VARCHAR(50) NULL
)
