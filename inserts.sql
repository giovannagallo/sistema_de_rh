INSERT INTO departamentos (nome_departamento) VALUES
('Recursos Humanos'),
('Tecnologia da Informação'),
('Financeiro'),
('Marketing');

INSERT INTO cargos (nome_cargo, salario_base, id_departamento) VALUES
('Analista de RH', 3500.00, 1),
('Assistente de RH', 2200.00, 1),
('Desenvolvedor Junior', 4200.00, 2),
('Analista de Sistemas', 6000.00, 2),
('Assistente Financeiro', 2500.00, 3),
('Analista Financeiro', 4500.00, 3),
('Designer', 3000.00, 4),
('Analista de Marketing', 4200.00, 4);

INSERT INTO funcionarios (nome, cpf, data_admissao, id_cargo) VALUES
('Giovanna Gallo', '111.111.111-11', '2024-02-10', 3),
('Mariana Soares', '222.222.222-22', '2023-08-15', 1),
('Carlos Alberto', '333.333.333-33', '2022-10-01', 4),
('Ana Pereira', '444.444.444-44', '2024-01-12', 5),
('João Mendes', '555.555.555-55', '2023-11-18', 7);

INSERT INTO folha_pagamento 
(id_funcionario, mes_referencia, salario_pago, horas_extras, descontos) VALUES
(1, '2024-01', 4200.00, 10, 100),
(2, '2024-01', 3500.00, 5, 200),
(3, '2024-01', 6000.00, 2, 300),
(4, '2024-01', 2500.00, 0, 50),
(5, '2024-01', 3000.00, 3, 100);
