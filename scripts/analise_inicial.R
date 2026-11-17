# ==========================================================
# Projeto: Primeiro Projeto em R
# Descrição: Exemplo de manipulação de dados, estatísticas e gráficos
# ==========================================================

# 1. Carregar pacotes necessários
# Se não tiver instalado, rode antes: install.packages("tidyverse")
library(ggplot2)
library(dplyr)

# 2. Criando um conjunto de dados de exemplo (ou substituindo por uma tabela real)
# Dica para carregar um CSV do computador: dados <- read.csv("seu_arquivo.csv")
dados <- data.frame(
  Categoria = c("A", "B", "C", "D", "E"),
  Valores = c(15, 30, 22, 45, 38),
  Desempenho = c("Baixo", "Médio", "Baixo", "Alto", "Alto")
)

# Visualizar os primeiros dados
head(dados)

# 3. Calculando estatísticas básicas
media_valores <- mean(dados$Valores)
mediana_valores <- median(dados$Valores)
resumo_estatistico <- summary(dados$Valores)

print(paste("Média dos valores:", media_valores))
print(paste("Mediana dos valores:", mediana_valores))
print("Resumo estatístico completo:")
print(resumo_estatistico)

# 4. Gerando um gráfico elegante com ggplot2
grafico <- ggplot(dados, aes(x = Categoria, y = Valores, fill = Categoria)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  labs(
    title = "Gráfico de Exemplo - Primeiro Projeto em R",
    subtitle = "Análise de valores por categoria",
    x = "Categorias",
    y = "Valores"
  ) +
  theme_minimal()

# Exibir o gráfico na tela
print(grafico)
