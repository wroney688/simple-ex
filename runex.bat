
kubectl run ms-demo-pt-rnd1 --replicas=5 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=PT,build=v2.2.2" --port=80
kubectl expose deployment ms-demo-pt-rnd1 --type=LoadBalancer --name=ms-demo-pt-rnd1
kubectl run ms-demo-pt-rnd2 --replicas=5 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=PT,build=v1.5.0" --port=80
kubectl expose deployment ms-demo-pt-rnd2 --type=LoadBalancer --name=ms-demo-pt-rnd2
kubectl run ms-demo-pt-rnd3 --replicas=5 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=PT,build=v1.0.0" --port=80
kubectl expose deployment ms-demo-pt-rnd3 --type=LoadBalancer --name=ms-demo-pt-rnd3

kubectl run ms-demo-ist-rnd1 --replicas=3 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=IST,build=v2.2.2" --port=80
kubectl expose deployment ms-demo-ist-rnd1 --type=LoadBalancer --name=ms-demo-ist-rnd1
kubectl run ms-demo-ist-rnd2 --replicas=3 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=IST,build=v1.5.0" --port=80
kubectl expose deployment ms-demo-ist-rnd2 --type=LoadBalancer --name=ms-demo-ist-rnd2
kubectl run ms-demo-ist-rnd3 --replicas=3 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=IST,build=v1.0.0" --port=80
kubectl expose deployment ms-demo-ist-rnd3 --type=LoadBalancer --name=ms-demo-ist-rnd3


kubectl run ms-demo-dev-rnd1 --replicas=1 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=DEV,build=v2.2.2" --port=80
kubectl expose deployment ms-demo-dev-rnd1 --type=LoadBalancer --name=ms-demo-dev-rnd1
kubectl run ms-demo-dev-rnd2 --replicas=1 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=DEV,build=v1.5.0" --port=80
kubectl expose deployment ms-demo-dev-rnd2 --type=LoadBalancer --name=ms-demo-dev-rnd2
kubectl run ms-demo-dev-rnd3 --replicas=1 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=DEV,build=v1.0.0" --port=80
kubectl expose deployment ms-demo-dev-rnd3 --type=LoadBalancer --name=ms-demo-dev-rnd3





