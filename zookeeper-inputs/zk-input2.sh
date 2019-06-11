#!/bin/bash



docker exec -it lab-zookeeper_zoo1_1 zkCli.sh -server zoo1  set	 /myapp/database/url "db.pessoas.com"
docker exec -it lab-zookeeper_zoo1_1 zkCli.sh -server zoo1  set  /myapp/database/user "joaquim"



