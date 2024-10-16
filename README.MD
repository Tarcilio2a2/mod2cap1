# Modelo de Banco de Dados para Monitoramento Agrícola

## Entidades

### Cultura
- **ID_Cultura**: INTEGER (PK)
- **Nome**: VARCHAR2(255) NOT NULL

### Sensor
- **ID_Sensor**: INTEGER (PK)
- **Tipo**: VARCHAR2(100) NOT NULL
- **Localizacao**: VARCHAR2(255) NOT NULL

### Leitura
- **ID_Leitura**: INTEGER (PK)
- **DataHora**: TIMESTAMP NOT NULL
- **Valor**: FLOAT NOT NULL
- **Tipo_Leitura**: VARCHAR2(100) NOT NULL
- **ID_Sensor**: INTEGER (FK)
- **ID_Cultura**: INTEGER (FK)

### Aplicacao
- **ID_Aplicacao**: INTEGER (PK)
- **DataHora**: TIMESTAMP NOT NULL
- **Quantidade_Agua**: FLOAT NOT NULL
- **Tipo_Nutriente**: VARCHAR2(100) NOT NULL
- **ID_Cultura**: INTEGER (FK)

## Relacionamentos
- **Cultura (1)** — **Leitura (N)**
- **Sensor (1)** — **Leitura (N)**
- **Cultura (1)** — **Aplicacao (N)**

## Tipos de Dados
- INTEGER, VARCHAR2, FLOAT, TIMESTAMP

## DER

