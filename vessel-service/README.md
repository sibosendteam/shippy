# shippy/vessel-service

vessel-service，根据consignment的重量、数量寻找合适的vessel。

部署到Kubernetes中：

Step 1:

编译并创建 Image: sibosend/vessel-service 到本地docker环境

```sh
$ make build
```

Step 2:

部署vessel实例

```sh
$ make deploy
```

OR

```sh
$ kubectl apply -f ./deployments/deployment.yml
```

Step 3:

创建vessel服务

```sh
$ kubectl apply -f ./deployments/service.yml
```