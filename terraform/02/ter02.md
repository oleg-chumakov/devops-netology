### Задание 1

1. Изучите проект. В файле variables.tf объявлены переменные для yandex provider - ВЫПОЛНЕНО.
2. Переименуйте файл personal.auto.tfvars_example в personal.auto.tfvars. Заполните переменные (идентификаторы облака, токен доступа). Благодаря .gitignore этот файл не попадет в публичный репозиторий. - ВЫПОЛНЕНО
3. Сгенерируйте или используйте свой текущий ssh ключ. Запишите его открытую часть в переменную **vms_ssh_root_key** - ВЫПОЛНЕНО.
4. Инициализируйте проект, выполните код. Исправьте намеренное допущенные ошибки. Ответьте в чем заключается их суть? - ВЫПОЛНЕНО

Не были заданы переменные (token, cloud_id, folder_id), нет такой платформы, ошибка в написание значения переменной platform_id, core_fraction = 5 - доступные значения 20, 50, 100, cores = 1 - либо 2, либо 4. Правильный кусок кода:
```
......
resource "yandex_compute_instance" "platform" {
  name        = "netology-develop-platform-web"
  platform_id = "standard-v3"
  resources {
    cores         = 2
    memory        = 1
    core_fraction = 50
........
```


5. Ответьте, как в процессе обучения могут пригодиться параметры```preemptible = true``` и ```core_fraction=5``` в параметрах ВМ? Ответ в документации Yandex cloud.

```preemptible = true```
Эти ВМ будут стоить дешевле, но их Яндекс может выключить, живут не более 24 часов.


```core_fraction=5```
Эти ВМ будут стоить дешевле, потому что только часть процессорного времени будет выделяно на ядро (20%, 50% либо все 100% )

[Пруф созданной ВМ](https://github.com/oleg-chumakov/devops-netology/blob/main/images/vm.JPG)
[Подключение по ssh](https://github.com/oleg-chumakov/devops-netology/blob/main/images/connect_via_ssh.JPG)


### Задание 2

ВЫПОЛНЕНО. Изменений не было при terraform apply


### Задание 3

ВЫПОЛНЕНО

### Задание 4

```
No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

ip_address = {
  "netology-develop-db" = "158.160.36.107"
  "netology-develop-platform-web" = "84.201.159.16"
}
```