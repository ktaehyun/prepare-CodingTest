SELECT OUTS.ANIMAL_ID, OUTS.ANIMAL_TYPE, OUTS.NAME
FROM ANIMAL_OUTS OUTS LEFT JOIN ANIMAL_INS INS
ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE (OUTS.SEX_UPON_OUTCOME LIKE '%Neutered%' OR OUTS.SEX_UPON_OUTCOME LIKE '%Spayed%')
AND INS.SEX_UPON_INTAKE LIKE '%Intact%'
ORDER BY OUTS.ANIMAL_ID;