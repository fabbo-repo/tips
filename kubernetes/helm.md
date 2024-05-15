## Install helm package into kubernetes

~~~
helm install <PACKAGE_DIR> --values <VALUES_FILE>
~~~

## Upgrade helm package compoments in kubernetes

~~~
helm upgrade <PACKAGE_DIR> --values <VALUES_FILE>
~~~

## Rollback helm package compoments in kubernetes

~~~
helm rollback <PACKAGE_DIR> --values <VALUES_FILE>
~~~

## Uninstall helm package from kubernetes

~~~
helm uninstall <PACKAGE_DIR> --values <VALUES_FILE>
~~~
