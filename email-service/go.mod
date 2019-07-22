module sibosend-shippy/email-service

go 1.12

replace (
	github.com/hashicorp/consul => github.com/hashicorp/consul v1.5.2
	sibosend-shippy/user-service => ../user-service
)

require (
	github.com/micro/go-micro v1.7.0
	github.com/openzipkin/zipkin-go v0.1.6 // indirect
	sibosend-shippy/user-service v0.0.0-00010101000000-000000000000
)
