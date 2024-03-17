build:
	bash build.sh
	rm -f logs/dbt.log
	docker-compose up --force-recreate --build dbt
