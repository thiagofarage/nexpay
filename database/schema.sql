-- 1. Criação da tabela de usuários (NexPay Core)
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    cnpj CHAR(14) UNIQUE,
    business_name VARCHAR(100),
    mei_category VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Inserção de usuários iniciais (Exemplo de Seed)
INSERT INTO users (name, email, password_hash, cnpj, business_name, mei_category)
VALUES
('Ana Costa', 'ana@teste.com', 'senha127', '11223344000155', 'Ana Design Studio', 'Designer'),
('Carlos Mendes', 'carlos@teste.com', 'senha8765', '55667788000199', 'Carlos Consultoria', 'Consultor'),
('Beatriz Lima', 'beatriz@teste.com', 'senha573', '99887766000133', 'Bia Dev', 'Desenvolvedora'),
('Vitória Souza', 'vitoria@plink.com', 'senha234', '67548711000155', 'NutriEsportiva', 'Bem-Estar'),
('João Lima', 'joao@hashtag.com', 'senha909', '12367899000212', 'HashTreinamentos', 'Educação');

-- 3. Exemplo de consulta para validação
SELECT * FROM users;
