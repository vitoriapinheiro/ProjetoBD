-- Insere dados na tabela Ator
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('12345678901', 'Fulano Silva', DATE '1980-02-15');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('23456789012', 'Beltrano Souza', DATE '1990-05-20');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('34567890123', 'Ciclano Santos', DATE '1975-08-25');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('66261891126', 'Fulana Barbosa', DATE '1945-04-18');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('11122233344', 'Bernardo da Silva', DATE '1990-01-01');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('22233344455', 'Beltrão de Souza', DATE '1985-03-15');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('33344455566', 'Sil Vesteres Ta Lone', DATE '1982-07-25');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('44455566677', 'Maria das Graças', DATE '1995-12-10');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('55566677788', 'Zé Pereira', DATE '1992-05-20');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('66677788899', 'João Santos', DATE '1988-11-30');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('77788899900', 'Ana Paula Costa', DATE '1991-08-05');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('88899900011', 'Carlos Roberto', DATE '1987-04-12');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('99900011122', 'Roberta Santos', DATE '1993-09-22');
INSERT INTO Ator (cpf, nome, data_nascimento) VALUES ('00011122233', 'Paulo Henrique', DATE '1997-02-18');

-- Insere dados na tabela Produtor
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('chefe@email.com', 'Chefe da Produção', NULL, '11987654321', '11987654322');
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('produtor1@email.com', 'Produtor 1', 'chefe@email.com', '11987654323', '11987654324');
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('produtor2@email.com', 'Produtor 2', 'chefe@email.com', '11987654325', '11987654326');
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('johndoe@example.com', 'John Doe', NULL, '5555555555', NULL);
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('janedoe@example.com', 'Jane Doe', 'johndoe@example.com', '5555555556', NULL);
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('bobsmith@example.com', 'Bob Smith', 'johndoe@example.com', '11955674155', NULL);
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('sarahjones@example.com', 'Sarah Jones', 'bobsmith@example.com', '5555555558', NULL);
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('michaelbrown@example.com', 'Michael Brown', 'janedoe@example.com', '5555555559', NULL);
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('amandawilson@example.com', 'Amanda Wilson', 'sarahjones@example.com', '5568155560', NULL);
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('peterlee@example.com', 'Peter Lee', 'bobsmith@example.com', '5555555561', NULL);
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('monicagarcia@example.com', 'Monica Garcia', 'johndoe@example.com', '5555555562', NULL);
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('davidchoi@example.com', 'David Choi', 'johndoe@example.com', '5555555563', NULL);
INSERT INTO Produtor (email, nome, chefe, tel_1, tel_2) VALUES ('alexanderramos@example.com', 'Alexander Ramos', 'monicagarcia@example.com', '5555555564', NULL);


-- Insere dados na tabela Contrata
INSERT INTO Contrata (email, cpf) VALUES ('chefe@email.com', '12345678901');
INSERT INTO Contrata (email, cpf) VALUES ('chefe@email.com', '66261891126');
INSERT INTO Contrata (email, cpf) VALUES ('produtor1@email.com', '23456789012');
INSERT INTO Contrata (email, cpf) VALUES ('produtor2@email.com', '34567890123');
INSERT INTO Contrata (email, cpf) VALUES ('produtor1@email.com', '00011122233');
INSERT INTO Contrata (email, cpf) VALUES ('produtor1@email.com', '99900011122');
INSERT INTO Contrata (email, cpf) VALUES ('produtor1@email.com', '55566677788');
INSERT INTO Contrata (email, cpf) VALUES ('johndoe@example.com', '33344455566');
INSERT INTO Contrata (email, cpf) VALUES ('johndoe@example.com', '11122233344');
INSERT INTO Contrata (email, cpf) VALUES ('janedoe@example.com', '22233344455');
INSERT INTO Contrata (email, cpf) VALUES ('janedoe@example.com', '88899900011');
INSERT INTO Contrata (email, cpf) VALUES ('bobsmith@example.com', '44455566677');
INSERT INTO Contrata (email, cpf) VALUES ('sarahjones@example.com', '77788899900');
INSERT INTO Contrata (email, cpf) VALUES ('michaelbrown@example.com', '66677788899');


-- Insere dados na tabela Prod_Audiovisual
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (1, 9.9, 'Senhor dos anéis');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (2, 7.3, 'Bob esponja: No fundo do mar');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (3, 7.2, 'Amnésia');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (4, 3.8, 'Batman vs Superman');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (5, 8.0, 'Rocky Balboa');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (6, 7.8, 'John Wick');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (7, 0.5, 'Pior filme do mundo');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (8, 0.1, 'Pior série do mundo: Uma série inspirada no filme');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (9, 9.2, 'O Poderoso Chefão');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (10, 8.9, 'A Lista de Schindler');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (11, 8.8, 'Forrest Gump: O Contador de Histórias');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (12, 8.7, 'Um Sonho de Liberdade');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (13, 8.5, 'O Curioso Caso de Benjamin Button');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (14, 8.4, 'A Origem');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (15, 8.3, 'Clube da Luta');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (16, 2.7, 'Cats');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (17, 2.9, 'Transformers: Revenge of the Fallen');
INSERT INTO Prod_Audiovisual (cod_prod, avaliacao, nome) VALUES (18, 1.7, 'The Emoji Movie');

-- Insere dados na tabela Premio
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (1, 'Melhor Ator Principal', 'Oscar: Academy of Motion Picture Arts and Sciences');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (2, 'Melhor Atriz Principal', 'Oscar: Academy of Motion Picture Arts and Sciences');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (3, 'Melhor Ator Coadjuvante', 'Oscar: Academy of Motion Picture Arts and Sciences');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (4, 'Melhor Atriz Coadjuvante', 'Oscar: Academy of Motion Picture Arts and Sciences');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (6, 'Melhor Ator Principal de comédia', 'Palme d''Or: Cannes Film Festival');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (7, 'Melhor Atriz Principal de comédia', 'Palme d''Or: Cannes Film Festival');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (8, 'Melhor Ator Principal de drama', 'Golden Globe: Hollywood Foreign Press Association');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (9, 'Melhor Atriz Principal de drama', 'Golden Globe: Hollywood Foreign Press Association');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (10, 'Melhor Ator Principal de Terror', 'Tony Award: American Theatre Wing');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (11, 'Melhor Ator Coadjuvante de Terror', 'Tony Award: American Theatre Wing');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (12, 'Melhor Atriz Principal de Terror', 'Tony Award: American Theatre Wing');
INSERT INTO Premio (cod_premio, nome, instituicao) VALUES (13, 'Melhor Atriz Coadjuvante de Terror', 'Tony Award: American Theatre Wing');

-- Insere dados na tabela Atua
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('12345678901', 1, 'Protagonista', 1);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('66261891126', 2, 'Coadjuvante', 2);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('23456789012', 3, 'Antagonista', 3);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('34567890123', 4, 'Coadjuvante', 4);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('66261891126', 5, 'Coadjuvante', 6);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('34567890123', 6, 'Coadjuvante', 6);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('23456789012', 7, 'Coadjuvante', 7);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('12345678901', 8, 'Coadjuvante', 8);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('34567890123', 9, 'Coadjuvante', 9);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('34567890123', 10, 'Protagonista', 10);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('12345678901', 11, 'Protagonista', 11);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('66261891126', 12, 'Coadjuvante', 12);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('23456789012', 13, 'Antagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('34567890123', 14, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('88899900011', 15, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('34567890123', 16, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('23456789012', 17, 'Coadjuvante', 1);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('12345678901', 18, 'Coadjuvante', 1);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('77788899900', 1, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('34567890123', 2, 'Protagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('66677788899', 3, 'Protagonista', 1);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('66261891126', 4, 'Coadjuvante', 2);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('23456789012', 5, 'Antagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('55566677788', 6, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('44455566677', 7, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('44455566677', 8, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('23456789012', 9, 'Coadjuvante', 12);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('12345678901', 10, 'Coadjuvante', 10);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('33344455566', 11, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('33344455566', 12, 'Protagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('33344455566', 13, 'Protagonista', 4);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('33344455566', 14, 'Protagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('33344455566', 15, 'Protagonista', 6);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('22233344455', 16, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('22233344455', 17, 'Protagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('22233344455', 18, 'Protagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('88899900011', 1, 'Coadjuvante', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('88899900011', 2, 'Protagonista', 9);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('99900011122', 3, 'Protagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('99900011122', 4, 'Protagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('99900011122', 5, 'Protagonista', 1);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('00011122233', 6, 'Protagonista', 3);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('00011122233', 7, 'Protagonista', NULL);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('00011122233', 8, 'Protagonista', 1);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('00011122233', 9, 'Protagonista', 1);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('00011122233', 10, 'Protagonista', 2);
INSERT INTO Atua (cpf, cod_prod, tipo_personagem, cod_premio) VALUES ('00011122233', 11, 'Protagonista', 2);

-- Insere dados na tabela Serie
INSERT INTO Serie (cod_prod, qtd_temporadas) VALUES (8, 5);

-- Insere dados na tabela Filme
INSERT INTO Filme (cod_prod, bilheteria) VALUES (1, 1000000000);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (2, 100000000);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (3, 10000000);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (4, 5000000000);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (5, 100000000);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (6, 2500000000);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (7, 1124124123);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (9, 1312312);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (10, 13213123);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (11, 1239184818);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (12, 293810492);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (13, 4829180);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (14, 93909292);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (15, 493918932);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (16, 192048182);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (17, 200817688);
INSERT INTO Filme (cod_prod, bilheteria) VALUES (18, 3482938129);

-- Insere dados na tabela Contrato
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (1, DATE '2001-04-18', 1000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (2, DATE '2004-02-20', 2000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (3, DATE '2000-03-25', 3000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (4, DATE '2016-04-23', 1000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (5, DATE '1985-04-23', 1000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (6, DATE '2014-04-23', 100000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (7, DATE '2022-03-21', 10000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (8, DATE '2023-02-27', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (9, DATE '1972-12-07', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (10, DATE '1993-11-11', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (11, DATE '1994-05-16', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (12, DATE '1994-06-18', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (13, DATE '2008-08-08', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (14, DATE '2010-10-10', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (15, DATE '1999-10-18', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (16, DATE '2019-12-21', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (17, DATE '2009-09-09', 10000000000000);
INSERT INTO Contrato (cod_prod, data, orcamento) VALUES (18, DATE '2017-12-12', 10000000000000);

-- Insere dados na tabela Equipamento
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (1, 10000, 'Câmera');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (2, 2000, 'Microfone');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (3, 5000, 'Iluminação');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (4, 2500.00, 'Notebook');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (5, 3000.00, 'Desktop');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (6, 1500.00, 'Impressora');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (7, 1200.00, 'Scanner');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (8, 5000.00, 'Servidor');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (9, 900.00, 'Mouse');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (10, 700.00, 'Teclado');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (11, 4500.00, 'Notebook Gamer');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (12, 3500.00, 'Desktop Gamer');
INSERT INTO Equipamento (cod_equip, custo, tipo) VALUES (13, 2000.00, 'Monitor');


-- Insere dados na tabela Estudio
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (1, 'Warner Bros. Pictures', '91522', 'Avenida das Nações Unidas', '12901');
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (2, 'Universal Pictures', '10018', '7th Ave', '1600');
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (3, '20th Century Studios', '90038', 'Poinsettia Pl', '10201');
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (4, 'Walt Disney Pictures', '91522', 'Avenida das Nações Unidas', '12901');
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (5, 'Paramount Pictures', '90038', 'Gower St', '5555');
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (6, 'New Line Cinema', '90038', 'Seward St', '116 N');
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (7, 'DreamWorks Pictures', '90245', 'Rosecrans Ave', '1000');
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (8, 'Lionsgate Films', '90404', 'Olympic Blvd', '2700');
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (9, 'MGM', '90210', 'N Beverly Dr', '235');
INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero) VALUES (10, 'Miramax', '90210', 'N Beverly Dr', '8899');

-- Insere dados na tabela Aluga
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (1, 1, 1);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (2, 2, 2);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (3, 3, 3);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (4, 4, 4);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (5, 5, 5);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (6, 6, 6);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (7, 7, 7);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (8, 8, 8);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (9, 9, 9);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (10, 10, 10);

INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (11, 1, 1);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (12, 2, 2);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (13, 3, 3);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (14, 4, 4);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (15, 5, 5);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (16, 6, 6);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (17, 7, 7);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (18, 8, 8);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (1, 1, 9);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (2, 2, 10);

INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (3, 3, 1);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (4, 4, 2);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (5, 5, 3);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (6, 6, 4);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (7, 7, 5);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (8, 8, 6);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (9, 9, 7);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (10, 10, 8);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (11, 1, 9);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (12, 2, 10);

INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (13, 3, 1);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (14, 4, 2);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (15, 5, 3);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (16, 6, 4);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (17, 7, 5);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (18, 8, 6);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (1, 1, 7);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (2, 2, 8);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (3, 3, 9);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (4, 4, 10);

INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (5, 5, 1);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (6, 6, 2);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (7, 7, 3);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (8, 8, 4);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (9, 9, 5);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (10, 10, 6);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (11, 1, 7);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (12, 2, 8);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (13, 3, 9);
INSERT INTO Aluga (cod_prod, cod_estudio, cod_equip) VALUES (14, 4, 10);