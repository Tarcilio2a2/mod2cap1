-- Criar tabela Cultura
CREATE TABLE Cultura (
    ID_Cultura NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    Nome VARCHAR2(255) NOT NULL  -- Apenas o nome da cultura
);

-- Criar tabela Sensor
CREATE TABLE Sensor (
    ID_Sensor NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    Tipo VARCHAR2(100) NOT NULL,  -- Ex: Umidade, pH, NPK
    Localizacao VARCHAR2(255) NOT NULL
);

-- Criar tabela Leitura
CREATE TABLE Leitura (
    ID_Leitura NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    DataHora TIMESTAMP NOT NULL,
    Valor FLOAT NOT NULL,
    Tipo_Leitura VARCHAR2(100) NOT NULL,  -- Ex: Umidade, pH, P, K
    ID_Sensor NUMBER NOT NULL,
    ID_Cultura NUMBER NOT NULL,  -- Chave estrangeira para Cultura
    CONSTRAINT FK_Sensor FOREIGN KEY (ID_Sensor) REFERENCES Sensor(ID_Sensor),
    CONSTRAINT FK_Cultura FOREIGN KEY (ID_Cultura) REFERENCES Cultura(ID_Cultura)
);

-- Criar tabela Aplicacao
CREATE TABLE Aplicacao (
    ID_Aplicacao NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    DataHora TIMESTAMP NOT NULL,
    Quantidade_Agua FLOAT NOT NULL,
    Tipo_Nutriente VARCHAR2(100) NOT NULL,  -- Ex: Água, N, P, K
    ID_Cultura NUMBER NOT NULL,
    CONSTRAINT FK_Cultura FOREIGN KEY (ID_Cultura) REFERENCES Cultura(ID_Cultura)
);
