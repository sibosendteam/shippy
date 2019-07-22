build:
	protoc -I. --go_out=plugins=micro:. \
    proto/vessel/vessel.proto
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo
	docker build -t sibosend/vessel-service .

run:
	docker run -d --net="host" \
		-e MICRO_SERVER_ADDRESS=:50053 \
		-e MICRO_REGISTRY=mdns \
		vessel-service

deploy:
	sed "s/{{ UPDATED_AT }}/$(shell date)/g" ./deployments/deployment.tmpl > ./deployments/deployment.yml
	kubectl apply -f ./deployments/deployment.yml
