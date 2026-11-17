# ==========================================================
# Projeto: Primeiro Projeto em R
# Descrição: Estatísticas avançadas e resumo de dados
# ==========================================================

library(dplyr)

# Criando um conjunto de dados simulado de notas de alunos
dados_alunos <- data.frame(
  Aluno = c("Ana", "Bruno", "Carlos", "Diana", "Eduardo"),
  Nota = c(8.5, 6.0, 7.5, 9.0, 5.5),
  Faltas = c(2, 5, 1, 0, 8)
)

# Visualizar a tabela
print("Dados dos alunos:")
print(dados_alunos)

# Calculando estatísticas descritivas avançadas para a coluna 'Nota'
resumo_notas <- dados_alunos %>%
  summarise(
    Media_Nota = mean(Nota),
    Desvio_Padrao = sd(Nota),
    Menor_Nota = min(Nota),
    Maior_Nota = max(Nota)
  )

print("Resumo estatístico das notas:")
print(resumo_notas)
