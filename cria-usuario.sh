#!/bin/bash

# Criando no linux usuários com pastas no diretório Home para o usuário e
# senha a ser alterada no primeiro login.

echo "Criando usuários..."

useradd jose -c "José Alves" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd jose -e

useradd jessica -c "Jéssica Fagundes" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd jessica -e

useradd renato -c "Renato Gusmão" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd renato -e

useradd vagner -c "Vagner Guedes" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd vagner -e

useradd fabio -c "Fábio Fagundes" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd fabio -e

useradd edson -c "Edson Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd edson -e

useradd lucas -c "Lucas Santos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd lucas -e

echo "Script executado e finalizado!"

