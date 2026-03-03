
HOST_HOSTNAME=$(hostname -f)
export HOST_HOSTNAME

docker compose --profile=alloy up -d
