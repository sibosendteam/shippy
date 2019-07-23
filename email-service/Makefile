build:
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo
	docker build -t sibosend/email-service .

run:
	docker run --net="host" \
		-e MICRO_SERVER_ADDRESS=:50054 \
		-e MICRO_REGISTRY=mdns \
		sibosend/email-service

deploy:
	sed "s/{{ UPDATED_AT }}/$(shell date)/g" ./deployments/deployment.tmpl > ./deployments/deployment.yml
	kubectl apply -f ./deployments/deployment.yml