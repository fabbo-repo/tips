## Setup config file path

~~~
export KUBECONFIG=$HOME/.kube/<FILE_NAME>.yaml
~~~

## Get configuration info

~~~
kubectl cluster-info
~~~

## Get relevant info for debugging and diagnosis

~~~
kubectl cluster-info dump
~~~

## Add cluester config

~~~
kubectl config --kubeconfig=<CONFIG_NAME> set-cluster <SERVER_NICKNAME> --server=<SERVER_URL> [--certificate-authority=fake-ca-file|--insecure-skip-tls-verify]
~~~

## List all cluster contexts

~~~
kubectl config get-contexts -o=name
~~~
