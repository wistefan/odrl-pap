.DEFAULT_GOAL := help
.PHONY: build
build:
	@docker build -t odrl-pap:latest .

.PHONY: start
start:
	@echo "Creating Docker network..."
	@docker network create odrl-network || true
	@echo "Stopping existing containers..."
	@docker rm -f opa-postgres || true
	@docker rm -f opa || true
	@docker rm -f odrl-pap || true
	@echo "Starting PostgreSQL database..."
	@docker run -d --name opa-postgres \
		--network odrl-network \
		-p 5432:5432 \
		-e POSTGRES_DB=pap \
		-e POSTGRES_USER=postgres \
		-e POSTGRES_PASSWORD=postgres \
		postgres:latest
	@echo "Waiting for PostgreSQL to be ready..."
	@sleep 5
	@echo "Starting OPA..."
	@docker run -d --name opa \
		--network odrl-network \
		-p 8181:8181 \
		-v $(PWD)/src/test/resources/opa-docker.yaml:/opa.yaml \
		openpolicyagent/opa:latest run --server --log-level debug --addr=0.0.0.0:8181 -c /opa.yaml
	@echo "Starting ODRL-PAP application..."
	@docker run -d --name odrl-pap \
		--network odrl-network \
		-p 8081:8080 \
		-e QUARKUS_DATASOURCE_JDBC_URL=jdbc:postgresql://opa-postgres:5432/pap \
		-e QUARKUS_DATASOURCE_USERNAME=postgres \
		-e QUARKUS_DATASOURCE_PASSWORD=postgres \
		-e QUARKUS_REST_CLIENT_OPA_YAML_URL=http://opa:8181 \
		odrl-pap:latest
	@echo "All services started successfully!"
	@echo "ODRL-PAP: http://localhost:8081"
	@echo "OPA: http://localhost:8181"
	@echo "PostgreSQL: localhost:5432"

.PHONY: logs
logs:
	@docker logs -f odrl-pap

.PHONY: status
status:
	@echo "Container status:"
	@docker ps -f name=opa-postgres -f name=opa -f name=odrl-pap --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"

.PHONY: stop
stop:
	@echo "Stopping all containers..."
	@docker rm -f opa-postgres opa odrl-pap || true
	@echo "All containers stopped."

.PHONY: clean
clean: stop
	@echo "Cleaning up images and network..."
	@docker rmi odrl-pap:latest || true
	@docker network rm odrl-network || true
	@echo "Cleanup completed."

.PHONY: restart
restart: stop start

.PHONY: test
test:
	@echo "Running tests..."
	@./scripts/test_demo_policies.sh

.PHONY: help
help:
	@echo "Available commands:"
	@echo "  build    - Build the ODRL-PAP Docker image"
	@echo "  start    - Start all services (PostgreSQL, OPA, ODRL-PAP)"
	@echo "  stop     - Stop all services"
	@echo "  restart  - Stop and start all services"
	@echo "  logs     - Follow ODRL-PAP application logs"
	@echo "  status   - Show container status"
	@echo "  clean    - Remove images and network"
	@echo "  test     - Run tests"
	@echo "  help     - Show this help message"
