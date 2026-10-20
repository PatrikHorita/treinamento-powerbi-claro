# Power BI: do dado à decisão: material dos participantes

Treinamento Claro × Microsoft, conduzido pela ACT Digital.

> **Todos os dados são fictícios**, criados para fins didáticos. Não representam números, clientes ou operações reais da Claro.

## O que há aqui

| Arquivo | Para quê |
|---|---|
| `dados/planos.csv`, `clientes.csv`, `contratos.csv`, `atendimentos.csv` | As 4 tabelas do caso (Prática 1) |
| `dim_calendario.m` | Código do Power Query da tabela de datas (Prática 2) |
| `dicionario-de-dados.md` | O que significa cada coluna |

## Como usar os CSVs

Formato: separador `;`, decimal `,`, datas `dd/mm/aaaa`, UTF-8.
No Power BI Desktop: **Página Inicial → Obter dados → Texto/CSV** e escolha **Transformar Dados**.

## Como usar a dim_calendario

1. **Transformar dados → Nova Fonte → Consulta em branco**.
2. **Editor Avançado**: apague tudo, cole o conteúdo de `dim_calendario.m` e clique em **Concluído**.
3. Renomeie a consulta para `dim_calendario` e use **Fechar e Aplicar**.
