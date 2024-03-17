GID="$(id -g $(whoami))"
rm .env
echo "UID=$UID
GID=$GID" >> .env