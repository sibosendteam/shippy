module sibosend-shippy/user-service

go 1.12

replace github.com/hashicorp/consul => github.com/hashicorp/consul v1.5.2

require (
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/golang/protobuf v1.3.2
	github.com/jinzhu/gorm v1.9.10
	github.com/micro/go-micro v1.7.0
	github.com/micro/kubernetes v0.7.0
	github.com/nats-io/nats-server/v2 v2.0.0 // indirect
	github.com/satori/go.uuid v1.2.0
	golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7
)
