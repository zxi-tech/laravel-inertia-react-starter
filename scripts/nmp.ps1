param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$Args
)

docker compose exec app npm @Args