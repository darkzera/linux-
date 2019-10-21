#!/bin/bash
# Cria e entra no diretorio criado 
# Recebe nome via parametro

# ex: . ./<scriptName.sh>

#echo "Nome da pasta p criar: $1"
mkdir $1
cd $1
#echo "Nome da pasta p entrar: $1"
pwd
