## List ReplicaSet

~~~
kubectl get replicaset
~~~

## Get ReplicaSet info

~~~
kubectl decribe replicaset <REPLICASET_NAME>
~~~

## Create ReplicaSet

~~~
kubectl create -f <FILE_NAME>
~~~

## Update ReplicaSet

~~~
kubectl replace -f <FILE_NAME>
~~~

## Edit a created ReplicaSet

~~~
kubectl edit replicaset <REPLICASET_NAME>
~~~

## Scale/add/remove replicas

~~~
kubectl scale --replicas=X replicaset <REPLICASET_NAME>
~~~

## Delete ReplicaSet with pods

~~~
kubectl delete replicaset <REPLICASET_NAME>
~~~

## Generate yaml file from ReplicaSet

~~~
kubectl get replicaset <REPLICASET_NAME> -o yaml > <FILE_NAME>.yaml
~~~
