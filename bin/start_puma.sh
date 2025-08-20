#!/bin/bash

# Define o diretório home e a raiz do rbenv explicitamente
export HOME="/home/deployuser"
export RBENV_ROOT="/home/deployuser/.rbenv"

# Inicializa o rbenv para configurar o PATH e as funções
eval "$(rbenv init - bash)"

# Garante que 'bundle' e outros executáveis rbenv estão no PATH
export PATH="/home/deployuser/.rbenv/shims:/home/deployuser/.rbenv/bin:$PATH"

# Navega para o diretório de trabalho do projeto
# O "|| exit 1" garante que o script saia se não conseguir mudar de diretório
cd /home/deployuser/my_portfolio || exit 1

# Executa o Puma
# O 'exec' substitui o shell atual pelo processo Puma,
# garantindo que o Systemd rastreie o Puma corretamente.
exec bundle exec puma -C config/puma.rb
