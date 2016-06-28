CREATE PROCEDURE [dbo].[spGetUserAddresses]
	@UserID int = 0
AS
	SELECT Address1, Address2, Address3 
	FROM Address
	WHERE UserID = @UserID