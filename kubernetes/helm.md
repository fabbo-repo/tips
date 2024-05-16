## Install helm package into kubernetes

~~~
helm install <PACKAGE_NAME> <PACKAGE_DIR> --values <VALUES_FILE>
~~~

## Upgrade helm package compoments in kubernetes

~~~
helm upgrade <PACKAGE_NAME> <PACKAGE_DIR> --values <VALUES_FILE>
~~~

## Rollback helm package compoments in kubernetes

~~~
helm rollback <PACKAGE_NAME> --values <VALUES_FILE>
~~~

## Uninstall helm package from kubernetes

~~~
helm uninstall <PACKAGE_NAME> --values <VALUES_FILE>
~~~

## Add a helm repo

~~~
helm repo add <PACKAGE_NAME> <PACKAGE_URL>
~~~

## Download a helm repo

~~~
helm pull --untar <PACKAGE>
~~~
