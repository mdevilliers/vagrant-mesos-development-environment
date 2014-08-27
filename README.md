vagrant-mesos-development-environment
========================================

Simple vagrant script for creating a development environment for mesos development.

Uses the ubuntu/trusty64 box (which you may already have)

Urls
----

Mesos : http://mesos-dev:5050/

Marathon : http://mesos-dev:8080/


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


