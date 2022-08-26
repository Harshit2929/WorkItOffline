# WorkItOffline
Solution for Smart India Hackathon  2022

## Features
- When the uer is offline we will make peer to peer connection to sync our database locally using sms.
- We are using azure to deploy our containers ,it makes our application secure as VM instances and runtime software are regularly updated to address newly discovered vulnerabilities by azure,communication of secrets (such as connection strings) between your app and other Azure resources,stays within Azure and doesn't cross any network boundaries. Secrets are always encrypted when stored.

## Tech Stack
- Postgres sql,Nodejs,Sequelize ,Twilio api(Backend)
- Flutter (frontend)

## Things still in progress
- We wanted to built sync api which when the user is online will synchronize client and server database.
- Using twilio service we wanted to sent details from the shg member to notify the ao officer whois governing the shgs.

## Steps to set up backend locally
- npm i in backend folder
- docker-compose up in root folder to st up ur docker containers
- Remove postgresdb_data folder from the repo, if it exists. Check branch in which you are at the moment and make sure it is 'harshit_branch' run docker-compose up to build the container but before that make sure that there are no working or static containers of our current program(to check that, run docker container ls -a) After successfully executing the docker compose command, check the logs(printed on your screen) and you will observe that the web container errors out. Stop the containers by typing C-c
- Check the container id of postgres container and run it using command 'docker container start '
- Enter into the postgres container by using the command 'docker exec -it bash'
- Once inside the container, switch to postgres user using command 'psql -U postgres'
- Change the password to 'googleuser' using the command '\password'
- 'cd' into 'backend' and run 'node server'
- Your databse will be active on port 5432 and all backend apis at port 3000.



