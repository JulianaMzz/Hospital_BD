                      Criação do banco de dados de um hospital

                      Parte 01 - Diagrama Entidade-Relacionamento (ER)

O diagrama Entidade-Relacionamento (ER) desenvolvido representa a estrutura conceitual do banco de dados voltado ao sistema clínico do hospital. Ele foi elaborado para organizar e relacionar informações sobre médicos, pacientes, convênios, consultas e receitas médicas. O objetivo é substituir planilhas e registros em papel por uma base de dados estruturada e integrada.

No modelo, os médicos são cadastrados com seus dados pessoais e classificados como generalistas, especialistas ou residentes, podendo estar vinculados a uma ou mais especialidades. As consultas registram a data, hora, médico responsável, paciente atendido, especialidade buscada e forma de pagamento — que pode ser particular ou via convênio, com identificação do número da carteira. Pacientes também são cadastrados com seus dados completos e, quando for o caso, associados a um convênio médico.

Ao final de cada consulta, é possível gerar uma receita médica com os medicamentos prescritos, incluindo quantidade e instruções de uso. Essas informações ficam vinculadas à consulta e ao paciente, permitindo gerar relatórios ou acesso online. O modelo foi planejado para garantir flexibilidade, integridade dos dados e facilitar a transição de registros antigos para o novo sistema digital.

![diagrama ER](https://github.com/user-attachments/assets/bafe4584-b968-4a5e-ad48-0dd7f466f92b)
