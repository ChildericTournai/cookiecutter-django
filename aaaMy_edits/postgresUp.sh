#/bin/bash
echo dont need to make call to create db as docker run below is creating it. otherwise please call: docker exec -it pgdb createdb --username=postgres devdb
docker run -d --name pgdb -e POSTGRES_DB=devdb -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=secret -v $(pwd)/pgdata:/ar/lib/postgresql/data -p 5432:5432 postgres:16
