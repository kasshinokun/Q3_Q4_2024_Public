# Created by Gabriel Cassino
# 05-12-2024
# Version: 1_23_12_2024

# English(EN-US)
# Code developed for the subject of Analytical Geometry and Linear Algebra aiming 
# to apply the concept of scalar product in the real world, based on the verification 
# and authentication of the Brazilian individual taxpayer registration (CPF).
# more details on: 
# https://en.wikipedia.org/wiki/CPF_number#:~:text=The%20CPF%20number%20(Cadastro%20de,indirectly%2C%20pay%20taxes%20in%20Brazil.
# Please read only first paragraph

# Brazilian Portuguese (PT-BR)
# Código desenvolvido para a disciplina de Geometria Analítica e Álgebra Linear 
# com o objetivo de aplicar o conceito de produto escalar no mundo real, 
# a partir da verificação e autenticação do Cadastro de Pessoas Físicas (CPF).
# maiores detalhes em:
#https://pt.wikipedia.org/wiki/Cadastro_de_Pessoas_F%C3%ADsicas
# Por favor, leia apenas o primeiro parágrafo

import numpy as np
from os import system as syscall
syscall("cls")

values_1=[]
default_1=[10,9,8,7,6,5,4,3,2]

default_2=[11]+default_1

for i in range(9):
    k=i+1
    x=input(f'Please insert of value {k}: ')
    values_1.append(int(x))
print(f'You typed: {values_1}')
sum_1=sum(np.multiply(values_1,default_1))
remainder1= 11-(sum_1 % 11)
print(f'the remainder of the division of the scalar product is {remainder1}')
if remainder1==11:# if remainder1 equal 11 set values_1[9] to 0
    values_1.append(0)
else:        # else apend remainder1 on values_1[9] - 10th position
    values_1.append(int(remainder1))
sum_2=sum(np.multiply(values_1,default_2))
remainder2= 11-(sum_2 % 11)
print(f'the remainder of the division of the scalar product is {remainder2}')
if remainder2==11: # if remainder2 equal 11 set values_1[10] to 0
    values_1.append(0)
else:        # else apend remainder2 on values_1[10] - 11th position
    values_1.append(int(remainder2))
print(f'The value to check is: {values_1}')
