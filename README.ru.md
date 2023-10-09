## Workflow для автоматическй сборки прошивки Padavan

### Использование

- [Форкните репозиторий](https://github.com/shvchk/padavan-builder-workflow/fork), далее всё выполняйте в нём
- Скопируйте свой конфиг в [build.config](build.config)
- Запустите сборку: Actions → Build firmware → Run workflow
- Когда сборка закончится, индикатор статуса процесса станет зелёным с галочкой
  ![screenshot-1](https://github.com/shvchk/padavan-builder-workflow/assets/872945/a444d460-00e4-4bd0-993e-6a8ea8327c29)

- Нажмите на завершённый процесс. Архив с прошивкой с именем `padavan-ng_модель_роутера_дата` будет лежать в его артефактах:
  ![screenshot-2](https://github.com/shvchk/padavan-builder-workflow/assets/872945/e36be236-9466-400a-a88d-e9878887076d)

---

Обсуждение: https://github.com/shvchk/padavan-builder-workflow/discussions/categories/общее
