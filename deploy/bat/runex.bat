@echo off

if "%1"=="basic" goto basic_launch
if "%1"=="scaled" goto scaled_launch
if "%1"=="cloudy" goto cloudy_launch

echo Simple Kubernetes Microservice Example
echo
echo usage: runex [option]
echo where option: 
echo  basic - runs DEV (1 pod), IST (3 pods), and PT (5 pod) instances for v1.0.0, v1.5.0, and v2.2.2 without sizing hints
echo  scaled - runs DEV (1 pod), IST (3 pods), and PT (5 pod) instances for v1.0.0, v1.5.0, and v2.2.2 with sizing hints
echo  cloudy - creates a cloudy-day test instance for PT on v2.2.2 sized for delta
echo  

goto exit

:basic_launch
kubectl run ms-demo-pt-rnd1 --replicas=5 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=PT,build=v2.2.2" --port=80 %2
kubectl expose deployment ms-demo-pt-rnd1 --type=LoadBalancer --name=ms-demo-pt-rnd1 %2
kubectl run ms-demo-pt-rnd2 --replicas=5 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=PT,build=v1.5.0" --port=80 %2
kubectl expose deployment ms-demo-pt-rnd2 --type=LoadBalancer --name=ms-demo-pt-rnd2 %2
kubectl run ms-demo-pt-rnd3 --replicas=5 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=PT,build=v1.0.0" --port=80 %2
kubectl expose deployment ms-demo-pt-rnd3 --type=LoadBalancer --name=ms-demo-pt-rnd3 %2

kubectl run ms-demo-ist-rnd1 --replicas=3 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=IST,build=v2.2.2" --port=80 %2
kubectl expose deployment ms-demo-ist-rnd1 --type=LoadBalancer --name=ms-demo-ist-rnd1 %2
kubectl run ms-demo-ist-rnd2 --replicas=3 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=IST,build=v1.5.0" --port=80 %2
kubectl expose deployment ms-demo-ist-rnd2 --type=LoadBalancer --name=ms-demo-ist-rnd2 %2
kubectl run ms-demo-ist-rnd3 --replicas=3 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=IST,build=v1.0.0" --port=80 %2
kubectl expose deployment ms-demo-ist-rnd3 --type=LoadBalancer --name=ms-demo-ist-rnd3 %2


kubectl run ms-demo-dev-rnd1 --replicas=1 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=DEV,build=v2.2.2" --port=80 %2
kubectl expose deployment ms-demo-dev-rnd1 --type=LoadBalancer --name=ms-demo-dev-rnd1 %2
kubectl run ms-demo-dev-rnd2 --replicas=1 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=DEV,build=v1.5.0" --port=80 %2
kubectl expose deployment ms-demo-dev-rnd2 --type=LoadBalancer --name=ms-demo-dev-rnd2 %2
kubectl run ms-demo-dev-rnd3 --replicas=1 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=DEV,build=v1.0.0" --port=80 %2
kubectl expose deployment ms-demo-dev-rnd3 --type=LoadBalancer --name=ms-demo-dev-rnd3 %2

goto exit

:scaled_launch
kubectl run ms-demo-pt-rnd1a --replicas=5 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=PT,build=v2.2.2" --port=80 --limits="cpu=100m,memory=512M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-pt-rnd1a --type=LoadBalancer --name=ms-demo-pt-rnd1a %2
kubectl run ms-demo-pt-rnd2a --replicas=5 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=PT,build=v1.5.0" --port=80 --limits="cpu=100m,memory=512M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-pt-rnd2a --type=LoadBalancer --name=ms-demo-pt-rnd2a %2
kubectl run ms-demo-pt-rnd3a --replicas=5 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=PT,build=v1.0.0" --port=80 --limits="cpu=100m,memory=512M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-pt-rnd3a --type=LoadBalancer --name=ms-demo-pt-rnd3a %2

kubectl run ms-demo-ist-rnd1a --replicas=3 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=IST,build=v2.2.2" --port=80 --limits="cpu=100m,memory=512M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-ist-rnd1a --type=LoadBalancer --name=ms-demo-ist-rnd1a %2
kubectl run ms-demo-ist-rnd2a --replicas=3 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=IST,build=v1.5.0" --port=80 --limits="cpu=100m,memory=512M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-ist-rnd2 --type=LoadBalancer --name=ms-demo-ist-rnd2a %2
kubectl run ms-demo-ist-rnd3a --replicas=3 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=IST,build=v1.0.0" --port=80 --limits="cpu=100m,memory=512M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-ist-rnd3a --type=LoadBalancer --name=ms-demo-ist-rnd3a %2


kubectl run ms-demo-dev-rnd1a --replicas=1 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=DEV,build=v2.2.2" --port=80 --limits="cpu=100m,memory=512M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-dev-rnd1a --type=LoadBalancer --name=ms-demo-dev-rnd1a %2
kubectl run ms-demo-dev-rnd2a --replicas=1 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=DEV,build=v1.5.0" --port=80 --limits="cpu=100m,memory=512M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-dev-rnd2a --type=LoadBalancer --name=ms-demo-dev-rnd2a %2
kubectl run ms-demo-dev-rnd3a --replicas=1 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=DEV,build=v1.0.0" --port=80 --limits="cpu=100m,memory=512M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-dev-rnd3a --type=LoadBalancer --name=ms-demo-dev-rnd3a %2

goto exit

:cloudy_launch
kubectl run ms-demo-pt-cloudy --replicas=5 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=RT,build=v2.2.2" --port=80 --limits="cpu=500m,memory=2048M" --requests="cpu=100m,memory=512M" %2
kubectl expose deployment ms-demo-pt-cloudy --type=LoadBalancer --name=ms-demo-pt-cloudy %2


goto exit
:exit




