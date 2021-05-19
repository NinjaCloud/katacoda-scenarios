A Kubernetes Pod is a group of one or more Containers, tied together for the purposes of administration and networking. The Pod in this tutorial has only one Container. A Kubernetes Deployment checks on the health of your Pod and restarts the Pod's Container if it terminates. Deployments are the recommended way to manage the creation and scaling of Pods.

Use the kubectl create command to create a Deployment that manages a Pod. The Pod runs a Container based on the provided Docker image.
<br>
<br>
`kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4`{{execute}}
<br>
View the Deployment:
<br>
`kubectl get deployments`{{execute}}<br>
View the Pod:
`kubectl get pods`{{execute}}<br>