## Get Labels from node

~~~
kubectl describe node <NODE_NAME> | grep Label -A 10
~~~

## Add a label to node

~~~
kubectl label nodes <NODE_NAME> <KEY>=<VALUE>
~~~
