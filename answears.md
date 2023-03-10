1. Найдите полный хеш и комментарий коммита, хеш которого начинается на aefea

git rev-parse aefea

aefead2207ef7e2aa5dc81a34aedf0cad4c32545

git show aefead2207ef7e2aa5dc81a34aedf0cad4c32545 --oneline

aefead2207 Update CHANGELOG.md


2.

Какому тегу соответствует коммит 85024d3:

git show 85024d3

commit 85024d3100126de36331c6982bfaac02cdab9e76 (tag: v0.12.23)
Author: tf-release-bot <terraform@hashicorp.com>
Date:   Thu Mar 5 20:56:10 2020 +0000

    v0.12.23




Сколько родителей у коммита b8d720? Напишите их хеши -  2 родителя:

git show b8d720^

commit 56cd7859e05c36c06b56d013b55a252d0bb7e158

git show b8d720^2

commit 9ea88f22fc6269854151c571162c5bcf958bee2b




Перечислите хеши и комментарии всех коммитов, которые были сделаны между тегами v0.12.23 и v0.12.24.

git log --oneline  v0.12.22..v0.12.24

33ff1c03bb (tag: v0.12.24) v0.12.24
b14b74c493 [Website] vmc provider links
3f235065b9 Update CHANGELOG.md
6ae64e247b registry: Fix panic when server is unreachable
5c619ca1ba website: Remove links to the getting started guide's old location
06275647e2 Update CHANGELOG.md
d5f9411f51 command: Fix bug when using terraform login on Windows
4b6d06cc5d Update CHANGELOG.md
dd01a35078 Update CHANGELOG.md
225466bc3e Cleanup after v0.12.23 release
85024d3100 (tag: v0.12.23) v0.12.23
...........



Функция func providerSource была создана в коммите:

5af1e6234a

git log -S"func providerSource" --oneline 

5af1e6234a main: Honor explicit provider_installation CLI config when present



Функция globalPluginDirs была изменена в коммите:

git log -S"globalPluginDirs" --oneline 

65c4ba7363 Remove terraform binary
125eb51dc4 Remove accidentally-committed binary
22c121df86 Bump compatibility version to 1.3.0 for terraform core release (#30988)
7c7e5d8f0a Don't show data while input if sensitive
35a058fb3d main: configure credentials from the CLI config file
c0b1761096 prevent log output during init
8364383c35 Push plugin discovery down into command package



Автор функции synchronizedWriters

Находим первый коммит:

git log -SsynchronizedWriters --oneline 

bdfea50cc8 remove unused
fd4f7eb0b9 remove prefixed io
5ac311e2a9 main: synchronize writes to VT100-faker on Windows

Находим автора превого коммита:

git show bdfea50cc8

commit bdfea50cc85161dea41be0fe3381fd98731ff786
Author: James Bardin <j.bardin@gmail.com>
Date:   Mon Nov 30 18:02:04 2020 -0500