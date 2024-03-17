build:
	# export UID="$(id -u $(whoami))"
	# export GID="$(id -g $(whoami))"
	rm -f logs/dbt.log
	docker-compose up --force-recreate --build dbt
