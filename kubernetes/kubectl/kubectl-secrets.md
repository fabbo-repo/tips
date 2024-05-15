## List secret

~~~
kubectl get secrets
~~~

## Describe secret

~~~
kubectl describe secrets
~~~

## Create secret from arguments

~~~
kubectl create secret generic <SECRET_NAME> --from-literal=<KEY>=<VALUE>
~~~

## Create secret from file

~~~
kubectl create secret generic <SECRET_NAME> --from-file=<FILE_PATH>
~~~

## Apply Secrets from file

~~~
kubectl create -f <FILE_PATH>
~~~

# Decode a secret

~~~
echo -n 'VALUE_IN_B64' | base64 --decode
~~~
