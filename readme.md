Remove postgresdb_data folder from the repo, if it exists.
Check branch in which you are at the moment and make sure it is 'harshit_branch'
run docker-compose up to build the container but before that make sure that there are no working or static containers of our current program(to check that, run docker container ls -a)
After successfully executing the docker compose command, check the logs(printed on your screen) and you will observe that the web container errors out. Stop the containers by typing C-c

Check the container id of postgres container and run it using command 'docker container start <Container-ID>'

Enter into the postgres container by using the command 'docker exec -it <container-id> bash'

Once inside the container, switch to postgres user using command 'psql -U postgres'

Change the password to 'googleuser' using the command '\password'

'cd' into 'backend' and run 'node server'
