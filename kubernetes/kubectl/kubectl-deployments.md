## List Deployments

~~~
kubectl get deployments
~~~

## Create Deployment without file manifest

~~~
kubectl create deployment --image=<IMAGE_NAME> --replicas=X <DEPLOYMENT_NAME>
~~~

## Generate yaml file from ReplicaSet

~~~
kubectl create deployment --image=<IMAGE_NAME> --replicas=X <DEPLOYMENT_NAME> --dry-run=client -o yaml > <FILE_NAME>.yaml
~~~

## Get Deployment data

~~~
kubectl describe deployment <DEPLOYMENT_NAME>
~~~

## Change Deployment image version

~~~
kubectl set image <DEPLOYMENT_NAME> <IMAGE_NAME>=<IMAGE_NAME>:<NEW_IMAGE_VERSION>
~~~

## Get Deployment status

~~~
kubectl rollout status deployment/<DEPLOYMENT_NAME>
~~~

## Get Deployment history

~~~
kubectl rollout history deployment/<DEPLOYMENT_NAME>
~~~

## Rollback Deployment

~~~
kubectl rollout undo deployment/<DEPLOYMENT_NAME>
~~~