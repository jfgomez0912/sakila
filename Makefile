.DEFAULT_GOAL := run

export:
	curl  -o ./download/sakila-db.zip -L https://downloads.mysql.com/docs/sakila-db.zip
	yes | unzip ./download/sakila-db.zip -d ./download
	mv ./download/sakila-db/sakila-schema.sql ./sql/1-sakila-schema.sql
	mv ./download/sakila-db/sakila-data.sql ./sql/2-sakila-data.sql

./download/sakila-db:
	$(MAKE) export

run: ./download/sakila-db
	docker run -d --env-file .env -v ./sql/:/docker-entrypoint-initdb.d -p 3306:3306 --name sakila-db mysql:latest

clean:
	rm -rf ./download/sakila-db.zip ./download/sakila-db/
	docker stop sakila-db
	docker rm sakila-db

.PHONY: export run clean
