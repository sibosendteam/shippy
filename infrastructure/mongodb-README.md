# MongoDB

consignment-service和vessel-service中使用MongoDB保存Consignment和Vessel数据。MongoDB本身也部署为一个微服务：

- deployments/mongodb-deployment.yml: 部署mongodb实例
- deployments/mongodb-service.yml: 部署mongodb服务

Step 1:

```sh
$ kubectl apply -f ./deployments/mongodb-deployment.yml
```

Step 2:

```sh
$ kubectl apply -f ./deployments/mongodb-service.yml
```

Remark:

在[Ewan Valentine 关于Kubernetes的博客](https://ewanvalentine.io/microservices-in-golang-part-8/)中，MongoDB使用的持久化存储卷是[kubernetes.io/gce-pd],是谷歌公有云提供的永久磁盘volume。
我们没有使用公有云，因此将其存储卷改为了默认的HostPath，即在pod上挂载宿主机的文件或目录


Kubernetes Concepts: 
[`https://kubernetes.io/docs/concepts/`](https://kubernetes.io/docs/concepts/).