#!/bin/bash


echo "Criando diretórios.."

mkdir /adm
mkdir /compras
mkdir /vendas
mkdir /publico

echo "Criando grupos de usuários.."

groupadd GRP_ADM
groupadd GRP_COMPRAS
groupadd GRP_VENDAS

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMPRAS
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMPRAS
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMPRAS
