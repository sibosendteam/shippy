# shippy/user-service

user-service微服务，实现了注册登录功能，并使用了JWT验证，postgresql数据库保存用户信息。

与数据库交互部分使用了[Gorm](https://github.com/jinzhu/gorm)。

部署到Kubernetes中：

Step 1:

编译并创建 Image: sibosend/user-service 到本地docker环境

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

创建user服务

```sh
$ kubectl apply -f ./deployments/service.yml
```