/* QUERY PARA BUSCAR AS COLUNAS EM UMA BASE DE DADOS 
	
	RETORNA:

		Tabela        |      Coluna pesquisada
       'xxxxxxx'      |       'Column Example'
*/


use [DBProsiga] -- USE DATABASE
SELECT
T.name AS Tabela,
C.name AS Coluna
FROM
sys.sysobjects AS T (NOLOCK)
LEFT JOIN sys.all_columns AS C (NOLOCK) ON T.id = C.object_id AND T.XTYPE = 'U'
WHERE
C.NAME LIKE 'Column Example' -- TROQUE A COLUNA DE EXEMPLO Q PESQUISAR
ORDER BY
T.name ASC