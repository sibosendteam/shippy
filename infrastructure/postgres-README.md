# Postgresql

user-service，使用postgresql数据库保存用户信息，包括用户注册/登录等。

postgresql也部署为一个微服务使用：

- deployments/postgres-deployment.yml: 部署postgresql实例
- deployments/postgres-service.yml: 部署postgresql服务

Step 1:

```sh
$ kubectl apply -f ./deployments/postgres-deployment.yml
```

Step 2:

```sh
$ kubectl apply -f ./deployments/postgres-service.yml
```

Kubernetes Concepts: 
[`https://kubernetes.io/docs/concepts/`](https://kubernetes.io/docs/concepts/).