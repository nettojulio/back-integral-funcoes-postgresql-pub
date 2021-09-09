--1
SELECT COUNT(medicamento) FROM farmacia;
--2
SELECT MIN(idade) FROM usuarios;
--3
SELECT MAX(idade) FROM usuarios;
--4
SELECT ROUND(AVG(idade),2) FROM usuarios WHERE idade >= 18;
--5
SELECT categoria, sum(estoque) FROM farmacia WHERE categoria = 'blue' OR categoria = 'black' GROUP BY categoria;
--6
SELECT categoria, medicamento, sum(estoque) AS estoque FROM farmacia WHERE categoria IS NOT NULL GROUP BY categoria, medicamento ORDER BY estoque;
--7
SELECT SUM(estoque) AS estoque FROM farmacia WHERE categoria IS NULL;
--8
SELECT count(medicamento) FROM farmacia WHERE categoria IS NULL;
--9
SELECT concat(COALESCE(medicamento, ' '), ' (', COALESCE(categoria, ''), ')') FROM farmacia;
--10
SELECT concat(id, ' - ' , COALESCE(medicamento, ' Sem Substância'), ' (', COALESCE(categoria, 'Sem Categoria'), ')') FROM farmacia;
--11
SELECT nome, idade, cadastro::date FROM usuarios WHERE cadastro::date >= '2019-12-31' ORDER BY cadastro;
--12
SELECT nome, idade, email, AGE(NOW() ,cadastro::timestamp) FROM usuarios WHERE idade < 18 ORDER BY age DESC;
--13
SELECT nome, idade, email, AGE(NOW() ,cadastro::timestamp) FROM usuarios WHERE idade >= 60 ORDER BY age DESC;
--14
SELECT categoria, SUM(estoque) FROM farmacia WHERE categoria IS NOT NULL GROUP BY categoria;
--15
SELECT idade, count(idade) FROM usuarios WHERE idade >= 18 GROUP BY idade ORDER BY idade;
--16
SELECT categoria, medicamento, sum(estoque) FROM farmacia GROUP BY medicamento, categoria ORDER BY medicamento;