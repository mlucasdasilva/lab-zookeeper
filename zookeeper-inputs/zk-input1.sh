#!/bin/bash



docker exec -it lab-zookeeper_zoo1_1 zkCli.sh -server zoo1  create /myapp ""
docker exec -it lab-zookeeper_zoo1_1 zkCli.sh -server zoo1  create /myapp/database ""
docker exec -it lab-zookeeper_zoo1_1 zkCli.sh -server zoo1  create /myapp/database/url "db.example.com"
docker exec -it lab-zookeeper_zoo1_1 zkCli.sh -server zoo1  create /myapp/database/user "rob"



