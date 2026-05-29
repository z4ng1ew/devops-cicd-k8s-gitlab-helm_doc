#!/bin/bash


set -e  


EXPECTED_DBS=(
    "users_db"
    "hotels_db"
    "reservations_db"
    "payments_db"
    "balances_db"
    "statistics_db"
)


echo "[init-check] Проверка списка созданных баз данных..."


ACTUAL_DBS=$(psql -U "$POSTGRES_USER" -d postgres -tAc "SELECT datname FROM pg_database WHERE datistemplate = false;")

echo "[init-check] Найдены базы данных:"
echo "$ACTUAL_DBS" | sed 's/^/  - /'

echo "[init-check] Проверяем наличие требуемых БД..."
for db in "${EXPECTED_DBS[@]}"; do
    if echo "$ACTUAL_DBS" | grep -qx "$db"; then
        echo "  [OK]    $db"
    else
        echo "  [FAIL]  $db — НЕ НАЙДЕНА!"
        exit 1
    fi
done


echo "[init-check] Все 6 баз данных созданы успешно."

