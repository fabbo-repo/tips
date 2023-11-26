## List Services

~~~
kubectl get services
~~~

## Get Service Info

~~~
kubectl describe service kubernetes
~~~

## Create Service manifest

~~~
kubectl create service --node-port=<NODE_PORT> --tcp=<PORT>:<TARGET_PORT> --dry-run=client -o=yaml <TYPE> <SERVICE_NAME> > service.yaml
~~~
