-- Funcionários por departamento
SELECT 
    d.nome_departamento,
    f.nome AS funcionario
FROM funcionarios f
JOIN cargos c ON f.id_cargo = c.id_cargo
JOIN departamentos d ON c.id_departamento = d.id_departamento;

-- Folha mensal total
SELECT 
    mes_referencia,
    SUM(salario_pago + (horas_extras * 20) - descontos) AS total_folha
FROM folha_pagamento
GROUP BY mes_referencia;

-- Média salarial por cargo
SELECT 
    nome_cargo,
    AVG(salario_base)
FROM cargos
GROUP BY nome_cargo;

-- Funcionários admitidos nos últimos 90 dias
SELECT 
    nome, 
    data_admissao
FROM funcionarios
WHERE data_admissao >= DATE_SUB(CURDATE(), INTERVAL 90 DAY);

-- Custo de horas extras por departamento
SELECT 
    d.nome_departamento,
    SUM(fp.horas_extras * 20) AS custo_horas_extras
FROM folha_pagamento fp
JOIN funcionarios f ON fp.id_funcionario = f.id_funcionario
JOIN cargos c ON f.id_cargo = c.id_cargo
JOIN departamentos d ON c.id_departamento = d.id_departamento
GROUP BY d.nome_departamento;
