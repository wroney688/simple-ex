
kubectl run i1 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=dev,build=v1.0.0" --expose=true
kubectl run i2 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=dev,build=v1.0.0" --expose=true
kubectl run i3 --image=docker.io/wroney/ms-demo:v1.0.0 --labels="app=ms-demo,env=dev,build=v1.0.0" --expose=true
kubectl run i4 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=dev,build=v1.5.0" --expose=true
kubectl run i5 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=dev,build=v1.5.0" --expose=true
kubectl run i6 --image=docker.io/wroney/ms-demo:v1.5.0 --labels="app=ms-demo,env=dev,build=v1.5.0" --expose=true
kubectl run i7 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=dev,build=v2.2.2" --expose=true
kubectl run i8 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=dev,build=v2.2.2" --expose=true
kubectl run i9 --image=docker.io/wroney/ms-demo:v2.2.2 --labels="app=ms-demo,env=dev,build=v2.2.2" --expose=true

