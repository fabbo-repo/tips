## Get nodes info

~~~
kubectl get nodes
~~~

## Take down node for maintenance and make it Scheduling disabled

~~~
kubectl drain <NODE_NAME> --ignore-daemonsets
~~~

## Take up a node / make it Schedulable

~~~
kubectl uncordon <NODE_NAME>
~~~

## Make a node unschedulable

~~~
kubectl cordon <NODE_NAME>
~~~
