# shippy/consignment-service

consignment-service微服务，主要记录当前运送物以及对应的货船。
与vessel-service和user-service都有交互。

部署到Kubernetes中：

Step 1:

编译并创建 Image: sibosend/consignment-service 到本地docker环境

```sh
$ make build
```

Step 2:

部署user实例

```sh
$ make deploy
```

OR

```sh
$ kubectl apply -f ./deployments/deployment.yml
```

Step 3:

创建consignment服务

```sh
$ kubectl apply -f ./deployments/service.yml
```