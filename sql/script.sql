CREATE SCHEMA biblioteca;


USE biblioteca;

-- DROP TABLE Categoria
CREATE TABLE IF NOT EXISTS Categoria (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    descricao TEXT
);

-- DROP TABLE Editora
CREATE TABLE IF NOT EXISTS Editora (
    editora_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    CNPJ VARCHAR(18) UNIQUE NOT NULL
);

-- DROP TABLE Autor
CREATE TABLE IF NOT EXISTS Autor (
    autor_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(100)
);

-- DROP TABLE Livro
CREATE TABLE IF NOT EXISTS Livro (
    livro_id INT AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(25) NOT NULL UNIQUE,
    titulo VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    editora_id INT,
    categoria_id INT,
    FOREIGN KEY (editora_id) REFERENCES Editora(editora_id) ON DELETE CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES Categoria(categoria_id) ON DELETE CASCADE
);

-- DROP TABLE Livro_Autor
CREATE TABLE IF NOT EXISTS Livro_Autor (
    livro_id INT,
    autor_id INT,
    PRIMARY KEY (livro_id, autor_id),
    FOREIGN KEY (livro_id) REFERENCES Livro(livro_id) ON DELETE CASCADE,
    FOREIGN KEY (autor_id) REFERENCES Autor(autor_id) ON DELETE CASCADE
);

-- DROP TABLE Membro
CREATE TABLE IF NOT EXISTS Membro (
    membro_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    cep VARCHAR(10),
    rua VARCHAR(100),
    numero VARCHAR(10),
    complemento VARCHAR(255)
);

-- DROP TABLE Telefone 
CREATE TABLE IF NOT EXISTS Telefone (
    telefone_id INT AUTO_INCREMENT PRIMARY KEY,
    membro_id INT,
    numero VARCHAR(20) NOT NULL,
    tipo VARCHAR(50),
    FOREIGN KEY (membro_id) REFERENCES Membro(membro_id) ON DELETE CASCADE
);

-- DROP TABLE Emprestimo 
CREATE TABLE IF NOT EXISTS Emprestimo (
    emprestimo_id INT AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    membro_id INT,
    livro_id INT,
    FOREIGN KEY (membro_id) REFERENCES Membro(membro_id) ON DELETE CASCADE,
    FOREIGN KEY (livro_id) REFERENCES Livro(livro_id) ON DELETE CASCADE
);
