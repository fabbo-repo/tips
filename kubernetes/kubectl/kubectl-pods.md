## Get pods info

~~~
kubectl get pod
~~~

## List pods in a namespace

~~~
kubectl get pods -n <NAMESPACE>
~~~

## List pods by labels

~~~
kubectl get pods -selector <LABEL_NAME>=<LABEL_VALUE>
~~~

## List pods with full details

~~~
kubectl get pods -o wide
~~~

## Get pod info

~~~
kubectl describe pod <POD_NAME>
~~~

> * Useful to see pull and startup logs, in case image can't be pulled from registry.
> * Useful to see container data inside pods.

## Get Logs

~~~
kubectl logs <POD_NAME>
~~~

## Create/run a pod

~~~
kubectl run <POD_NAME> --image=<POD_IMAGE>
~~~

## Generate yaml manifest file for a pod

~~~
kubectl run <POD_NAME> --image=<POD_IMAGE> --dry-run=client -o yaml > pod.yaml
~~~

> *--dry-run=client* is used to avoid pod creation

## Execute bash in a pod/container

~~~
kubectl exec -it <POD_NAME> -- bin/bash
~~~

## Delete a pod

~~~
kubectl delete pod <POD_NAME>
~~~

## Get user used to execute process inside pod

~~~
kubectl exec <POD_NAME> -- whoami
~~~

## Port forward a pod port to local host

~~~
kubectl port-forward <POD_NAME> <LOCAL_PORT>:<POD_PORT>
~~~
