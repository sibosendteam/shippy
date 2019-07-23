# shippy/ui-service

ui-service，是shippy的web客户端界面，是用[Create React App](https://github.com/facebookincubator/create-react-app)创建的。

此模块的详细逻辑请参考：[`https://github.com/EwanValentine/shippy-ui`](https://github.com/EwanValentine/shippy-ui)

部署到Kubernetes中：

Step 1:

编译并创建 Image: sibosend/ui-service 到本地docker环境

```sh
$ make build
```

Step 2:

部署ui实例

```sh
$ make deploy
```

OR

```sh
$ kubectl apply -f ./deployments/deployment.yml
```

Step 3:

创建ui服务

```sh
$ kubectl apply -f ./deployments/service.yml
```
ui服务是在80端口上的负载均衡器(LoadBalancer),是用户与各个服务交互的方式。通过宿主机的80端口，即可访问Web Client。

Kubernetes Dashboard:

<img src="https://raw.githubusercontent.com/sibosendteam/shippy/master/images/QQ20190723-122548@2x.png" alt="dashboard deployments and containers">

Web Client(http://localhost):

<img src="https://raw.githubusercontent.com/sibosendteam/shippy/master/images/QQ20190723-122826@2x.png" alt="Web client">