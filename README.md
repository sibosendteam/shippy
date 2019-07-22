# Shippy
[Golang 微服务系列教程](https://ewanvalentine.io/microservices-in-golang-part-1/)代码实现

参照Ewan Valentine的系列博客，针对kubernetes和docker部署，整理了其源码(Google Cloud和CircleCI因不在研究范围，未使用)

## Table of Contents

- [Install Docker](install-docker)
- [Install Kubernetes](install-kubernetes)

## Install Docker

Mac: [Install Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)

Windows: [Install Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/install/)

## Install Kubernetes

在Docker Desktop for Mac 17.12 Edge(Docker Desktop for Windows 18.02 Edge (win50) or 18.06 Stable (win70))及更高版本中，包含一个运行在Mac上的独立Kubernetes服务器，可以在Kubernetes上测试部署Docker工作负载。因此我使用了docker中自带的kubernetes, 如下图:

![docker enable kubernentes](https://github.com/sibosendteam/shippy/images/QQ20190722-173827@2x.png)

但是，Kubernetes需要的镜像从官方下载需要翻墙，可以先设置阿里云镜像加速地址，或者手动拉取Kubernetes需要的镜像后，再打开docker的kubernetes功能。

镜像加速：

![镜像加速](https://github.com/sibosendteam/shippy/images/QQ20190722-174035@2x.png)

手动拉取镜像：
https://www.jianshu.com/p/e5c056baa8ab

最后安装启动Kubernetes Dashboard (可选) 

[Kubernetes Dashboard](https://github.com/kubernetes/dashboard)

以下为我的docker+kubernetes版本:

![docker+kubernetes](https://github.com/sibosendteam/shippy/images/QQ20190722-170238@2x.png)

当然，使用[Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)也可以。

