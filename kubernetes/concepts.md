## Kinds

[Docs](https://kubernetes.io/docs/concepts/workloads/controllers/)

### Deployment

Way to specify a change in the actual state to a desired state at a controlled rate (Deployment Controller). It is commonly used for StateLess apps.

[Docs](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)

### ReplicaSet

Used to maintain a stable set of replica Pods running at any given time. It is only recommended when custom update orchestration is required or when any updates are required at all.

### Deployment VS ReplicaSet

| Deployments | ReplicaSet |
| ----------- | ---------- |
| High-level abstractions that manage replica sets. It provides additional features such as rolling updates, rollbacks, and versioning of the application. | A lower-level abstraction that manages the desired number of replicas of a pod. It provides basic scaling and self-healing mechanisms. |
| Deployment manages a template of pods and uses replica sets to ensure that the specified number of replicas of the pod is running. | ReplicaSet only manages the desired number of replicas of a pod. |
| Deployment provides a mechanism for rolling updates and rollbacks of the application, enabling seamless updates and reducing downtime. | Applications must be manually updated or rolled back. |
| It provides versioning of the application, allowing us to manage multiple versions of the same application. It also makes it easy to roll back to a previous version if necessary. | ReplicaSet doesn't provide this feature. |

### StatefulSet

It is the workload API object used to manage stateful applications. Unlike a Deployment, a StatefulSet maintains a sticky identity for each of its Pods. These pods are created from the same spec, but are not interchangeable: each has a persistent identifier that it maintains across any rescheduling.

[Docs](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/)

### DaemonSet

Ensures that all (or some) Nodes run a copy of a Pod. As nodes are added to the cluster, Pods are added to them. As nodes are removed from the cluster, those Pods are garbage collected.

[Docs](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)