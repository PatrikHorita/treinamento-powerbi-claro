let
    inicio = #date(2025, 1, 1),
    fim = #date(2026, 9, 30),
    dias = List.Dates(inicio,
        Duration.Days(fim - inicio) + 1,
        #duration(1, 0, 0, 0)),
    tabela = Table.FromList(dias,
        Splitter.SplitByNothing(), {"dta_base"}),
    tipo = Table.TransformColumnTypes(tabela,
        {{"dta_base", type date}}),
    mes = Table.AddColumn(tipo, "dta_inicio_mes",
        each Date.StartOfMonth([dta_base]), type date),
    chave = Table.AddColumn(mes, "mes_ano_num",
        each Date.Year([dta_base]) * 100
            + Date.Month([dta_base]), Int64.Type),
    nome = Table.AddColumn(chave, "nom_mes_ano_reduzido",
        each Text.Start(Date.MonthName([dta_base]), 3)
            & "/" & Text.From(Date.Year([dta_base]),
            "pt-BR"), type text)
in
    nome
