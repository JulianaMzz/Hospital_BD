SELECT *,
	(SELECT AVG(valor)
    FROM Consulta
    WHERE EXTRACT(YEAR FROM data) = 2020 AND nr_carteira IS NOT NULL) AS media_valor_2020_convenio
FROM Consulta
WHERE EXTRACT(YEAR FROM data) = 2020 AND nr_carteira IS NOT NULL;

SELECT *
FROM Internação
WHERE data_alta > data_prev_alta;

SELECT r.id AS receita_id, c.*, m.nome AS medicamento
FROM Receita r
JOIN Consulta c ON r.consulta_id = c.id
JOIN Receita_Medicamento rm ON rm.receita_id = r.id
JOIN Medicamento m ON m.id = rm.medicamento_id
WHERE r.consulta_id = (
	SELECT consulta_id
    FROM Receita
    ORDER BY consulta_id ASC
    LIMIT 1
);

SELECT * FROM Consulta 
WHERE valor = (SELECT MAX(valor) FROM Consulta WHERE nr_carteira IS NULL)
   OR valor = (SELECT MIN(valor) FROM Consulta WHERE nr_carteira IS NULL);

SELECT i.*, q.numero, tq.descricao AS tipo_quarto, tq.valor_diaria,
       (DATE_PART('day', data_alta - data_entrada) * tq.valor_diaria) AS total_internacao
FROM Internacao i
JOIN Internacao_Quarto iq ON iq.internacao_id = i.id
JOIN Quarto q ON q.id = iq.quarto_id
JOIN Tipo_Quarto tq ON tq.id = q.tipo_quarto_id
WHERE data_alta IS NOT NULL;

SELECT i.data_entrada, i.procedimento, q.numero
FROM Internacao i
JOIN Internacao_Quarto iq ON iq.internacao_id = i.id
JOIN Quarto q ON q.id = iq.quarto_id
JOIN Tipo_Quarto tq ON tq.id = q.tipo_quarto_id
WHERE tq.descricao = 'apartamento';

SELECT p.nome AS paciente, c.data, e.nome AS especialidade
FROM Consulta c
JOIN Paciente p ON p.id = c.paciente_id
JOIN Medico m ON m.id = c.medico_id
JOIN Medico_Especialidade me ON me.medico_id = m.id
JOIN Especialidade e ON e.id = me.especialidade_id
WHERE DATE_PART('year', AGE(c.data, p.data_nascimento)) < 18
  AND e.nome <> 'pediatria'
ORDER BY c.data;

SELECT p.nome AS paciente, m.nome AS medico, i.data_entrada, i.procedimento
FROM Internacao i
JOIN Paciente p ON p.id = i.paciente_id
JOIN Medico m ON m.id = i.medico_id
JOIN Medico_Especialidade me ON me.medico_id = m.id
JOIN Especialidade e ON e.id = me.especialidade_id
JOIN Internacao_Quarto iq ON iq.internacao_id = i.id
JOIN Quarto q ON q.id = iq.quarto_id
JOIN Tipo_Quarto tq ON tq.id = q.tipo_quarto_id
WHERE e.nome = 'gastroenterologia' AND tq.descricao = 'enfermaria';

SELECT m.nome, m.crm, COUNT(c.id) AS quantidade_consultas
FROM Medico m
LEFT JOIN Consulta c ON c.medico_id = m.id
GROUP BY m.nome, m.crm
ORDER BY quantidade_consultas DESC;

SELECT * FROM Medico
WHERE nome LIKE '%gabriel%';

SELECT e.nome, e.coren, COUNT(ie.internacao_id) AS num_internacoes
FROM Enfermeiro e
JOIN Internacao_Enfermeiro ie ON ie.enfermeiro_id = e.id
GROUP BY e.nome, e.coren
HAVING COUNT(ie.internacao_id) > 1;
