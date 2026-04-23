CREATE TABLE documentos (
    id SERIAL PRIMARY KEY,
    dados JSONB
);

INSERT INTO documentos (dados)
VALUES (
'{
  "nome": {
    "sobrenome": {
      "idade": {
        "endereco": {
          "cidade": {
            "estado": {
              "pais": {
                "empresa": {
                  "departamento": {
                    "cargo": {
                      "projeto": {
                        "fase": {
                          "tarefa": {
                            "detalhe": {
                              "status": "concluído"
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}'::jsonb
);

SELECT dados->'nome'
            ->'sobrenome'
            ->'idade'
            ->'endereco'
            ->'cidade'
            ->'estado'
            ->'pais'
            ->'empresa'
            ->'departamento'
            ->'cargo'
            ->'projeto'
            ->'fase'
            ->'tarefa'
            ->'detalhe'
            ->>'status' AS status
FROM documentos;