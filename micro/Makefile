build:
	GOOS=linux GOARCH=amd64 go build
	docker build -t sibosend/micro .

run:
	docker run sibosend/micro api --handler=rpc --namespace=shippy --cors-allowed-origins=*

deploy:
	sed "s/{{ UPDATED_AT }}/$(shell date)/g" ./deployments/deployment.tmpl > ./deployments/deployment.yml
	kubectl apply -f ./deployments/deployment.yml