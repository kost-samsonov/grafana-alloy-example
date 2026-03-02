
HOST_HOSTNAME=$(hostname)
export HOST_HOSTNAME
echo $HOST_HOSTNAME

docker compose up -d
