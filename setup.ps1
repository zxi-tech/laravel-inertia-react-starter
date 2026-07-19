Write-Host ""
Write-Host " Laravel Starter Setup"
Write-Host ""

docker compose up -d --build

docker compose exec app composer install

docker compose exec app cp .env.example .env

docker compose exec app php artisan key:generate

docker compose exec app php artisan migrate

docker compose exec app npm install

docker compose exec app npm run build

Write-Host ""
Write-Host " Setup Complete"
Write-Host ""

Write-Host "Laravel      : http://localhost:8000"
Write-Host "phpMyAdmin   : http://localhost:8080"
Write-Host "Mailpit      : http://localhost:8025"
Write-Host "Vite         : http://localhost:5173"