# Домашнее задание к занятию 1 «Введение в Ansible»

## Основная часть

1. Выполнено
```
ok: [localhost] => {
    "msg": "12"
}
```

2. Выполнено
```
   ok: [localhost] => {
    "msg": "all default fact"
}
```

3. Выполнено
4. Выполнено
```
ok: [centos7] => {
    "msg": "el"
}
ok: [ubuntu] => {
    "msg": "deb"
}
```
5. Выполнено
6. Выполнено
```
ok: [centos7] => {
    "msg": "el default fact"
}
ok: [ubuntu] => {
    "msg": "deb default fact"
}
```
7. Выполнено
8. Выполнено
```
oleg@netology:~/devops-netology/ansible/08-ansible-01-base/playbook$ ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass
Vault password:
```
9.  Я думаю это ansible.builtin.local (execute on controller ), потому что control node в Ansible - это машина, на которой установлен и запущен Ansible. Она является центральным узлом управления, с помощью которого вы можете управлять и автоматизировать свою инфраструктуру.
10. Выполнено
11. Выполнено
```
ok: [centos7] => {
    "msg": "el default fact"
}
ok: [ubuntu] => {
    "msg": "deb default fact"
}
ok: [localhost] => {
    "msg": "all default fact"
}
```
12. Выполнено :)