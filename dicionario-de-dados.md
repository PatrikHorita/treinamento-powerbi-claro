# Dicionário de dados — "O Caso dos Clientes que Sumiram"

> **Atenção:** todos os dados deste treinamento são **fictícios**, criados para fins didáticos. Eles **não representam** números, clientes ou operações reais da Claro.

## Visão geral

Quatro arquivos CSV (separador `;`, decimal `,`, datas `dd/mm/aaaa`, codificação UTF-8).

| Arquivo | O que é | Linhas (aprox.) |
|---|---|---|
| `planos.csv` | Os planos que a empresa vende | 4 |
| `clientes.csv` | Quem é o cliente e onde mora | 20 mil |
| `contratos.csv` | O contrato de cada cliente: plano, canal de venda, desconto e se cancelou | 21 mil |
| `atendimentos.csv` | Cada vez que o cliente falou com o atendimento | 57 mil |

Período dos dados: **01/01/2025 a 30/09/2026**.

## Como as tabelas se conectam

```
planos (1) ───< contratos (N) >─── (1) clientes
                                         │
                                         └──< atendimentos (N)
```

- `contratos.id_plano` → `planos.id_plano`
- `contratos.id_cliente` → `clientes.id_cliente`
- `atendimentos.id_cliente` → `clientes.id_cliente`

## planos.csv

| Coluna | Significado |
|---|---|
| `id_plano` | Código do plano |
| `nome_plano` | Nome comercial do plano |
| `tipo_plano` | **Controle** (plano mensal com limite de uso) ou **Pós-pago** (paga a fatura no fim do mês) |
| `valor_mensal` | Preço de tabela, em R$ |

## clientes.csv

| Coluna | Significado |
|---|---|
| `id_cliente` | Código do cliente |
| `cidade`, `uf`, `regiao` | Onde o cliente mora |
| `faixa_etaria` | 18-24, 25-34, 35-44, 45-59 ou 60+ |
| `data_cadastro` | Quando virou cliente |

## contratos.csv

| Coluna | Significado |
|---|---|
| `id_contrato` | Código do contrato |
| `id_cliente`, `id_plano` | Quem contratou e qual plano |
| `canal_venda` | Onde foi vendido: Loja, Site, App ou Telemarketing |
| `data_inicio` | Início do contrato |
| `status` | **Ativo** ou **Cancelado** |
| `data_cancelamento` | Quando cancelou (vazio se ativo) |
| `valor_inicial` | Quanto o cliente pagava no começo, em R$ (já com desconto, se houve) |
| `valor_cheio` | Quanto passa a pagar quando o desconto acaba, em R$ |
| `teve_desconto` | Sim ou Não |
| `data_fim_desconto` | Quando o desconto termina (vazio se não teve) |

## atendimentos.csv

| Coluna | Significado |
|---|---|
| `id_atendimento` | Código do atendimento |
| `id_cliente` | Quem ligou ou escreveu |
| `data_atendimento` | Quando |
| `tipo_atendimento` | Dúvida, Fatura, Sinal/Internet, Suporte técnico ou Cancelamento |
| `canal_atendimento` | Telefone, Chat ou WhatsApp |
| `resolvido` | Sim ou Não |
| `nota_satisfacao` | Nota de 0 a 10 dada pelo cliente (vazio = não respondeu) |

## Glossário de sobrevivência

| Termo do dia a dia | O que significa aqui |
|---|---|
| **Cancelamento** | Cliente que pediu para sair (no mercado: *churn*) |
| **Base de clientes** | Quantos clientes existem |
| **Plano** | O pacote contratado |
| **Promoção** | Desconto por tempo limitado |
| **Valor médio por cliente** | Quanto cada cliente paga, em média (no mercado: *ARPU*) |
| **Atendimento** | Contato do cliente com a central |
| **Nota de satisfação** | Nota de 0 a 10 |
