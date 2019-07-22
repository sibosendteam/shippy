module sibosend-shippy/consignment-service

go 1.12

replace (
	github.com/hashicorp/consul => github.com/hashicorp/consul v1.5.2
	sibosend-shippy/user-service => ../user-service
	sibosend-shippy/vessel-service => ../vessel-service
)

require (
	github.com/golang/protobuf v1.3.2
	github.com/micro/go-micro v1.7.0
	github.com/micro/kubernetes v0.7.0
	github.com/openzipkin/zipkin-go v0.1.6 // indirect
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7
	gopkg.in/mgo.v2 v2.0.0-20180705113604-9856a29383ce
	sibosend-shippy/user-service v0.0.0-00010101000000-000000000000
	sibosend-shippy/vessel-service v0.0.0-00010101000000-000000000000
)
