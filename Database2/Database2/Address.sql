CREATE TABLE [dbo].[Address]
(
	[AddressID] INT NOT NULL PRIMARY KEY, 
    [UserID] INT NULL FOREIGN KEY REFERENCES User1(UserID), 
    [Address1] VARCHAR(200) NULL, 
    [Address2] VARCHAR(200) NULL, 
    [Address3] VARCHAR(200) NULL, 
    [City] VARCHAR(200) NULL, 
    [StateID] INT NULL FOREIGN KEY REFERENCES State(StateID), 
    [ZipCode] VARCHAR(20) NULL, 
    [IsBilling] BIT NULL, 
    [IsShipping] BIT NULL, 
    [DateCreated] DATETIME NULL, 
    [CreatedBy] VARCHAR(50) NULL, 
    [DateModified] DATETIME NULL, 
    [ModifiedBy] VARCHAR(50) NULL
)
