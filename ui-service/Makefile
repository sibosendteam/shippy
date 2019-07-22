.PHONY: all test clean build docker

build:
	npm run build
	docker build -t sibosend/ui-service .

deploy:
	sed "s/{{ UPDATED_AT }}/$(shell date)/g" ./deployments/deployment.tmpl > ./deployments/deployment.yml
	kubectl apply -f ./deployments/deployment.yml
