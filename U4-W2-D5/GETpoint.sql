-- Una SP parametrica che, ricevendo in input una data, visualizzi il totale dei punti decurtati in quella determinata data, 

CREATE PROCEDURE GETpoint ( @data date )
AS
BEGIN
SELECT
   SUM(v.decurtamento_punti)
FROM 
   Verbale v
WHERE
   v.data_violazione = @data

END;

