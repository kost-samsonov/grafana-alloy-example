
HOST_HOSTNAME=$(hostname -f)
export HOST_HOSTNAME
echo $HOST_HOSTNAME

docker compose up -d
