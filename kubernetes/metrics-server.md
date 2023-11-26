# Metrics Server

## Setup

1. Download repo

~~~
git clone https://github.com/kodekloudhub/kubernetes-metrics-server.git
~~~

2. Launch metrics server

~~~
cd kubernetes-metrics-server/
kubectl create -f .
~~~

## Check nodes status

~~~
kubectl top node
~~~

## Check pods status

~~~
kubectl top pod
~~~
