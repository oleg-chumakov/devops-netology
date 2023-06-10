1.
*Опишите основные преимущества применения на практике IaaC-паттернов*
* быстрый сопособ производства нового программного продукта и вывод его на рынок
* существование удобных срел разработки
* стабильнось и унифицированности среды (ОС), в которой работает различный софт

*Какой из принципов IaaC является основополагающим?*
* Идемпотенность - свойство объекта или операции при повторном применении операции к объекту давать тот же результат, что и при первом.

2.
*Чем Ansible выгодно отличается от других систем управление конфигурациями?*
* использование python
* поддержка декларативного и императивного подходов
* простота освоения
* не требует агентов на серверах
* большое количество модулей для Ansible для решения разных задач
* команды пишутся на YAML, популярном и интуитивно понятном языке

*Какой, на ваш взгляд, метод работы систем конфигурации более надёжный — push или pull?*
* у каждого из способов есть свои плюсы и минусы, нужно исходить из задач

3.
```
oleg@netology:~$ terraform --version
Terraform v1.4.6
on linux_amd64
oleg@netology:~$ ansible --version
ansible 2.10.8
  config file = None
  configured module search path = ['/home/oleg/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.10.6 (main, Mar 10 2023, 10:55:28) [GCC 11.3.0]
oleg@netology:~$ vagrant --version
Vagrant 2.3.4
oleg@netology:~$ vboxmanage --version
6.1.38_Ubuntur153438
```

4.
Не зал как еще показать выполненное задание:
```
PLAY [nodes] *******************************************************************

TASK [Gathering Facts] *********************************************************
ok: [server1.netology]

TASK [Create directory for ssh-keys] *******************************************
ok: [server1.netology]

TASK [Adding rsa-key in /root/.ssh/authorized_keys] ****************************
changed: [server1.netology]

TASK [Checking DNS] ************************************************************
changed: [server1.netology]

TASK [Installing tools] ********************************************************
ok: [server1.netology] => (item=['git', 'curl'])

TASK [Installing docker] *******************************************************
changed: [server1.netology]

TASK [Add the current user to docker group] ************************************
changed: [server1.netology]

PLAY RECAP *********************************************************************
server1.netology           : ok=7    changed=4    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

oleg@netology:~/virt-video-code/vagrant$ vagrant ssh
Welcome to Ubuntu 20.04.6 LTS (GNU/Linux 5.4.0-144-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Sun 30 Apr 2023 09:49:32 AM UTC

  System load:  0.0                Users logged in:          0
  Usage of /:   13.4% of 30.34GB   IPv4 address for docker0: 172.17.0.1
  Memory usage: 25%                IPv4 address for eth0:    10.0.2.15
  Swap usage:   0%                 IPv4 address for eth1:    192.168.56.11
  Processes:    134


This system is built by the Bento project by Chef Software
More information can be found at https://github.com/chef/bento
Last login: Sun Apr 30 09:41:16 2023 from 10.0.2.2
vagrant@server1:~$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```
