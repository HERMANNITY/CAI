CREATE PROCEDURE [dbo].[spGetOrderProducts]
	@OrderID int
AS
	SELECT *
	FROM OrderProduct
	WHERE OrderID = @OrderID
RETURN 0
