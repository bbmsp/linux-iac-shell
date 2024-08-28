#!/bin/bash


echo "Criando diretórios..."

mkdir /adm
mkdir /compras
mkdir /vendas
mkdir /publico

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_COMPRAS
groupadd GRP_VENDAS

echo "Criando e adicionando usuários aos grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDAS

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMPRAS
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMPRAS
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_COMPRAS

echo "Setando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VENDAS /vendas
chown root:GRP_COMPRAS /compras

chmod 770 /adm
chmod 770 /compras
chmod 770 /vendas
chmod 777 /publico

echo "Script executado e finalizado com sucesso!"
