# Laravel 12 React Starter

![Laravel](https://img.shields.io/badge/Laravel-12-FF2D20?logo=laravel&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-8.3-777BB4?logo=php&logoColor=white)
![React](https://img.shields.io/badge/React-19-61DAFB?logo=react&logoColor=black)
![Inertia.js](https://img.shields.io/badge/Inertia.js-9553E9)
![Tailwind CSS](https://img.shields.io/badge/TailwindCSS-4-06B6D4?logo=tailwindcss&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

Starter template Laravel 12 + React + Inertia.js + Tailwind CSS, dengan environment development yang udah dibungkus Docker. Dipakai buat mulai project baru tanpa harus install PHP, Composer, Node, MySQL, Redis, atau Nginx satu-satu di lokal — cukup clone, build container, langsung ngoding.

## Fitur

- Laravel 12 di atas PHP 8.3
- React + Inertia.js
- Tailwind CSS 4
- Vite dengan hot reload
- Nginx sebagai web server
- MySQL 8.4 + phpMyAdmin
- Redis buat cache, session, dan queue
- Mailpit buat nangkep email pas testing
- Docker Compose, queue dan scheduler udah disiapin containernya
- Struktur yang cukup rapi buat dibawa ke production

## Struktur folder

```
laravel12-react-starter/
├── docker/
│   ├── nginx/
│   ├── php/
│   └── supervisor/
├── scripts/
│   ├── shell.ps1
│   ├── up.ps1
│   ├── down.ps1
│   ├── build.ps1
│   ├── logs.ps1
│   └── artisan.ps1
├── src/
├── docker-compose.yml
├── README.md
├── LICENSE
└── .gitignore
```

## Akses layanan

| Service         | URL                   |
| --------------- | --------------------- |
| Laravel         | http://localhost:8000 |
| Vite dev server | http://localhost:5173 |
| phpMyAdmin      | http://localhost:8080 |
| Mailpit         | http://localhost:8025 |

## Port

| Service           | Port |
| ----------------- | ---- |
| Laravel           | 8000 |
| Vite              | 5173 |
| MySQL             | 3307 |
| phpMyAdmin        | 8080 |
| Redis             | 6379 |
| Mailpit SMTP      | 1025 |
| Mailpit dashboard | 8025 |

## Requirement

Cuma butuh Docker Desktop dan Git di lokal. PHP, Composer, Node, MySQL, Redis, dan Nginx semuanya udah jalan di dalam container, jadi gak perlu install manual.

## Instalasi

```bash
git clone https://github.com/USERNAME/laravel12-react-starter.git
cd laravel12-react-starter
```

Build dan jalankan container:

```bash
docker compose up -d --build
```

Masuk ke container app:

```bash
docker compose exec app bash
```

Install dependency:

```bash
composer install
cp .env.example .env
php artisan key:generate
npm install
```

Build asset — pakai `npm run dev` kalau lagi development, atau `npm run build` buat production.

Terakhir jalankan migration:

```bash
php artisan migrate
```

Buka `http://localhost:8000`, harusnya udah jalan.

## Environment default

```dotenv
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laravel
DB_PASSWORD=laravel

CACHE_STORE=redis
QUEUE_CONNECTION=redis
SESSION_DRIVER=redis

REDIS_HOST=redis
REDIS_PORT=6379

MAIL_MAILER=smtp
MAIL_HOST=mailpit
MAIL_PORT=1025
```

## Container

| Container          | Isinya      |
| ------------------ | ----------- |
| laravel_app        | PHP 8.3 FPM |
| laravel_nginx      | Nginx       |
| laravel_mysql      | MySQL 8.4   |
| laravel_phpmyadmin | phpMyAdmin  |
| laravel_redis      | Redis       |
| laravel_mailpit    | Mailpit     |

## Command yang sering dipakai

Docker:

```bash
docker compose exec app bash   # masuk container
docker compose up -d           # start
docker compose up -d --build   # build ulang
docker compose down            # stop
docker compose logs -f         # lihat log
```

Laravel:

```bash
php artisan migrate
php artisan migrate:fresh --seed
php artisan make:controller UserController
php artisan make:model User
php artisan make:migration create_users_table
php artisan make:seeder UserSeeder
php artisan make:factory UserFactory
php artisan optimize:clear
```

Queue:

```bash
php artisan queue:work
php artisan queue:monitor default
```

Scheduler:

```bash
php artisan schedule:work
php artisan schedule:list
```

## Mailpit

Buat nangkep email tanpa kekirim beneran pas development. SMTP-nya jalan di host `mailpit` port `1025`, dashboard-nya bisa dibuka di `http://localhost:8025`.

## Database

Dari dalam container, konek ke host `mysql` port `3306`, database/username/password default-nya sama-sama `laravel`. Kalau mau konek dari komputer host (misal lewat DBeaver atau TablePlus), pakai `localhost` port `3307`.

## Rencana ke depan

Yang udah jalan: Laravel 12, React, Inertia.js, Tailwind, Docker, MySQL, Redis, Mailpit, phpMyAdmin.

Yang masih dipikirin buat ditambahin: testing pakai Pest atau PHPUnit, CI/CD lewat GitHub Actions, Meilisearch, MinIO, Laravel Horizon, Reverb, dan Octane.

## Kontribusi

Pull request kepersilakan. Kalau nemu bug atau ada ide pengembangan, buka Issue dulu sebelum PR biar bisa didiskusikan.

## Lisensi

MIT — detail lengkapnya ada di file `LICENSE`.

## Author

**Timothy Sela**
GitHub: [github.com/zxi-tech](https://github.com/zxi-tech)

---

Kalau project ini kepake, boleh banget kasih star di repo-nya.

# Laravel 12 React Starter

![Laravel](https://img.shields.io/badge/Laravel-12-FF2D20?logo=laravel&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-8.3-777BB4?logo=php&logoColor=white)
![React](https://img.shields.io/badge/React-19-61DAFB?logo=react&logoColor=black)
![Inertia.js](https://img.shields.io/badge/Inertia.js-9553E9)
![Tailwind CSS](https://img.shields.io/badge/TailwindCSS-4-06B6D4?logo=tailwindcss&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?logo=docker&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

A starter template combining Laravel 12, React, Inertia.js, and Tailwind CSS, with the whole development environment wrapped in Docker. The idea is to skip the usual local setup of PHP, Composer, Node, MySQL, Redis, and Nginx — just clone, build the containers, and start coding.

## Features

- Laravel 12 on PHP 8.3
- React + Inertia.js
- Tailwind CSS 4
- Vite with hot reload
- Nginx as the web server
- MySQL 8.4 + phpMyAdmin
- Redis for cache, sessions, and queues
- Mailpit for catching outgoing emails during development
- Docker Compose, with queue and scheduler containers already set up
- A structure that's reasonably close to production-ready

## Project structure

```
laravel12-react-starter/
├── docker/
│   ├── nginx/
│   ├── php/
│   └── supervisor/
├── scripts/
│   ├── shell.ps1
│   ├── up.ps1
│   ├── down.ps1
│   ├── build.ps1
│   ├── logs.ps1
│   └── artisan.ps1
├── src/
├── docker-compose.yml
├── README.md
├── LICENSE
└── .gitignore
```

## Services

| Service         | URL                   |
| --------------- | --------------------- |
| Laravel         | http://localhost:8000 |
| Vite dev server | http://localhost:5173 |
| phpMyAdmin      | http://localhost:8080 |
| Mailpit         | http://localhost:8025 |

## Ports

| Service           | Port |
| ----------------- | ---- |
| Laravel           | 8000 |
| Vite              | 5173 |
| MySQL             | 3307 |
| phpMyAdmin        | 8080 |
| Redis             | 6379 |
| Mailpit SMTP      | 1025 |
| Mailpit dashboard | 8025 |

## Requirements

Just Docker Desktop and Git on your machine. PHP, Composer, Node, MySQL, Redis, and Nginx all run inside containers, so none of that needs to be installed locally.

## Installation

```bash
git clone https://github.com/zxi-tech/laravel12-react-starter.git
cd laravel12-react-starter
```

Build and start the containers:

```bash
docker compose up -d --build
```

Get into the app container:

```bash
docker compose exec app bash
```

Install dependencies:

```bash
composer install
cp .env.example .env
php artisan key:generate
npm install
```

Build assets — `npm run dev` while developing, `npm run build` for production.

Then run the migrations:

```bash
php artisan migrate
```

Open `http://localhost:8000` and it should be up.

## Default environment

```dotenv
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laravel
DB_PASSWORD=laravel

CACHE_STORE=redis
QUEUE_CONNECTION=redis
SESSION_DRIVER=redis

REDIS_HOST=redis
REDIS_PORT=6379

MAIL_MAILER=smtp
MAIL_HOST=mailpit
MAIL_PORT=1025
```

## Containers

| Container          | What's inside |
| ------------------ | ------------- |
| laravel_app        | PHP 8.3 FPM   |
| laravel_nginx      | Nginx         |
| laravel_mysql      | MySQL 8.4     |
| laravel_phpmyadmin | phpMyAdmin    |
| laravel_redis      | Redis         |
| laravel_mailpit    | Mailpit       |

## Common commands

Docker:

```bash
docker compose exec app bash   # enter the container
docker compose up -d           # start
docker compose up -d --build   # rebuild
docker compose down            # stop
docker compose logs -f         # tail logs
```

Laravel:

```bash
php artisan migrate
php artisan migrate:fresh --seed
php artisan make:controller UserController
php artisan make:model User
php artisan make:migration create_users_table
php artisan make:seeder UserSeeder
php artisan make:factory UserFactory
php artisan optimize:clear
```

Queue:

```bash
php artisan queue:work
php artisan queue:monitor default
```

Scheduler:

```bash
php artisan schedule:work
php artisan schedule:list
```

## Mailpit

Catches outgoing mail during development instead of actually sending it. SMTP runs on host `mailpit`, port `1025`, and the dashboard is at `http://localhost:8025`.

## Database

From inside the containers, connect to host `mysql`, port `3306` — database, username, and password all default to `laravel`. If you want to connect from your host machine (DBeaver, TablePlus, etc.), use `localhost` on port `3307` instead.

## What's next

Already working: Laravel 12, React, Inertia.js, Tailwind, Docker, MySQL, Redis, Mailpit, phpMyAdmin.

Still on the list: tests with Pest or PHPUnit, CI/CD via GitHub Actions, Meilisearch, MinIO, Laravel Horizon, Reverb, and Octane.

## Contributing

Pull requests are welcome. If you run into a bug or have an idea, open an issue first so it can be discussed before sending a PR.

## License

MIT — see the `LICENSE` file for details.

## Author

**Timothy Sela**
GitHub: [github.com/zxi-tech](https://github.com/zxi-tech)

---

If this project turns out useful, a star on the repo is always appreciated.
