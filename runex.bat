
kubectl run i1 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=dev,build=v1.0.0" --expose=true --port=80
kubectl run i2 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=IST,build=v1.0.0" --expose=true --port=80
kubectl run i3 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=PT,build=v1.0.0" --expose=true --port=80
kubectl run i4 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=dev,build=v1.5.0" --expose=true --port=80
kubectl run i5 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=IST,build=v1.5.0" --expose=true --port=80
kubectl run i6 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=PT,build=v1.5.0" --expose=true --port=80
kubectl run i7 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=dev,build=v2.2.2" --expose=true --port=80
kubectl run i8 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=IST,build=v2.2.2" --expose=true --port=80
kubectl run i9 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=PT,build=v2.2.2" --expose=true --port=80

