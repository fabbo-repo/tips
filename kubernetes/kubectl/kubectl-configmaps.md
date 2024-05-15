## List configmaps

~~~
kubectl get configmaps
~~~

## Describe configmaps

~~~
kubectl describe configmaps
~~~

## Create Configmap from arguments

~~~
kubectl create configmap <CONFIG_NAME> --from-literal=<KEY>=<VALUE>
~~~

## Create Configmap from file

~~~
kubectl create configmap <CONFIG_NAME> --from-file=<FILE_PATH>
~~~
