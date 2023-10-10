## Workflow для автоматическй сборки прошивки padavan-ng

### Использование

- [Форкните репозиторий](https://github.com/shvchk/padavan-builder-workflow/fork), далее всё выполняйте в своём форке

- Скопируйте свой конфиг сборки в [build.config](build.config)

  Шаблон конфига для вашего устройства можно взять в [репозитории прошивки](https://gitlab.com/hadzhioglu/padavan-ng/-/tree/master/trunk/configs/templates)

- Запустите сборку: Actions → Build firmware → Run workflow

- Когда сборка закончится, индикатор статуса процесса станет зелёным с галочкой
  ![screenshot-1](https://github.com/shvchk/padavan-builder-workflow/assets/872945/a444d460-00e4-4bd0-993e-6a8ea8327c29)

- Нажмите на завершённый процесс. Архив с прошивкой с именем `padavan-ng_модель_роутера_дата` будет лежать в его артефактах:
  ![screenshot-2](https://github.com/shvchk/padavan-builder-workflow/assets/872945/e36be236-9466-400a-a88d-e9878887076d)

  Лицензия прошивки не подразумевает распространения готовых сборок, поэтому архив с прошивкой для личного пользования хранится в течение 7 дней.

---

Обсуждение: https://github.com/shvchk/padavan-builder-workflow/discussions/categories/общее
