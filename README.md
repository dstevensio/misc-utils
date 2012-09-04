misc-utils
==========

Various scripts and examples for keeping things running and making life easier

# Check yo'self before you wreck yo'self

## checkapp.sh

Checks if your node.js app is running, starts it if it's not.
In this form it's only useful if you only have 1 running on the machine at a time, but a good starting point to expand out to cover multiple scripts.

nb: requires `forever` to be installed
```
  $ npm install -g forever
```

## checknginx.sh

Checks if your nginx instance is running, starts it if it's not.

## checkrdb.sh

Checks if your redis-server instance is running, starts it if it's not.
In this form it's only useful if you only have 1 running on the machine at a time, but a good starting point to expand out to cover multiple instances.

## crontab-example.txt

An example crontab entry to run each of the above scripts every minute.