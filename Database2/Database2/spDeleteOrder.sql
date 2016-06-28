CREATE PROCEDURE [dbo].[spDeleteOrder]
	@OrderID int
AS
	DELETE FROM Orderr
	WHERE OrderiD = @OrderID
RETURN 0
