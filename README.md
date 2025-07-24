# investimentos-teste-itau
Teste técnico para vaga de Engenheira de Software Jr no Itaú
# Teste Técnico – Engenheira de Software Jr | Itaú

Este repositório contém minha solução para o teste técnico do processo seletivo do Itaú Unibanco, com foco em backend Java e modelagem de banco de dados.

## 📁 Estrutura

- `banco_de_dados/`: contém o script SQL com as tabelas do sistema de investimentos
- `api_java/`: será onde ficará a aplicação Java (Spring Boot) - em desenvolvimento

## 🧠 Etapa 1 – Banco de Dados

O script `script_criacao_tabelas.sql` define as seguintes tabelas:
- `usuarios`
- `ativos`
- `operacoes`
- `cotacoes`
- `posicoes`

### Justificativa dos tipos de dados

- `INT` para chaves primárias (`id_*`)
- `DECIMAL(10,2)` para valores financeiros (ex: preço, corretagem, P&L)
- `VARCHAR(n)` para textos como nome e código de ativo
- `DATETIME` para data/hora precisa de operações e cotações
- `CHAR(1)` com `CHECK` para garantir integridade em `tipo_op` (Compra/Venda)

### Como testar

Você pode rodar o script completo no site https://www.db-fiddle.com/ (escolhendo MySQL 8.0).

---
