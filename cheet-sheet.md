тобы перенести изменения из feature_initial_build в develop, выполни:


# Переключаемся на develop
git checkout develop

# Сливаем изменения из feature_initial_build
git merge feature_initial_build

# Отправляем на удалённый репозиторий
git push origin develop









# После этого проверь:

git log --oneline -5












# Перенеси те же изменения в feature-ветку, чтобы прогнать пайплайн


git checkout feature_initial_build

git merge develop

git push origin feature_initial_build
