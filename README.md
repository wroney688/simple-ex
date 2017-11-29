# A simple example of a microservice

This microservice is just an Apache webserver sending out a static page.  

The text on that static page can reflect version #s so that a demonstration
is possible under kubernetes showing use of selectors and the upgrade/rollback
sequence.

kubectl create -f deploy/yaml/make-namespaces.yaml
kubectl create -f deploy/yaml/deploy-perf

kubectl scale --replicas=10 --namespace=ms-demo-perf deploy/<name>
kubectl set image deployment --namespace=ms-demo-perf <name> ms-demo=docker.io/wroney/msdemo:v2.2.2 --record
kubectl rollout history --namespace=ms-demo-perf deploy/<name>

