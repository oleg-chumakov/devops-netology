1. [Созданный fork nginx](https://hub.docker.com/repository/docker/olegchu1387/my-nginx)
2. Сценарий:
* *высоконагруженное монолитное Java веб-приложение* - физический сервер, нужна высокая производительность, высокий уровень потребеления оперативной памяти. МОжно и на ВМ
* *Nodejs веб-приложение* - можно будет запускать в контейнере, легко создать новые интансы в новых контейнерах для балансировки возросшей нагрузки.
* *мобильное приложение c версиями для Android и iOS* - я бы использовал ВМ, будет достаточно производительности и отклика ОС, легко подготовить ВМ с необходимым окружением.
* *шина данных на базе Apache Kafka* - к сожалению незнаком с требованием к данному софту. Думаю можно использовать ВМ, на втором месте докер контейнер
* *Elasticsearch-кластер для реализации логирования продуктивного веб-приложения — три ноды elasticsearch, два logstash и две ноды kibana* - ВМ или контейнер, на каждую ноду использовть физический сервер (ФС), слишком накладно, можно раскидать ВМ на несколько ФС для отказоустойчивости. В целом уже мониторинг размещать на ВМ, а не в контейнерах, опытт есть такой
* *мониторинг-стек на базе Prometheus и Grafana* - я бы использовал ВМ для мониторинга. Много денег - ФС, совсем мало ресурсов - контейнер. Мониторинг можеть потреблять много ресурсов, если не ограничить потребеление ресурсов данного контейнера, то возможны проблемы работы с другими контейнерами на данном сервере
* *MongoDB как основное хранилище данных для Java-приложения*  - для БД исключительно ФС (физический сервер), требуется высокая производительность оборудования, скорость досGitlab-сервер для реализации CI/CD-процессов и приватный (закрытый) Docker Registryтупа к носителю данных (прочие параметры), нет денег - ВМ
* *Gitlab-сервер для реализации CI/CD-процессов и приватный (закрытый) Docker Registry* - не вижу принципиальной разницы, все реализации имеют место быть
3. Не знал как еще показать выполнение задание, думаю доказательств достаточно. По сути создаю директорию на хостовой ОС и прокиидываю волюмом в оба контейнера. Само содержимое директории data хранится в файловой системе гостевой ОС:
```
oleg@netology:~$ ls -l data/
total 0
oleg@netology:~$ docker run -ti --name centos -v /home/oleg/data:/data centos:8
[root@a01e5d4ad9ca /]# cd data/
[root@a01e5d4ad9ca data]# touch test
[root@a01e5d4ad9ca data]# ls -l /data/
total 0
-rw-r--r-- 1 root root 0 May  1 09:48 test
[root@a01e5d4ad9ca data]# exit
oleg@netology:~$ ls -l data/
total 0
-rw-r--r-- 1 root root 0 мая  1 09:48 test
oleg@netology:~$ docker run -ti --name debian -v /home/oleg/data:/data debian:stable
root@d710c22bb733:/# ls /data/
test
```
 
