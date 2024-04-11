--EXEC spDynamicSelect 'Employees', 'EmployeeID, FirstName, LastName'

CREATE PROCEDURE spDynamicSelect
    @TableName NVARCHAR(128),
    @ColumnNames NVARCHAR(4000)
AS
BEGIN
    DECLARE @SQLQuery AS NVARCHAR(4000)

    -- Construct the SQL query
    SET @SQLQuery = 'SELECT ' + @ColumnNames + ' FROM ' + @TableName

    -- Execute the constructed query
    EXEC sp_executesql @SQLQuery
END