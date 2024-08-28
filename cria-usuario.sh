#!/bin/bash


echo "Criando usuários..."

useradd jose -c "José Alves" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd jose -e