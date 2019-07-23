# shippy/micro

micro，是在Kubernete上创建micro服务，进行服务发现和负载平衡。micro直接与Kubernete强大的DNS、网络、负载平衡和服务发现交互。

部署到Kubernetes：

Step 1:

编译并创建 Image: sibosend/micro 到本地docker环境

```sh
$ make build
```

Step 2:

部署micro实例

```sh
$ make deploy
```

OR

```sh
$ kubectl apply -f ./deployments/deployment.yml
```

Step 3:

创建micro服务

```sh
$ kubectl apply -f ./deployments/service.yml
```

在micro服务中，使用的是一个LoadBalancer类型，提供了public的IP地址和端口。

Test:

```sh
$ curl localhost:8002/rpc -XPOST -d '{
    "request": { 
        "name": "test", 
        "capacity": 200, 
        "max_weight": 100000, 
        "available": true 
    },
    "method": "VesselService.Create",
    "service": "vessel"
}' -H 'Content-Type: application/json'
```

Web Client:

<img src="https://raw.githubusercontent.com/sibosendteam/shippy/master/images/QQ20190723-143330@2x.png" alt="index">