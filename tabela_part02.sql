CREATE TABLE Especialidade (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Medico (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    CRM VARCHAR(20) UNIQUE NOT NULL,
    tipo VARCHAR(20) NOT NULL -- residente, especialista, generalista
);

CREATE TABLE Medico_Especialidade (
    medico_id INT,
    especialidade_id INT,
    PRIMARY KEY (medico_id, especialidade_id),
    FOREIGN KEY (medico_id) REFERENCES Medico(id),
    FOREIGN KEY (especialidade_id) REFERENCES Especialidade(id)
);

CREATE TABLE Convenio (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    CNPJ VARCHAR(18) UNIQUE NOT NULL,
    tempo_carencia INT
);

CREATE TABLE Paciente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    RG VARCHAR(12),
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE Paciente_Convenio (
    paciente_id INT,
    convenio_id INT,
    PRIMARY KEY (paciente_id, convenio_id),
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id),
    FOREIGN KEY (convenio_id) REFERENCES Convenio(id)
);

CREATE TABLE Consulta (
    id SERIAL PRIMARY KEY,
    paciente_id INT NOT NULL,
    medico_id INT NOT NULL,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    valor DECIMAL(10,2),
    nr_carteira VARCHAR(50),
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id),
    FOREIGN KEY (medico_id) REFERENCES Medico(id)
);

CREATE TABLE Receita (
    id SERIAL PRIMARY KEY,
    consulta_id INT NOT NULL,
    FOREIGN KEY (consulta_id) REFERENCES Consulta(id)
);

CREATE TABLE Medicamento (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Receita_Medicamento (
    receita_id INT,
    medicamento_id INT,
    PRIMARY KEY (receita_id, medicamento_id),
    FOREIGN KEY (receita_id) REFERENCES Receita(id),
    FOREIGN KEY (medicamento_id) REFERENCES Medicamento(id)
);

CREATE TABLE Internacao (
    id SERIAL PRIMARY KEY,
    paciente_id INT NOT NULL,
    medico_id INT NOT NULL,
    data_entrada DATE,
    data_prev_alta DATE,
    data_alta DATE,
    procedimento VARCHAR(255),
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id),
    FOREIGN KEY (medico_id) REFERENCES Medico(id)
);

CREATE TABLE Quarto (
    id SERIAL PRIMARY KEY,
    numero VARCHAR(10),
    tipo VARCHAR(50)
);

CREATE TABLE Tipo_Quarto (
    id SERIAL PRIMARY KEY,
    descricao VARCHAR(100),
    valor_diaria DECIMAL(10,2)
);

ALTER TABLE Quarto
ADD COLUMN tipo_quarto_id INT,
ADD FOREIGN KEY (tipo_quarto_id) REFERENCES Tipo_Quarto(id);

CREATE TABLE Internacao_Quarto (
    internacao_id INT,
    quarto_id INT,
    PRIMARY KEY (internacao_id, quarto_id),
    FOREIGN KEY (internacao_id) REFERENCES Internacao(id),
    FOREIGN KEY (quarto_id) REFERENCES Quarto(id)
);

CREATE TABLE Enfermeiro (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    CPF VARCHAR(14),
    COREN VARCHAR(20) UNIQUE
);

CREATE TABLE Internacao_Enfermeiro (
    internacao_id INT,
    enfermeiro_id INT,
    PRIMARY KEY (internacao_id, enfermeiro_id),
    FOREIGN KEY (internacao_id) REFERENCES Internacao(id),
    FOREIGN KEY (enfermeiro_id) REFERENCES Enfermeiro(id)
);

CREATE TABLE Medico_Responsavel (
    internacao_id INT,
    medico_id INT,
    PRIMARY KEY (internacao_id, medico_id),
    FOREIGN KEY (internacao_id) REFERENCES Internacao(id),
    FOREIGN KEY (medico_id) REFERENCES Medico(id)
);