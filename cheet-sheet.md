тобы перенести изменения из feature_initial_build в develop, выполни:


# Переключаемся на develop
git checkout develop

# Сливаем изменения из feature_initial_build
git merge feature_initial_build

# Отправляем на удалённый репозиторий
git push origin develop











git log --oneline -5
