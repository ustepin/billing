billing:
	docker compose -f ./deploy/docker-compose.yml build --no-cache
	docker compose -f ./deploy/docker-compose.yml up -d

migrate:
	migrate create -seq -digits 3 -dir ./migrations -ext sql $(name)

test:
	go test -count=1 -coverprofile=cover.out ./...
	go tool cover -html=cover.out
	rm cover.out

mocks: 
	mockgen -source=./internal/app/biling/biling.go -destination=./internal/mocks/biling/biling.go