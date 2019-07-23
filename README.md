# Shippy
[Golang 微服务系列教程](https://ewanvalentine.io/microservices-in-golang-part-1/)代码实现

参照Ewan Valentine的系列博客，针对kubernetes和docker部署，整理了其源码(Google Cloud和CircleCI因不在研究范围，未使用)

## Table of Contents

- [Install Docker](#install-docker)
- [Install Kubernetes](#install-kubernetes)
- [Deploy Services](#deploy-services)

## Install Docker

Mac: [Install Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)

Windows: [Install Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/install/)

## Install Kubernetes

### Install kubectl

kubectl，是Kubernetes的命令行工具。

Kubernetes官网提供了各种环境kubectl的安装方法：
[`https://kubernetes.io/docs/tasks/tools/install-kubectl/`](
https://kubernetes.io/docs/tasks/tools/install-kubectl/)

### Kubernetes

在Docker Desktop for Mac 17.12 Edge(Docker Desktop for Windows 18.02 Edge (win50) or 18.06 Stable (win70))及更高版本中，包含一个运行在Mac上的独立Kubernetes服务器，可以在Kubernetes上测试部署Docker工作负载。因此我使用了docker中自带的kubernetes, 如下图:

<img src="https://raw.githubusercontent.com/sibosendteam/shippy/master/images/QQ20190722-170238%402x.png" width=600 alt="docker enable kubernentes">

但是，Kubernetes需要的镜像从官方下载需要翻墙，可以先设置阿里云镜像加速地址，或者手动拉取Kubernetes需要的镜像后，再打开docker的kubernetes功能。

镜像加速：

<img src="https://raw.githubusercontent.com/sibosendteam/shippy/master/images/QQ20190722-174035@2x.png" width=600 alt="镜像加速">

手动拉取镜像：
https://www.jianshu.com/p/e5c056baa8ab

### Kubernetes Dashboard(可选) 

[Kubernetes Dashboard](https://github.com/kubernetes/dashboard)是Kubernetes的Web用户界面，允许用户管理集群中运行的应用程序并对其进行故障排除，以及管理集群本身。

```sh
$ kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml

$ kubectl proxy
```
Dashboard access:

[`http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/`](
http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/).

以下为我的docker+kubernetes版本:

<img src="https://raw.githubusercontent.com/sibosendteam/shippy/master/images/QQ20190722-170238@2x.png" width=600 alt="docker+kubernetes">

当然，使用[Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)也可以。

## Deploy Services

   - [Deploy Mongodb](https://github.com/sibosendteam/shippy/blob/master/infrastructure/mongodb-README.md)
   - [Deploy Postgresql](https://github.com/sibosendteam/shippy/blob/master/infrastructure/postgres-README.md)
   - [Deploy Vessel Service](https://github.com/sibosendteam/shippy/tree/master/vessel-service)
   - [Deploy User Service](https://github.com/sibosendteam/shippy/tree/master/user-service)
   - [Deploy Email Service](https://github.com/sibosendteam/shippy/tree/master/email-service)
   - [Deploy Consignment Service](https://github.com/sibosendteam/shippy/tree/master/consignment-service)
   - [Deploy Web UI](https://github.com/sibosendteam/shippy/tree/master/ui-service)
   - [Deploy Micro](https://github.com/sibosendteam/shippy/tree/master/micro)