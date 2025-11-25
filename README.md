
1. Finalidade do Repositório

Este repositório compõe o trabalho avaliativo da disciplina Banco de Dados Relacionais da Universidade de Vassouras — Campus Maricá.

O objetivo é apresentar, de forma clara e auditável, a construção de um banco de dados funcional, coerente e tecnicamente fundamentado, colocando em prática os conhecimentos adquiridos ao longo do período.
Toda a estrutura foi organizada para facilitar a navegação, leitura e validação por parte do professor avaliador.

2. MiniMundo — TechMaricá Indústria Eletrônica S.A.

A TechMaricá Indústria Eletrônica S.A.
Uma empresa em expansão, produzindo sensores, módulos inteligentes, placas de circuito e componentes de alta precisão.

Conforme a fábrica cresceu, surgiu um problema comum em ambientes industriais:
informações espalhadas, processos pouco documentados e dificuldade em rastrear o fluxo produtivo.

O gerente de produção — sobrecarregado — precisava responder diariamente perguntas essenciais:

Quais produtos estão em fabricação?

Quem é responsável técnico por cada produto?

Quais máquinas estão disponíveis ou paradas?

Quem autorizou determinada ordem de produção?

Quantas ordens foram concluídas esta semana?

Quais ainda dependem de finalização?

Sem um sistema centralizado, essas respostas demoravam, a tomada de decisão ficava comprometida e o controle operacional se tornava frágil.

Diante disso, o setor acadêmico da Universidade de Vassouras propôs um desafio:
modelar e implementar um banco de dados capaz de unificar essas informações e representar o núcleo produtivo da empresa.

Este trabalho é a materialização desse desafio.
Ele transforma um cenário industrial realista em um sistema organizado, consultável e expansível, demonstrando ao professor avaliador:

compreensão da modelagem relacional,

domínio das ferramentas SQL,

capacidade de estruturar soluções coerentes,

e clareza técnica na construção de sistemas de gestão.

3. Visão Geral do Sistema

Para atender às necessidades fundamentais da TechMaricá, o sistema foi estruturado para registrar:

Produtos fabricados e seus responsáveis técnicos

Funcionários e suas áreas

Máquinas industriais

Ordens de produção integrando produto, funcionário e máquina

Além disso, foram implementados recursos complementares, como:

uma VIEW consolidada

uma stored procedure para registrar ordens automaticamente

um trigger que atualiza o status da produção.

4. Estrutura do Repositório
/TechMarica-BD/
├── README.md               -- Documento explicativo e narrativa do projeto
├── 01_ddl.sql              -- Estrutura das tabelas e restrições
├── 02_dml.sql              -- Inserção dos dados iniciais
├── 03_selects.sql          -- Consultas e relatórios básicos
├── 04_view.sql             -- Criação da view consolidada
├── 05_procedure.sql        -- Stored procedure para registrar ordens
└── 06_trigger.sql          -- Trigger para atualização automática do status

5. Ordem de Execução Recomendada

Para facilitar a correção e garantir consistência:

01_ddl.sql – criação do banco de dados e tabelas

02_dml.sql – inserção dos dados para testes

03_selects.sql – consultas e verificação geral

04_view.sql – criação da view consolidada

05_procedure.sql – registro da stored procedure

06_trigger.sql – criação do trigger automático
