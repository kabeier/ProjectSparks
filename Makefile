dev:
	npm run dev

build:
	npm run build

preview:
	npm run preview

lint:
	npm run lint

format:
	npm run format

typecheck:
	npm run typecheck

test:
	npm run test:run

e2e:
	docker compose -f docker-compose.e2e.yml run --rm e2e

check: format lint typecheck test build e2e

docker-dev:
	docker compose up --build

docker-prod:
	docker compose -f docker-compose.yml up --build

docker-down:
	docker compose down
