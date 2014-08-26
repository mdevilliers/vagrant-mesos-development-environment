vagrant-mesos-development-environment
========================================

Simple vagrant script for creating a development environment for mesos development.

Uses the hashicorp/precise64 box (which you may already have)

Urls
----

Mesos : http://192.168.0.30:5050/

Marathon : http://192.168.0.30:8080/


To use
------

```
vagrant plugin install vagrant-hostmanager
vagrant up
```

```
vagrant halt
```

```
vagrant up --no-provision
```


