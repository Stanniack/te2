# dataset: https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset

df = read.csv("C:/Users/fiodo/OneDrive/Área de Trabalho/Python, R, etc/trab ramon/day.csv")

View(df)
str(df)

# Transformando em numerico para correlacao

install.packages("corrplot")
library(corrplot)
corrplot(cor(df))

levels(df$dteday)
df$dteday <- NULL

correlaco = cor(df)
View (correlaco)

# ------------------------ Modelo 1 ------------------------ 
summary(lm(df$cnt ~ df$temp + df$atemp + df$casual))

# ------------------------ Modelo 3 ------------------------ 
summary(lm(df$cnt ~ df$casual))
# 55% do modelo é explicado por esses dados
R2 = 2.894e+03 + 1.898e+00 * df$casual


# ------------------------ Modelo 2 - escolhido ------------------------ 
modelo = lm(df$cnt ~ df$casual + df$atemp)
summary(modelo)
# 55% do modelo é explicado por esses dados
R1 = 1.261e+03 + 1.320e+00 * df$casual + 4.476+03 * df$atemp

# Nível de sign a 5%

# Resíduos do modelo (diferença entre os dados reais e a linha de melhor ajuste)
modelo$residuals

# Valores da reta de melhor ajuste do modelo (valores ajustados)
modelo$fitted.values

#########################################################
# Avaliar o modelo com as variáveis independentes individuais e em duplas (PNB e PIB), (ICR e PIB) e (PNB e ICR)





