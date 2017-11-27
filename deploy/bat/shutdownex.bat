@echo off

if "%1"=="basic" goto basic_stop
if "%1"=="scaled" goto scaled_stop
if "%1"=="cloudy" goto cloudy_stop

echo Simple Kubernetes Microservice Example
echo
echo usage: shutdownex [option]
echo where option: 
echo  basic - kills basic group
echo  scaled - kills scaled group
echo  cloudy - kills cloudy group
echo  
goto exit

:basic_stop
kubectl delete service ms-demo-pt-rnd1 ms-demo-pt-rnd2 ms-demo-pt-rnd3  %2
kubectl delete service ms-demo-ist-rnd1 ms-demo-ist-rnd2 ms-demo-ist-rnd3  %2
kubectl delete service ms-demo-dev-rnd1 ms-demo-dev-rnd2 ms-demo-dev-rnd3  %2
kubectl delete deployment ms-demo-pt-rnd1 ms-demo-pt-rnd2 ms-demo-pt-rnd3  %2
kubectl delete deployment ms-demo-ist-rnd1 ms-demo-ist-rnd2 ms-demo-ist-rnd3  %2
kubectl delete deployment ms-demo-dev-rnd1 ms-demo-dev-rnd2 ms-demo-dev-rnd3  %2
goto exit

:scaled_stop
kubectl delete service ms-demo-pt-rnd1a ms-demo-pt-rnd2a ms-demo-pt-rnd3a  %2
kubectl delete service ms-demo-ist-rnd1a ms-demo-ist-rnd2a ms-demo-ist-rnd3a  %2
kubectl delete service ms-demo-dev-rnd1a ms-demo-dev-rnd2a ms-demo-dev-rnd3a  %2
kubectl delete deployment ms-demo-pt-rnd1a ms-demo-pt-rnd2a ms-demo-pt-rnd3a  %2
kubectl delete deployment ms-demo-ist-rnd1a ms-demo-ist-rnd2a ms-demo-ist-rnd3a  %2
kubectl delete deployment ms-demo-dev-rnd1a ms-demo-dev-rnd2a ms-demo-dev-rnd3a  %2
goto exit

:cloudy_stop
kubectl delete service ms-demo-pt-cloudy %2
kubectl delete deployment ms-demo-pt-cloudy %2
goto exit

:exit