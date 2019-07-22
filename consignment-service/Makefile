build:
	protoc -I. --go_out=plugins=micro:. \
		proto/consignment/consignment.proto
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo
	docker build -t sibosend/consignment-service .

run:
	docker run -d --net="host" \
		-p 50052 \
		-e MICRO_SERVER_ADDRESS=:50052 \
		-e MICRO_REGISTRY=mdns \
		-e DISABLE_AUTH=true \
		consignment-service

deploy:
	sed "s/{{ UPDATED_AT }}/$(shell date)/g" ./deployments/deployment.tmpl > ./deployments/deployment.yml
	kubectl replace -f ./deployments/deployment.yml
