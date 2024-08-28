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
