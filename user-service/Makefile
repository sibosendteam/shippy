build:
	protoc -I/usr/local/include -I. \
		--go_out=plugins=micro:. \
		proto/auth/auth.proto
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo
	docker build -t sibosend/user-service .

run:
	docker run --net="host" \
		-p 50051 \
		-e DB_HOST=localhost \
		-e DB_PASS=password \
		-e DB_USER=postgres \
		-e MICRO_SERVER_ADDRESS=:50051 \
		-e MICRO_REGISTRY=mdns \
		sibosend/user-service

deploy:
	sed "s/{{ UPDATED_AT }}/$(shell date)/g" ./deployments/deployment.tmpl > ./deployments/deployment.yml
	kubectl apply -f ./deployments/deployment.yml