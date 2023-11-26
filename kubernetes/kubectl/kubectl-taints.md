## Get Taints from node

~~~
kubectl describe node <NODE_NAME> | grep Taint
~~~

## Add a taint to node

~~~
kubectl taint nodes <NODE_NAME> <KEY>=<VALUE>:[NoSchedule|PreferNoSchedule|NoExecute]
~~~

## Remove a taint from node

~~~
kubectl taint nodes <NODE_NAME> <TAINT_NAME>-
~~~
