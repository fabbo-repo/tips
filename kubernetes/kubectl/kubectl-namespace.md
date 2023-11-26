## Create a namespace

~~~
kubectl create namespace <NAMESPACE_NAME>
~~~

## List namespaces

~~~
kubectl get namespaces
~~~

## Change namespace

~~~
kubectl config set-context $(kubectl config current-context) --namespace=<NAMESPACE_NAME>
~~~
