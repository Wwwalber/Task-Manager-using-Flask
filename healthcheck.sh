#!/bin/bash
# healthcheck.sh - Verifica se o aplicativo está em execução

HOST=$1
PORT=$2
MAX_RETRIES=7
SLEEP_TIME=5

for i in $(seq 1 $MAX_RETRIES); do
  echo "Tentativa $i de $MAX_RETRIES..."
  response=$(curl -s -o /dev/null -w "%{http_code}" http://$HOST:$PORT)
  
  if [ "$response" = "200" ]; then
    echo "Aplicativo está respondendo com sucesso (HTTP 200)"
    exit 0
  fi
  
  echo "Aplicativo ainda não está respondendo adequadamente (HTTP $response)"
  echo "Aguardando $SLEEP_TIME segundos antes da próxima tentativa..."
  sleep $SLEEP_TIME
done

echo "Falha na verificação de saúde após $MAX_RETRIES tentativas"
exit 1