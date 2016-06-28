CREATE PROCEDURE [dbo].[spGetProducts]
	@PublishedOnly int
AS
	IF(@PublishedOnly = 1)
		SELECT *
		FROM Product
		WHERE IsPublished = 1
	ELSE BEGIN
		SELECT *
		FROM Product
	END
RETURN 0
