-- 1. Projetar o nome do produtor e a quantidade de atores que ele contratou (subconsulta escalar) em ordem alfabética

SELECT P.nome AS NOME_PRODUTOR, 
       (SELECT COUNT(*) FROM CONTRATA C WHERE C.EMAIL = P.EMAIL) AS QTD_ATORES_CONTRATADOS
FROM PRODUTOR P
ORDER BY P.NOME ASC;

-- 2. Projetar dados do ator e seus prêmios, ordenado pela data de nascimento, do mais velho ao mais novo

SELECT A1.CPF, A1.NOME, A1.DATA_NASCIMENTO, P.NOME AS PREMIO, P.INSTITUICAO
FROM ATOR A1 INNER JOIN ATUA A2 ON (A1.CPF = A2.CPF) INNER JOIN PREMIO P ON (A2.COD_PREMIO = P.COD_PREMIO)
ORDER BY DATA_NASCIMENTO ASC;

-- 3. Projetar nome do ator, do premio e quantidade de vezes que ganhou aquele premio

SELECT A.NOME, PR.NOME AS PREMIO, COUNT(*) AS VEZES_QUE_GANHOU
FROM
    ATOR A INNER JOIN ATUA AU
    	ON A.CPF = AU.CPF
	INNER JOIN PREMIO PR
		ON AU.COD_PREMIO = PR.COD_PREMIO
GROUP BY A.NOME, PR.NOME;

-- 4. Projetar dados do filme, do ator e do prêmio que o ator ganhou no filme

SELECT to_char(PA.AVALIACAO, '0.0') AS NOTA, PA.NOME, ATR.CPF, ATR.NOME, PR.NOME AS PREMIO, PR.INSTITUICAO
FROM Prod_Audiovisual PA
	INNER JOIN ATUA A ON (PA.COD_PROD = A.COD_PROD)
  INNER JOIN PREMIO PR ON (A.COD_PREMIO = PR.COD_PREMIO)
  INNER JOIN ATOR ATR ON (A.CPF = ATR.CPF)
ORDER BY NOTA DESC;

-- 5. Projetar a opinião sobre a produção  em excelente, bom, regular, ruim ou péssimo

SELECT to_char(AVALIACAO, '0.0') AS NOTA, NOME,
CASE
   	WHEN AVALIACAO >= 8.5  THEN 'EXCELENTE'
    WHEN AVALIACAO >= 6.5 THEN 'BOM'
    WHEN AVALIACAO >= 5 THEN 'REGULAR'
    WHEN AVALIACAO >= 3 THEN 'RUIM'
    ELSE 'PESSIMO'
END AS OPINIAO
FROM Prod_Audiovisual
ORDER BY NOTA DESC;

-- 6. Projetar o nome do produtor e a quantidade de atores que ele contratou

SELECT P.NOME AS NOME, COUNT(*) AS QTD_ATORES_CONTRATADOS
FROM PRODUTOR P, CONTRATA C
WHERE C.EMAIL = P.EMAIL
GROUP BY P.NOME;

-- 7. Projetar as 10 primeiras linhas de atores que atuaram em uma determinada produção audiovisual e o tipo de personagem que interpretaram

SELECT A.NOME, AU.TIPO_PERSONAGEM, PA.NOME AS PRODUCAO_AUDIOVISUAL
FROM ATOR A
    INNER JOIN ATUA AU ON A.CPF = AU.CPF
    INNER JOIN PROD_AUDIOVISUAL PA ON AU.COD_PROD = PA.COD_PROD
FETCH FIRST 10 ROWS ONLY;

-- 8. Projetar a nota, nome da produção e do estúdio que a produziu

SELECT DISTINCT
    	to_char(PA.AVALIACAO, '0.0') AS NOTA,
    	PA.NOME AS NOME_FILME,
    	E.NOME AS NOME_ESTUDIO
FROM PROD_AUDIOVISUAL PA FULL OUTER JOIN ALUGA A
    	ON PA.COD_PROD = A.COD_PROD FULL OUTER JOIN ESTUDIO E
    	ON A.COD_ESTUDIO = E.COD_ESTUDIO
ORDER BY NOTA DESC;

-- 9. Projetar o nome e a avaliação dos produtos audiovisuais que foram produzidos em um determinado ano

SELECT PA.NOME, to_char(PA.AVALIACAO, '0.0') AS NOTA
FROM PROD_AUDIOVISUAL PA INNER JOIN CONTRATO ON PA.COD_PROD = CONTRATO.COD_PROD
WHERE EXTRACT(YEAR FROM CONTRATO.DATA) = 2001;

-- 10. Projetar o código e nome da produção audiovisual que possui o ator com cpf “12345678901” - usando EXISTS

SELECT p.cod_prod, p.nome
FROM Prod_Audiovisual p
WHERE EXISTS (
  SELECT *
  FROM Atua a
  WHERE a.cpf = '12345678901'
    AND a.cod_prod = p.cod_prod
);

-- 11. Projetar o nome de todos os atores que não foram premiados - usando NOT EXISTS

SELECT NOME
FROM ATOR AT
WHERE NOT EXISTS (
    SELECT *
    FROM ATUA AU
    WHERE AT.CPF = AU.CPF
    AND AU.COD_PREMIO IS NULL
);

-- 12. Projetar a média geral (séries e filmes)

SELECT TRUNC(AVG(AVALIACAO), 3) AS MEDIA_GERAL
FROM PROD_AUDIOVISUAL;

-- 13. Projetar a média geral (filmes)

SELECT TRUNC(AVG(PA.AVALIACAO), 3) AS MEDIA_FILMES
FROM PROD_AUDIOVISUAL PA
	INNER JOIN FILME F ON F.COD_PROD = PA.COD_PROD;

-- 14. Projetar nome, nota e ano apenas dos filmes que estão acima da média geral

SELECT PA.NOME, to_char(PA.AVALIACAO, '0.0') AS NOTA, EXTRACT(YEAR FROM c.data) AS ANO
FROM CONTRATO C
	INNER JOIN PROD_AUDIOVISUAL PA ON PA.COD_PROD = C.COD_PROD
	INNER JOIN FILME F ON F.COD_PROD = C.COD_PROD
WHERE PA.AVALIACAO > (SELECT AVG(PA2.AVALIACAO) FROM PROD_AUDIOVISUAL PA2 JOIN FILME F2 ON F2.COD_PROD = PA2.COD_PROD)
ORDER BY NOTA DESC;

-- 15. Projetar dados do ator, da atuação, da produção audiovisual e do produtor - usando FULL OUTER JOIN, INNER JOIN e LEFT JOIN

SELECT
	A.NOME, AU.TIPO_PERSONAGEM, to_char(PA.AVALIACAO, '0.0') AS NOTA, PA.NOME AS PRODUCAO, PR.EMAIL,
	PR.NOME AS PRODUTOR FROM ATOR A
	FULL OUTER JOIN CONTRATA C ON A.CPF = C.CPF
	INNER JOIN PRODUTOR PR ON C.EMAIL = PR.EMAIL
	LEFT JOIN ATUA AU ON A.CPF = AU.CPF
	LEFT JOIN PROD_AUDIOVISUAL PA ON AU.COD_PROD = PA.COD_PROD
WHERE PA.COD_PROD IS NOT NULL;

-- 16. Projetar nome dos atores e quantidade de trabalhos daqueles que trabalharam em mais de uma produção audiovisual

SELECT A.NOME, COUNT(*) as QTD_TRABALHOS
FROM ATOR A
INNER JOIN ATUA ON A.CPF = ATUA.CPF
GROUP BY A.NOME
HAVING COUNT(*) >= 2;

-- 17. Projetar os produtores já contrataram atores premiados em papéis principais - Subconsultas do tipo tabela

SELECT *
FROM PRODUTOR
WHERE EMAIL IN (
  SELECT EMAIL
  FROM CONTRATA
  WHERE CPF IN (
    SELECT CPF
    FROM ATUA
    WHERE TIPO_PERSONAGEM = 'Protagonista' AND COD_PREMIO IS NOT NULL
  )
);

-- 18. Projetar a produção audiovisual, o orçamento inicial, custo pago em aluguéis e o orçamento restante

SELECT P.NOME, C.ORCAMENTO, NVL(SUM(E.CUSTO), 0) AS CUSTO_ALUGUEL, (C.ORCAMENTO - NVL(SUM(E.CUSTO), 0)) AS ORCAMENTO_RESTANTE
FROM PROD_AUDIOVISUAL P
	FULL OUTER JOIN ALUGA A ON A.COD_PROD = P.COD_PROD
	FULL OUTER JOIN EQUIPAMENTO E ON E.COD_EQUIP = A.COD_EQUIP
	FULL OUTER JOIN CONTRATO C ON C.COD_PROD = P.COD_PROD
WHERE C.COD_PROD IS NOT NULL
GROUP BY P.NOME, C.ORCAMENTO;

-- 19. Projetar os atores que trabalharam em pelo menos duas produções com avaliação maior ou igual a 7.0

SELECT A.NOME, COUNT(AU.COD_PROD) AS QTD_PRODUCOES
FROM ATOR A 
	INNER JOIN ATUA AU ON A.CPF = AU.CPF 
	INNER JOIN PROD_AUDIOVISUAL PA ON AU.COD_PROD = PA.COD_PROD 
WHERE PA.AVALIACAO >= 7.0
GROUP BY A.NOME
HAVING COUNT(AU.COD_PROD) >= 2;

-- 20. Projetar os estúdios que alugaram equipamentos para produções com avaliação menor do que 6.0

SELECT DISTINCT
    E.NOME,
    E.LOGRADOURO,
    E.NUMERO,
    E.CEP,
    PA.NOME,
    to_char(PA.AVALIACAO, '0.0') AS NOTA
FROM ESTUDIO E 
	INNER JOIN ALUGA A ON E.COD_ESTUDIO = A.COD_ESTUDIO 
	INNER JOIN EQUIPAMENTO EQ ON A.COD_EQUIP = EQ.COD_EQUIP 
	INNER JOIN PROD_AUDIOVISUAL PA ON A.COD_PROD = PA.COD_PROD 
WHERE PA.AVALIACAO < 6.0
ORDER BY NOTA DESC;

-- 21. Projetar a quantidade de vezes um premio de determinada instituição foi recebido

SELECT P.NOME, P.INSTITUICAO, COUNT(*) AS QTD_PREMIOS
FROM PREMIO P
    INNER JOIN ATUA AU ON P.COD_PREMIO = AU.COD_PREMIO
GROUP BY P.NOME, P.INSTITUICAO;

-- 22. Projetar o nome dos atores que já participaram de filmes e de séries - usando UNION

SELECT ATOR.NOME
FROM ATOR
    JOIN ATUA ON ATOR.CPF = ATUA.CPF
    JOIN PROD_AUDIOVISUAL ON ATUA.COD_PROD = PROD_AUDIOVISUAL.COD_PROD
    JOIN FILME ON PROD_AUDIOVISUAL.COD_PROD = FILME.COD_PROD
UNION
SELECT ATOR.NOME
FROM ATOR
    JOIN ATUA ON ATOR.CPF = ATUA.CPF
    JOIN PROD_AUDIOVISUAL ON ATUA.COD_PROD = PROD_AUDIOVISUAL.COD_PROD
    JOIN SERIE ON PROD_AUDIOVISUAL.COD_PROD = SERIE.COD_PROD;

-- 23. Projetar o nome dos estúdios que estão localizados no mesmo endereço que o estúdio MGM - Subconsulta do tipo linha

SELECT NOME
FROM ESTUDIO
WHERE (CEP, LOGRADOURO) = (
    SELECT CEP, LOGRADOURO
    FROM ESTUDIO
    WHERE NOME = 'MGM'
);