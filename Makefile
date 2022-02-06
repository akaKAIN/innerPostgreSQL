start: docker run \
    --rm -it \
    -p 5432:5432 \
    --name postgres \
    -e POSTGRES_PASSWORD=password \
    -e PGDATA=/var/lib/postgresql/data \
    -v $(pwd)/mntdata:/var/lib/postgresql/data \
    postgres:13.1

dockerExec: docker exec -it postgres bash

// postgres=# create user myuser password 'secret';
CREATE ROLE
postgres=# grant all privileges on database mydb to myuser;
GRANT


