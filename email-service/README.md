# shippy/email-service

email-service微服务，只是演示了事件处理过程，并未真正发送邮件，user-service也没有触发事件。

部署到Kubernetes中：

Step 1:

编译并创建 Image: sibosend/email-service 到本地docker环境

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

创建email服务

```sh
$ kubectl apply -f ./deployments/service.yml
```