                      Criação do banco de dados de um hospital

                      Parte 01 - Diagrama Entidade-Relacionamento (ER)

O diagrama Entidade-Relacionamento (ER) desenvolvido representa a estrutura conceitual do banco de dados voltado ao sistema clínico do hospital. Ele foi elaborado para organizar e relacionar informações sobre médicos, pacientes, convênios, consultas e receitas médicas. O objetivo é substituir planilhas e registros em papel por uma base de dados estruturada e integrada.

No modelo, os médicos são cadastrados com seus dados pessoais e classificados como generalistas, especialistas ou residentes, podendo estar vinculados a uma ou mais especialidades. As consultas registram a data, hora, médico responsável, paciente atendido, especialidade buscada e forma de pagamento — que pode ser particular ou via convênio, com identificação do número da carteira. Pacientes também são cadastrados com seus dados completos e, quando for o caso, associados a um convênio médico.

Ao final de cada consulta, é possível gerar uma receita médica com os medicamentos prescritos, incluindo quantidade e instruções de uso. Essas informações ficam vinculadas à consulta e ao paciente, permitindo gerar relatórios ou acesso online. O modelo foi planejado para garantir flexibilidade, integridade dos dados e facilitar a transição de registros antigos para o novo sistema digital.


![diagrama ER 01](https://github.com/user-attachments/assets/5387d78b-56fd-4fb7-ab46-06d2e63ea586)



                    Parte 02 - Expansão do Diagrama ER e Implementação do Banco de Dados

Na segunda parte do trabalho, foi dada continuidade ao desenvolvimento do sistema de banco de dados para o hospital, com base no Diagrama ER criado anteriormente. Esse diagrama representava as entidades envolvidas nas consultas médicas, como Médico, Paciente, Convênio, Consulta, Receita, Medicamento e Especialidade, além de seus respectivos relacionamentos.

Com a introdução de novos requisitos, o modelo foi ampliado para incluir o controle de internações hospitalares. Foram adicionadas as entidades Internação, Quarto, Tipo de Quarto e Enfermeiro, considerando que cada internação está vinculada a um paciente, possui um médico responsável, acontece em um quarto e pode contar com vários profissionais de enfermagem.

![diagrama ER (1)](https://github.com/user-attachments/assets/54634dae-41ad-4613-80c7-09f4c208af40)

                  Parte 03 - Alimentando o banco de dados

Nesta parte do projeto, foram criados scripts para inserir dados nas tabelas do sistema hospitalar, simulando um cenário real de uso. Foram cadastrados 10 médicos com especialidades variadas (incluindo pediatria, clínica geral, gastrenterologia e dermatologia), além de 15 pacientes. Também foram registradas 20 consultas entre 2015 e 2022, com diferentes combinações de médicos e pacientes — alguns pacientes tiveram mais de uma consulta. Em pelo menos 10 delas, foram incluídos receituários com dois ou mais medicamentos.
Quatro convênios médicos foram adicionados e associados a pelo menos cinco pacientes e cinco consultas. Também foi criado o relacionamento entre médicos e especialidades, além do relacionamento entre internações e enfermeiros. Corrigimos a chave estrangeira entre convênio e médico, e adicionamos referências de médico e paciente diretamente nas internações.
Foram registradas sete internações, com dois pacientes passando por mais de uma. Cadastramos três tipos de quarto (apartamento, duplo e enfermaria), cada um com valores diferentes. Inserimos ainda 10 enfermeiros, e garantimos que cada internação estivesse vinculada a pelo menos dois deles. Por fim, dados essenciais como tipos de quarto, convênios e especialidades são inseridos automaticamente quando o sistema é iniciado.
A partir desse modelo completo, foi elaborado um script SQL para a criação de todas as tabelas do banco de dados. O script define as colunas, tipos de dados, chaves primárias e estrangeiras, além de tabelas auxiliares para representar relacionamentos muitos-para-muitos, como médico-especialidade e internação-enfermeiro. Com isso, foi possível implementar uma estrutura relacional funcional e pronta para armazenar os dados de forma segura e organizada.
