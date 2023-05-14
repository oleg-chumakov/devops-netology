1. Создайте собственный образ любой операционной системы (например ubuntu-20.04) с помощью Packer (инструкция). Чтобы получить зачёт, вам нужно предоставить скриншот страницы с созданным образом из личного кабинета YandexCloud:

![Текст с описанием картинки](https://github.com/oleg-chumakov/devops-netology/blob/main/images/virt04-1.JPG)

2. Создайте вашу первую виртуальную машину в YandexCloud с помощью web-интерфейса YandexCloud:

![Текст с описанием картинки](https://github.com/oleg-chumakov/devops-netology/blob/main/images/virt04-2.JPG)

3. С помощью Ansible и Docker Compose разверните на виртуальной машине из предыдущего задания систему мониторинга на основе Prometheus/Grafana. Используйте Ansible-код в директории (src/ansible).
```
[oleg@test ~]$ sudo docker ps
CONTAINER ID   IMAGE                              COMMAND                  CREATED         STATUS                   PORTS                                                                              NAMES
4f67c20300c2   grafana/grafana:7.4.2              "/run.sh"                6 minutes ago   Up 5 minutes             3000/tcp                                                                           grafana
feee982831c3   prom/pushgateway:v1.2.0            "/bin/pushgateway"       6 minutes ago   Up 5 minutes             9091/tcp                                                                           pushgateway
b7914e738d2c   gcr.io/cadvisor/cadvisor:v0.47.0   "/usr/bin/cadvisor -…"   6 minutes ago   Up 5 minutes (healthy)   8080/tcp                                                                           cadvisor
3ac295170703   stefanprodan/caddy                 "/sbin/tini -- caddy…"   6 minutes ago   Up 5 minutes             0.0.0.0:3000->3000/tcp, 0.0.0.0:9090-9091->9090-9091/tcp, 0.0.0.0:9093->9093/tcp   caddy
60c5b45022e6   prom/node-exporter:v0.18.1         "/bin/node_exporter …"   6 minutes ago   Up 5 minutes             9100/tcp                                                                           nodeexporter
9215b2922365   prom/prometheus:v2.17.1            "/bin/prometheus --c…"   6 minutes ago   Up 5 minutes             9090/tcp                                                                           prometheus
302c51267a54   prom/alertmanager:v0.20.0          "/bin/alertmanager -…"   6 minutes ago   Up 5 minutes             9093/tcp                                                                           alertmanager
```

4. Скриншот работающего веб-интерфейса Grafana с текущими метриками:

![Текст с описанием картинки](https://github.com/oleg-chumakov/devops-netology/blob/main/images/virt04-3.JPG)
