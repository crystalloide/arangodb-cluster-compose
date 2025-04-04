#!/bin/sh

HOST=$1
PORT=$2
TIMEOUT=${3:-15}  # Temps maximum d'attente en secondes (par défaut : 15)

if [ -z "$HOST" ] || [ -z "$PORT" ]; then
  echo "Usage: $0 <host> <port> [timeout]"
  exit 1
fi

echo "Attente de la disponibilité de $HOST:$PORT pendant un maximum de $TIMEOUT secondes..."

start_time=$(date +%s)

while true; do
  # Vérifie si le port est accessible
  nc -z "$HOST" "$PORT" >/dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "$HOST:$PORT est maintenant disponible !"
    exit 0
  fi

  # Vérifie si le temps d'attente est dépassé
  current_time=$(date +%s)
  elapsed_time=$((current_time - start_time))
  if [ $elapsed_time -ge $TIMEOUT ]; then
    echo "Timeout : $HOST:$PORT n'est pas disponible après $TIMEOUT secondes."
    exit 1
  fi

  # Attend une seconde avant de réessayer
  sleep 1
done
