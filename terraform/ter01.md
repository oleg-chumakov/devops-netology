### Задание 1
1. Выполнено
2. personal.auto.tfvars
3. "result": "iHMsflGJQKytI039"
4.
  ```
 Error: Missing name for resource
│ 
│   on main.tf line 24, in resource "docker_image":
│   24: resource "docker_image" {
│ 
│ All resource blocks must have 2 labels (type, name).
╵
╷
│ Error: Invalid resource name
│ 
│   on main.tf line 29, in resource "docker_container" "1nginx":
│   29: resource "docker_container" "1nginx" {
│ 
│ A name must start with a letter or underscore and may contain only letters, digits, underscores, and dashes.
   ```

Собственно все написано: в строке 24 не хватает второго аргумента (имя ресурса), строка 29 - имя не может начинаться с цифр. Исправлено.
Еще были ошибки - исправлены.
Итоговый вид куска кода:
```
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "example_${random_password.random_string.result}"

  ports {
    internal = 80
    external = 8000
  }
}
```
5.
```
oleg@netology:~/ter-homeworks/01/src$ docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                  NAMES
10a0beb765a0   eb4a57159180   "/docker-entrypoint.…"   5 minutes ago   Up 5 minutes   0.0.0.0:8000->80/tcp   example_iHMsflGJQKytI039
```
6.
```
oleg@netology:~/ter-homeworks/01/src$ docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED         STATUS         PORTS                  NAMES
c698463ba992   eb4a57159180   "/docker-entrypoint.…"   7 seconds ago   Up 6 seconds   0.0.0.0:8000->80/tcp   hello_world
```
Опасность применения ключа -auto-approve вижу в том, что происходит незамедлительноен выполнение изменений без запроса подтверждения (не вводится YES) - нельзя дополнительно проверить какие изменения будут выполнены.
7. Cодержимое файла terraform.tfstate:
```
{
  "version": 4,
  "terraform_version": "1.4.6",
  "serial": 11,
  "lineage": "84807829-7ac9-fe9d-ae4f-c53e960593b9",
  "outputs": {},
  "resources": [],
  "check_results": null
}
```
8.
```
oleg@netology:~/ter-homeworks/01/src$ docker images
REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
nginx        latest    eb4a57159180   31 hours ago   187MB
```
Могу только по фантозировать что image это уже сущность docker engine и был загружен в локальный репозиторой. При выполнение terraform destroy у terraform нет доступа к папке хранения образов docker (нет прав на папку, что по факту так и есть).
Поэтому не был удален docker образ nginx:latest.
