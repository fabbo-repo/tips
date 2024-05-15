## Create Service Account

~~~
kubectl create serviceaccount <SERVICE_ACCOUNT_NAME>
~~~

## Add role admin

~~~
kubectl create clusterrolebinding <SERVICE_ACCOUNT_NAME> --clusterrole=cluster-admin --serviceaccount=default:<SERVICE_ACCOUNT_NAME>
~~~

## Create token

Create file ``token-secret.yaml``

~~~
apiVersion: v1
kind: Secret
metadata:
  name: <SERVICE_ACCOUNT_NAME>-token-secret
  annotations:
    kubernetes.io/service-account.name: <SERVICE_ACCOUNT_NAME>
type: kubernetes.io/service-account-token
~~~

Apply it

~~~
kubectl apply -f token-secret.yaml
~~~

## Assign token to Service account

~~~
kubectl patch serviceaccount <SERVICE_ACCOUNT_NAME> -p '{"secrets": [{"name": "<SERVICE_ACCOUNT_NAME>-token-secret"}]}'
~~~

## Read token

~~~
kubectl get secret $(kubectl get serviceaccount <SERVICE_ACCOUNT_NAME> -o jsonpath='{.secrets[0].name}') -o jsonpath='{.data.token}' | base64 --decode
~~~
