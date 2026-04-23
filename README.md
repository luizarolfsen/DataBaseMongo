# DataBaseMongo TF
Missão 1: Subir os contêineres via Docker Compose.
Missão 2: Inserir um JSON de 15 níveis no Postgres (usando JSONB) e no Mongo.
Missão 3: Medir a dificuldade de realizar uma query no 15º nível.
Entrega: Repositório GitHub com código e o relatório comparativo de tempo/esforço.


# Relatório Comparativo: PostgreSQL JSONB vs MongoDB

## Objetivo
Comparar PostgreSQL usando JSONB com MongoDB armazenando um JSON de 15 níveis.

---

## PostgreSQL
O PostgreSQL armazenou o JSON com sucesso utilizando JSONB.
A consulta ao 15º nível exigiu uma query extensa usando vários operadores `->`, aumentando a complexidade.

### Vantagens:
- suporte relacional
- integridade
- JSONB indexável

### Desvantagens:
- query longa
- menor legibilidade

---

## MongoDB
O MongoDB armazenou o JSON naturalmente como documento.
A consulta ao 15º nível foi feita com `dot notation`, com maior simplicidade.

### Vantagens:
- consulta simples
- estrutura natural para JSON
- maior legibilidade

### Desvantagens:
- menos rigidez estrutural

---

## Conclusão
O MongoDB apresentou menor esforço para consultar dados profundamente aninhados, enquanto o PostgreSQL apresentou maior complexidade sintática com JSONB.