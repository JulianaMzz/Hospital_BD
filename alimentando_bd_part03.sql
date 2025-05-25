INSERT INTO Especialidades (nome) VALUES
('Pediatria'),
('Clínica Geral'),
('Gastroenterologia'),
('Dermatologia'),
('Ortopedia'),
('Cardiologia'),
('Neurologia');

INSERT INTO Medico (nome, CPF, CRM, tipo) VALUES
('Dr. Ana Clara', '111.111.111-11', 'CRM001', 'especialista'),
('Dr. Bruno Silva', '222.222.222-22', 'CRM002', 'residente'),
('Dr. Carla Souza', '333.333.333-33', 'CRM003', 'especialista'),
('Dr. Daniel Lima', '444.444.444-44', 'CRM004', 'generalista'),
('Dr. Elisa Rocha', '555.555.555-55', 'CRM005', 'especialista'),
('Dr. Felipe Gomes', '666.666.666-66', 'CRM006', 'residente'),
('Dr. Gabriela Melo', '777.777.777-77', 'CRM007', 'especialista'),
('Dr. Henrique Dias', '888.888.888-88', 'CRM008', 'generalista'),
('Dr. Igor Campos', '999.999.999-99', 'CRM009', 'especialista'),
('Dr. Juliana Matos', '000.000.000-00', 'CRM010', 'especialista');


INSERT INTO Medico_Especialidade (medico_id, especialidade_id) VALUES
(1, 1), -- Ana Clara - Pediatria
(2, 2), -- Bruno - Clínica Geral
(3, 3), -- Carla - Gastro
(4, 2), -- Daniel - Clínica Geral
(5, 4), -- Elisa - Dermatologia
(6, 1), -- Felipe - Pediatria
(7, 5), -- Gabriela - Ortopedia
(8, 6), -- Henrique - Cardiologia
(9, 7), -- Igor - Neuro
(10, 4); -- Juliana - Dermatologia


INSERT INTO Convenio (nome, CNPJ, tempo_carencia) VALUES
('Amil', '11.111.111/0001-11', 30),
('Unimed', '22.222.222/0001-22', 60),
('Bradesco Saúde', '33.333.333/0001-33', 45),
('SulAmérica', '44.444.444/0001-44', 90);


INSERT INTO Paciente (nome, CPF, RG, endereco, telefone, email, data_nascimento) VALUES
('Lucas Lima', '111.111.111-10', '12345678', 'Rua A, 100', '99999-1111', 'lucas@email.com', '2000-01-01'),
('Mariana Souza', '222.222.222-20', '22345678', 'Rua B, 200', '99999-2222', 'mariana@email.com', '2001-02-02'),
('Carlos Mendes', '333.333.333-30', '32345678', 'Rua C, 300', '99999-3333', 'carlos@email.com', '2002-03-03'),
('Fernanda Alves', '444.444.444-40', '42345678', 'Rua D, 400', '99999-4444', 'fernanda@email.com', '2003-04-04'),
('João Pedro', '555.555.555-50', '52345678', 'Rua E, 500', '99999-5555', 'joao@email.com', '2004-05-05'),
('Beatriz Lima', '666.666.666-60', '62345678', 'Rua F, 600', '99999-6666', 'bia@email.com', '2005-06-06'),
('Rafael Duarte', '777.777.777-70', '72345678', 'Rua G, 700', '99999-7777', 'rafael@email.com', '2006-07-07'),
('Laura Figueira', '888.888.888-80', '82345678', 'Rua H, 800', '99999-8888', 'laura@email.com', '2007-08-08'),
('Felipe Costa', '999.999.999-90', '92345678', 'Rua I, 900', '99999-9999', 'felipe@email.com', '2008-09-09'),
('Ana Beatriz', '000.000.000-00', '00345678', 'Rua J, 1000', '98888-0000', 'anab@email.com', '2009-10-10'),
('Rodrigo Passos', '123.456.789-10', '11111111', 'Rua K, 1100', '97777-1111', 'rodrigo@email.com', '1999-11-11'),
('Cecília Moraes', '234.567.890-12', '22222222', 'Rua L, 1200', '96666-2222', 'cecilia@email.com', '1998-12-12'),
('Gabriel Tavares', '345.678.901-23', '33333333', 'Rua M, 1300', '95555-3333', 'gabriel@email.com', '1997-01-01'),
('Vitória Nunes', '456.789.012-34', '44444444', 'Rua N, 1400', '94444-4444', 'vitoria@email.com', '1996-02-02'),
('Mateus Pinto', '567.890.123-45', '55555555', 'Rua O, 1500', '93333-5555', 'mateus@email.com', '1995-03-03');


INSERT INTO Paciente_Convenio (paciente_id, convenio_id) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 3),
(5, 4),
(6, 2),
(7, 3),
(8, 1),
(9, 4),
(10, 2);


INSERT INTO Tipo_Quarto (descricao, valor_diaria) VALUES
('Apartamento', 500.00),
('Duplo', 300.00),
('Enfermaria', 150.00);


INSERT INTO Quarto (numero, tipo, tipo_quarto_id) VALUES
('101', 'Apartamento', 1),
('202', 'Duplo', 2),
('303', 'Enfermaria', 3);


INSERT INTO Enfermeiro (nome, CPF, COREN) VALUES
('Enf. João Carlos', '111.111.111-01', 'COREN001'),
('Enf. Maria Lúcia', '222.222.222-02', 'COREN002'),
('Enf. Ricardo Dias', '333.333.333-03', 'COREN003'),
('Enf. Paula Siqueira', '444.444.444-04', 'COREN004'),
('Enf. André Mendes', '555.555.555-05', 'COREN005'),
('Enf. Juliana Costa', '666.666.666-06', 'COREN006'),
('Enf. Marcos Lima', '777.777.777-07', 'COREN007'),
('Enf. Tatiane Melo', '888.888.888-08', 'COREN008'),
('Enf. Lucas Barbosa', '999.999.999-09', 'COREN009'),
('Enf. Renata Silva', '000.000.000-10', 'COREN010');

INSERT INTO medicamento (nome) VALUES
('Paracetamol'),
('Dipirona'),
('Ibuprofeno'),
('Amoxicilina'),
('Omeprazol'),
('Loratadina'),
('Cetirizina'),
('Metformina'),
('Atorvastatina'),
('Losartana'),
('Salbutamol'),
('Prednisona');


INSERT INTO Consulta (paciente_id, medico_id, data, hora, valor, nr_carteira) VALUES
(1, 1, '2015-01-15', '08:00', 200.00, 'CART001'),
(2, 2, '2015-05-20', '09:00', 180.00, 'CART002'),
(3, 3, '2016-03-10', '10:30', 220.00, 'CART003'),
(4, 4, '2016-07-12', '14:00', 150.00, 'CART004'),
(5, 5, '2017-09-25', '15:30', 250.00, 'CART005'),
(6, 6, '2018-01-01', '16:00', 190.00, 'CART006'),
(7, 7, '2018-04-18', '08:30', 210.00, 'CART007'),
(8, 8, '2019-06-07', '13:00', 230.00, 'CART008'),
(9, 9, '2019-08-09', '11:00', 240.00, 'CART009'),
(10, 10, '2020-10-10', '09:45', 260.00, 'CART010'),
(1, 2, '2020-12-15', '10:15', 180.00, 'CART011'),
(2, 3, '2021-01-25', '11:30', 210.00, 'CART012'),
(3, 4, '2021-03-03', '12:00', 190.00, 'CART013'),
(4, 5, '2021-04-22', '13:30', 200.00, 'CART014'),
(5, 6, '2021-06-17', '14:15', 220.00, 'CART015'),
(6, 7, '2021-07-21', '15:00', 250.00, 'CART016'),
(7, 8, '2021-09-10', '15:45', 230.00, 'CART017'),
(8, 9, '2021-11-05', '16:30', 240.00, 'CART018'),
(9, 10, '2022-01-01', '08:15', 260.00, 'CART019'),
(10, 1, '2022-01-15', '09:00', 250.00, 'CART020');


INSERT INTO Receita (consulta_id) VALUES
(1), (2), (3), (4), (5),
(6), (7), (8), (9), (10),
(11), (12), (13), (14), (15);


INSERT INTO Receita_Medicamento (receita_id, medicamento_id) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10),
(6, 11), (6, 12),
(7, 1), (7, 5),
(8, 3), (8, 6),
(9, 2), (9, 10),
(10, 4), (10, 11),
(11, 7),
(12, 8),
(13, 9),
(14, 10),
(15, 12);

INSERT INTO Internacao (paciente_id, medico_id, data_entrada, data_prev_alta, data_alta, procedimento)
VALUES
(1, 1, '2015-01-20', '2015-01-27', '2015-01-26', 'Cirurgia A'),
(2, 2, '2016-03-15', '2016-03-22', '2016-03-21', 'Tratamento B'),
(3, 3, '2017-05-10', '2017-05-17', '2017-05-16', 'Exame C'),
(1, 4, '2018-08-01', '2018-08-08', '2018-08-07', 'Cirurgia D'),
(4, 5, '2019-10-05', '2019-10-12', '2019-10-11', 'Internação E'),
(5, 6, '2020-12-12', '2020-12-19', '2020-12-18', 'Cirurgia F'),
(2, 7, '2021-11-30', '2021-12-07', '2021-12-06', 'Tratamento G');


INSERT INTO Internacao_Quarto (internacao_id, quarto_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1);


INSERT INTO Internacao_Enfermeiro (internacao_id, enfermeiro_id) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5), (3, 6),
(4, 7), (4, 8),
(5, 9), (5, 10),
(6, 1), (6, 3),
(7, 2), (7, 4);

INSERT INTO Medico_Responsavel (internacao_id, medico_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);