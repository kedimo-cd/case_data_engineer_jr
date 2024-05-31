-- Qual o valor máximo vendido por mês durante o ano de 2024?

SELECT
SUM(total_revenue) as valor_maximo,
month AS mes,
year as ano
FROM analytics.fact_analytics
GROUP BY month, year
HAVING YEAR = 2024
ORDER BY 1 DESC;

-- Insight: Notamos um aumento exponêncial nas vendas do mês de março (3) ao mês de maio (5).
-- Porém, há uma queda significativa nas vendas do mês de maio (5) para o mês de junho (6)


-- Quais foram os produtos mais vendidos durante o primeiro semestre de 2024?

SELECT
product_name as nome_produto,
SUM(quantity) AS total_vendido
FROM analytics.fact_analytics
WHERE month
BETWEEN 01 AND 6
GROUP BY product_name
ORDER BY 2 DESC;

-- Insight: O Produto A se destaca como mais vendido no primeiro semestre, Produtos B, C e D seguem com margem de vendas proximas ao Produto A.





