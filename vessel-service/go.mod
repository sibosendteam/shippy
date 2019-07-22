module sibosend-shippy/vessel-service

go 1.12

replace github.com/hashicorp/consul => github.com/hashicorp/consul v1.5.2

require (
	github.com/golang/protobuf v1.3.2
	github.com/micro/go-micro v1.7.0
	github.com/micro/kubernetes v0.7.0
	github.com/nats-io/nats-server/v2 v2.0.0 // indirect
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7
	gopkg.in/mgo.v2 v2.0.0-20180705113604-9856a29383ce
)
