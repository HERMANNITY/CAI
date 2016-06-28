CREATE PROCEDURE [dbo].[spGetShoppingCart]
	@UserID int
AS
	SELECT *
	FROM ShoppingCart
	WHERE UserID = @UserID
RETURN 0
