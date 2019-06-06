# zookeeper


## No zookeper cli:


zkCli.sh -server zoo1


[zk: localhost:2181(CONNECTED) 1] create /myapp ""

[zk: localhost:2181(CONNECTED) 2] create /myapp/database ""

[zk: localhost:2181(CONNECTED) 3] create /myapp/database/url "db.example.com"

[zk: localhost:2181(CONNECTED) 4] create /myapp/database/user "rob"



## Templates confd


Create the confdir

The confdir is where template resource configs and source templates are stored.

sudo mkdir -p /etc/confd/{conf.d,templates}

Create a template resource config

Template resources are defined in TOML config files under the confdir.


/etc/confd/conf.d/myconfig.toml

[template]

src = "myconfig.conf.tmpl"

dest = "/tmp/myconfig.conf"

keys = [

    "/myapp/database/url",

    "/myapp/database/user",

]

Create the source template

Source templates are Golang text templates.

/etc/confd/templates/myconfig.conf.tmpl

[myconfig]

database_url = {{getv "/myapp/database/url"}}

database_user = {{getv "/myapp/database/user"}}




Process the template

confd supports two modes of operation daemon and onetime. In daemon mode confd polls a backend for changes and updates destination configuration files if necessary.


etcd


confd -onetime -backend etcd -node http://127.0.0.1:2379


zookeeper


confd -onetime -backend zookeeper -node zoo1



refs.:


https://github.com/kelseyhightower/confd/blob/master/docs/quick-start-guide.md



