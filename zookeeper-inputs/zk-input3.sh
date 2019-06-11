#!/bin/bash



docker exec -it lab-zookeeper_zoo1_1 zkCli.sh -server zoo1  set	 /myapp/database/url "jdbc://ldap.db.recursoshumanos.com"
docker exec -it lab-zookeeper_zoo1_1 zkCli.sh -server zoo1  set  /myapp/database/user "maria teixeira de freitas"



