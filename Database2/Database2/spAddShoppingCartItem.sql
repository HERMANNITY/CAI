CREATE PROCEDURE [dbo].[spAddShoppingCartItem]
	@ProductID int,
	@UserID int
AS
	IF not EXISTS (select 1 from ShoppingCart where UserID = @UserID)
		Begin
			insert into ShoppingCart (UserID, DateCreated, CreatedBy, DateModified, ModifiedBy)
			values (@UserID, GetDate(), ' ', GetDate(), ' ')
		end
	
	Insert into ShoppingCartProduct (ShoppingCartProductID, ProductID, DateCreated, CreatedBy, DateModified, ModfiedBy)
	select ShoppingCartId, @ProductID, GETDATE(), ' ', GETDATE(), ' ' from ShoppingCart where UserID = @UserID
		