CREATE procedure GETforYears ( @anno integer )
AS
BEGIN

SELECT data_violazione
FROM   Violazioni
WHERE data_violazioni > @anno
ORDER BY  data_violazione ASC;

END;