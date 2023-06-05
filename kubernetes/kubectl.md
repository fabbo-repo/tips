## Get version

~~~
kubectl versiom
~~~

## Get all components info

~~~
kubectl get all
~~~

## Get nodes info

~~~
kubectl get nodes
~~~

## Get services info

~~~
kubectl get services
~~~

## Get pods info

~~~
kubectl get pod
~~~

## Get pod info

~~~
kubectl describe pod <POD_NAME>
~~~

## Get ReplicaSets info

~~~
kubectl get replicaset
~~~

## Get Logs

~~~
kubectl logs <POD_NAME>
~~~

## Create a deployment

~~~
kubectl create deployment <NAME> --image=<IMAGE_NAME>
~~~

## Execute bash in a pod/container

~~~
kubectl exec -it <POD_NAME> -- bin/bash
~~~

## Apply a configuration file

~~~
kubectl apply -f <FILE_NAME>
~~~

## Delete with configuration file

~~~
kubectl delete -f <FILE_NAME>
~~~