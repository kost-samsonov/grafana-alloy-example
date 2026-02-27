
HOST_HOSTNAME=$(hostname)
export HOST_HOSTNAME

docker compose --profile=alloy up -d
