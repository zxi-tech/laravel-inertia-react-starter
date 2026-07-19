up:
	docker compose up -d --build

down:
	docker compose down

restart:
	docker compose down
	docker compose up -d

shell:
	docker compose exec app bash

composer:
	docker compose exec app composer install

npm:
	docker compose exec app npm install

dev:
	docker compose exec vite npm run dev

build:
	docker compose exec app npm run build

migrate:
	docker compose exec app php artisan migrate

fresh:
	docker compose exec app php artisan migrate:fresh --seed

queue:
	docker compose exec queue php artisan queue:work

schedule:
	docker compose exec scheduler php artisan schedule:work

logs:
	docker compose logs -f