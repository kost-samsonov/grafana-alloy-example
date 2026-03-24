

HOST_HOSTNAME=$(hostname -f)
echo "HOST_HOSTNAME=$HOST_HOSTNAME" > .env

docker compose up -d
