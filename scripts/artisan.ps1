param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$Args
)

docker compose exec app php artisan @Args