CREATE PROCEDURE [dbo].[spGetShoppingCartItems]
	@ShoppingCartID int
AS
	SELECT *
	FROM ShoppingCart
	WHERE ShoppingCartID = @ShoppingCartID
RETURN 0
