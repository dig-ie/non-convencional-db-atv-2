-- -----------------------         CREATES   ---------------------------------

-- 1                      1 - CREATE DATA BASE      
     
     
CREATE DATABASE NCBD_ATV_2; 
-- (REMEMBER TO SELECT IT AS DEFAULT BEFORE EXECUTING THE SCRIPT)



-- ------                 2 - CREATE TABLES   ----

CREATE TABLE Departamentos (
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR (50),
    Criacao DATE
);

CREATE TABLE Funcionarios (
    Codigo INT AUTO_INCREMENT,
    PrimeiroNome VARCHAR(30),
    SegundoNome VARCHAR(30),
    TerceiroNome VARCHAR(30),
    DataNasci DATE,
    Cpf CHAR(14),
    Rg CHAR(12),
    Endereco VARCHAR(100),
    Cep VARCHAR(15),
    Cidade VARCHAR(20),
    Fone VARCHAR(30),
    CodigoDepartamento INT,
    Funcao VARCHAR(40),
    Salario FLOAT,
    PRIMARY KEY (Codigo)
);

-- --------------------           ALTER TABLES       -------------------------------------------------------------
ALTER TABLE Funcionarios
MODIFY Fone VARCHAR(40);


-- DELETANDO A COLUNA CodigoDepartamento que inicialmente esqueci de definir como sendo chave estrangeira e etc 
ALTER TABLE Funcionarios
DROP COLUMN CodigoDepartamento;

-- ajustando a chave estrangeira de Departamentos e referenciando a mesma.
-- adjusting Departamentos foreign key name and referecing it.
ALTER TABLE Funcionarios
ADD COLUMN fk_departamento_codigo INT, -- Adiciona a nova coluna
ADD CONSTRAINT fk_departamento_codigo -- Define a restrição de chave estrangeira
FOREIGN KEY (fk_departamento_codigo) REFERENCES Departamentos(Codigo);

ALTER TABLE Departamentos
CHANGE COLUMN Criacao DataCriacao DATE;

-- -----------------         INSERTS        ---------------------------------------------------------------------------------

INSERT INTO Departamentos (Nome, DataCriacao) VALUES
("Desenvolvimento", CURRENT_DATE()),
("Design", CURRENT_DATE()),
("Comercial", CURRENT_DATE());


INSERT INTO Funcionarios (PrimeiroNome, SegundoNome,
 TerceiroNome, DataNasci, Cpf, Rg, Endereco, Cep, Cidade, Fone
 , fk_departamento_codigo, Funcao, Salario) VALUES
 
 ("Diêgo", "de Barros", 
 "Ferreira", "2001-08-02", "000-000-000.00", "00.000.000-0", 
 "1346 6th Ave San Francisco, California", null,
 "San Francisco", "(00) 00000-0000", 1, "Full stack developer", 11.000),
 
 ("João", "", 
 "Gomes", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 "18200 CARR 3
CANOVANAS PR
USA", null,
 "CANOVANAS", "(00) 00000-0000", 1, "Q.A", 4.000),
 
 ("Alisson Gabriel", "aa", 
 "aa", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 " HC 3 BOX 41800
CAGUAS PR 00725-9773
USA
 ", null,
 "CAGUAS", "(00) 00000-0000", 1, "back-end developer", 11.000),
 
 ("Joana", "Silva", 
 "Santos", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 "300 CALLE CANAS HORMIGUEROS PR 00660-9756 USA", null,
 "HORMIGUEROS", "(00) 00000-0000", 1, "Designer", 4.000),
 
  ("Letícia", "", 
 "Carvalho", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 "HC 4 BOX 17100
YABUCOA PR 00767-9201
USA", null,
 "YABUCOA", "(00) 00000-0000", 1, "back-end developer", 4.000),
 
  ("José", "Gomes", 
 "de Deus", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 "1800 CARR 14
COTO LAUREL PR 00780-2163
USA", null,
 "COTO LAUREL", "(00) 00000-0000", 3, "back-end developer", 4.000),
 
 ("Aang", "last", 
 "airbender", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 "423  PASEO DEL MAR, ISABELA, PR 00662-3873", null,
 "ISABELA", "(00) 00000-0000", 1, "back-end developer", 4.000),
 
 ("Anyname", "Anymiddlename", 
 "Anylastname", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 "423  PASEO DEL MAR, ISABELA, PR 00662-3873", null,
 "ISABELA", "(00) 00000-0000", 1, "back-end developer", 4.000),
 
 ("Isaela", "Borges", 
 "Hivera", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 "", null,
 "ITUIUTABA", "(00) 00000-0000", 3, "Telefonista", 1.500),
 
 ("Yasmim", "Silva", 
 "Ferreira", "1999-09-26", "000-000-000.00", "00.000.000-0", 
 "1065 WATER GUT
CHRISTIANSTED VI 00820-5035
USA", null,
 "CHRISTIANSTED VI", "(00) 00000-0000", 1, "Front-end developer", 4.000),
 
  ("Johnas", "Brothers", 
 ":D", "1990-09-26", "000-000-000.00", "00.000.000-0", 
 " HC 3 BOX 41800
CAGUAS PR 00725-9773
USA
 ", null,
 "CAGUAS", "(00) 00000-0000", 1, "Front-end developer", 4.000),
 
 ("Johnas", "Brothers", 
 ":D", "1995-09-26", "000-000-000.00", "00.000.000-0", 
 " HC 3 BOX 41800
CAGUAS PR 00725-9773
USA
 ", null,
 "CAGUAS", "(00) 00000-0000", 1, "back-end developer", 4.000),
 
 ("Johnas", "", 
 ":D", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 " HC 3 BOX 41800
CAGUAS PR 00725-9773
USA
 ", null,
 "CAGUAS", "(00) 00000-0000", 2, "back-end developer", 4.000),
 
 ("Johnas", "Brothers", 
 ":D", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 " HC 3 BOX 41800
CAGUAS PR 00725-9773
USA
 ", null,
 "CAGUAS", "(00) 00000-0000", 2, "", 4.000),
 
  ("Johnas", "Brothers", 
 ":D", "2001-09-26", "000-000-000.00", "00.000.000-0", 
 " HC 3 BOX 41800
CAGUAS PR 00725-9773
USA
 ", null,
 "ITUIUTABA", "(00) 00000-0000", 3, "Telefonista", 1.500);
 
 -- -----------------               SELECTS                        -----------------------------------------------------------------
 
 -- 1)  Listar nome e sobrenome ordenado por sobrenome
SELECT PrimeiroNome, SegundoNome FROM Funcionarios 
ORDER BY SegundoNome, PrimeiroNome;

-- 2) Listar todos os campos de funcionários ordenados por cidade.
SELECT * FROM Funcionarios
ORDER BY Cidade;

-- 3) Liste os funcionários que têm salário superior a R$ 1.000,00 ordenados pelo nome completo
SELECT PrimeiroNome, SegundoNome, Salario FROM Funcionarios
WHERE Salario > 3.900
ORDER BY PrimeiroNome, SegundoNome, TerceiroNome;

-- 4) Liste a data de nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho
SELECT PrimeiroNome,
YEAR(CURRENT_DATE()) - YEAR(DataNasci) AS Age
FROM Funcionarios 
ORDER BY Age;

-- 5) Liste os funcionários como uma lista telefônica, com enedeço e cidade
SELECT PrimeiroNome, SegundoNome, TerceiroNome, Endereco
FROM Funcionarios
ORDER BY PrimeiroNome, SegundoNome;

-- 6) Liste o nome completo de todos os funcionários que não tenham segundo nome
SELECT PrimeiroNome, SegundoNome, TerceiroNome
FROM Funcionarios
WHERE SegundoNome = "";

-- 7) Liste os nomes dos funcionários que moram em Ituiutaba e que exerçam a função de Telefonista
SELECT Cidade, Funcao, PrimeiroNome, SegundoNome
FROM Funcionarios
WHERE UPPER(Cidade) = 'ITUIUTABA' 
AND UPPER(Funcao) = 'Telefonista'
ORDER BY PrimeiroNome;

-- 8)Liste os nomes dos funcionários que trabalham no departamento 2
SELECT PrimeiroNome
FROM Funcionarios
WHERE fk_departamento_codigo = 2;

-- 9) Liste o nome e o código do departamento de todos os funcionários que ganham mais do que R$ 2000,00
SELECT PrimeiroNome, fk_departamento_codigo
FROM Funcionarios
WHERE fk_departamento_codigo = 2
AND Salario > 2.000;


 

 
 
 
 
 
 
 
 
 
 -- 
 
 

 

