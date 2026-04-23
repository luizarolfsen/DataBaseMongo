use("comparativo");

db.documentos.insertOne({
  nome: {
    sobrenome: {
      idade: {
        endereco: {
          cidade: {
            estado: {
              pais: {
                empresa: {
                  departamento: {
                    cargo: {
                      projeto: {
                        fase: {
                          tarefa: {
                            detalhe: {
                              status: "concluído"
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
});

db.documentos.find(
  {},
  {
    "nome.sobrenome.idade.endereco.cidade.estado.pais.empresa.departamento.cargo.projeto.fase.tarefa.detalhe.status": 1,
    _id: 0
  }
);