# Created by Gabriel Cassino
# 05-12-2024
# Version: 1_06_12_2024

# English(EN-US)
# Code developed for the subject of Analytical Geometry and Linear Algebra aiming 
# to apply the concept of scalar product in the real world, based on the verification 
# and authentication of the Brazilian individual taxpayer registration (CPF).

# Brazilian Portuguese (PT-BR)
# Código desenvolvido para a disciplina de Geometria Analítica e Álgebra Linear 
# com o objetivo de aplicar o conceito de produto escalar no mundo real, 
# a partir da verificação e autenticação do Cadastro de Pessoas Físicas (CPF).

import numpy as np
values_1=[]
default_1=[10,9,8,7,6,5,4,3,2]

default_2=[11]+default_1

for i in range(9):
    k=i+1
    x=input("Please insert of value %d:"% k)
    values_1.append(int(x))

print(values_1)
sum_1=sum(np.multiply(values_1,default_1))
rest1= 11-(sum_1 % 11)
print(rest1)
values_1.append(int(rest1))
sum_2=sum(np.multiply(values_1,default_2))
rest2= 11-(sum_2 % 11)
print(rest1)
values_1.append(int(rest2))
print(values_1)
