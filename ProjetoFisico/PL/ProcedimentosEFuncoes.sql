-- 1. Função para retornar a quantidade de atores em uma produção audiovisual

CREATE OR REPLACE FUNCTION count_atores_in_prod_audiovisual(
  p_cod_prod INT
) RETURN INT AS
  v_count INT;
BEGIN
  SELECT COUNT(*)
  INTO v_count
  FROM Atua
  WHERE cod_prod = p_cod_prod;

  RETURN v_count;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
END count_atores_in_prod_audiovisual;

SELECT cod_prod, count_atores_in_prod_audiovisual(cod_prod) AS qtd_atores
FROM Prod_Audiovisual;

-- 2. Procedimento para adicionar um novo equipamento

CREATE OR REPLACE PROCEDURE add_equipamento(
  p_cod_equip INT,
  p_custo FLOAT,
  p_tipo VARCHAR2
) AS
BEGIN
  INSERT INTO Equipamento (cod_equip, custo, tipo)
  VALUES (p_cod_equip, p_custo, p_tipo);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
END add_equipamento;

BEGIN
  add_equipamento(
    p_cod_equip => 100,
    p_custo     => 1500,
    p_tipo      => 'Câmera Tekpix'
  );
  DBMS_OUTPUT.PUT_LINE('Equipamento adicionado com sucesso.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro ao adicionar o equipamento: ' || SQLERRM);
END;

-- 3. Procedimento para adicionar um novo estúdio

CREATE OR REPLACE PROCEDURE add_estudio(
  p_cod_estudio INT,
  p_nome VARCHAR2,
  p_cep VARCHAR2,
  p_logradouro VARCHAR2,
  p_numero VARCHAR2
) AS
BEGIN
  INSERT INTO Estudio (cod_estudio, nome, cep, logradouro, numero)
  VALUES (p_cod_estudio, p_nome, p_cep, p_logradouro, p_numero);
  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
END add_estudio;

BEGIN
  add_estudio(
    p_cod_estudio => 100,
    p_nome        => 'Sony Pictures Entertainment',
    p_cep         => '56789012',
    p_logradouro  => 'Avenida Hollywood',
    p_numero      => '200'
  );
  DBMS_OUTPUT.PUT_LINE('Estúdio adicionado com sucesso.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro ao adicionar o estúdio: ' || SQLERRM);
END;

-- 4. Procedimento para transferir um ator de um produtor para outro

CREATE OR REPLACE PROCEDURE transfer_ator(
  p_cpf_ator VARCHAR2,
  p_email_antigo_produtor VARCHAR2,
  p_email_novo_produtor VARCHAR2
) AS
  v_rows_affected INT;
BEGIN
  UPDATE Contrata
  SET email = p_email_novo_produtor
  WHERE cpf = p_cpf_ator AND email = p_email_antigo_produtor;

  -- Obter o número de linhas afetadas pela atualização
  v_rows_affected := SQL%ROWCOUNT;

  IF v_rows_affected = 0 THEN
    -- Lançar exceção genérica se nenhuma linha for afetada
    RAISE_APPLICATION_ERROR(-20001, 'Nenhuma linha afetada. Verifique os dados fornecidos.');
  END IF;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
END transfer_ator;

BEGIN
  -- Chamar o procedimento passando o CPF do ator, o email do produtor atual e o email do novo produtor
  transfer_ator('66677788899', 'michaelbrown@example.com', 'janedoe@example.com');
  
  -- Exibir mensagem de sucesso
  DBMS_OUTPUT.PUT_LINE('Ator transferido com sucesso.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro ao transferir o ator: ' || SQLERRM);
END;

-- 5.  Procedimento para atualizar custo de um equipamento

CREATE OR REPLACE PROCEDURE update_custo_equipamento(
  p_cod_equip INT,
  p_novo_custo FLOAT
) AS
	v_rows_affected INT;
BEGIN
  UPDATE Equipamento
  SET custo = p_novo_custo
  WHERE cod_equip = p_cod_equip;

 -- Obter o número de linhas afetadas pela atualização
  v_rows_affected := SQL%ROWCOUNT;

  IF v_rows_affected = 0 THEN
    -- Lançar exceção genérica se nenhuma linha for afetada
    RAISE_APPLICATION_ERROR(-20001, 'Nenhuma linha afetada. Verifique os dados fornecidos.');
  END IF;

  COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    RAISE;
END update_custo_equipamento;

BEGIN
  -- Chamar o procedimento passando o código do equipamento e o seu novo custo
  update_custo_equipamento(1, 1500.00);
  
  -- Exibir mensagem de sucesso
  DBMS_OUTPUT.PUT_LINE('Equipamento atualizado com sucesso.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Erro ao atualizar equipamento: ' || SQLERRM);
END;
