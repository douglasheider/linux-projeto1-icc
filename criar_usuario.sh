#!/bin/bash

####################################################################################################################
#DIO                                                                                                               #
#CURSO FUNDAMENTOS DE LINUX                                                                                        #
#DOUGLAS OLIVEIRA                                                                                                  #
####################################################################################################################
echo "Criando os diretórios na raiz!"
#CRIANDO DIRETORIOS NA RAIZ
mkdir /publico /adm /ven /sec

echo "Criando os Grupos!"
#CRIANDO GRUPOS
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários, grupos e com senhas para expirar!"
#CRIANDO USUARIOS E ADD AOS GRUPOS COM SENHA COM DATA PARA EXPIRAR
useradd carlos     -m -c 'carlos' -G GRP_ADM -s /bin/bash -p $(openssl passwd -6 Senha123) 
useradd maria      -m -c 'maria'  -G GRP_ADM -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd joao       -m -c 'joao'   -G GRP_ADM -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd debora     -m -c 'debora'     -G GRP_VEN -s /bin/bash -p $(openssl passwd -6 Senha123) 
useradd sebastiana -m -c 'sebastiana' -G GRP_VEN -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd roberto    -m -c 'roberto'    -G GRP_VEN -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd josefina   -m -c 'josefina' -G GRP_SEC -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd amanda     -m -c 'amanda'   -G GRP_SEC -s /bin/bash -p $(openssl passwd -6 Senha123)
useradd rogerio    -m -c 'rogerio'  -G GRP_SEC -s /bin/bash -p $(openssl passwd -6 Senha123) 

echo "Criando as senhas dos usuários!"

echo "Fornecendo permissão do root aos diretórios"
#DANDO PERMISSAO DE ACESSO AOS DIRETORIOS
chown root:GRP_ADM /adm 
chown root:GRP_VEN /ven 
chown root:GRP_SEC /sec 

echo "Dando permissão aos grupos de diretórios"
#PERMISSAO DE DONO E GRUPO NOS DIRETORIOS
chmod 777 /publico 
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
