1. *Аппаратная виртуализация* заключается в добавление специальных инструкций в процессоре, высокая производительность виртуальных машин (ВМ), низкие накладные расходы, гостевая ОС не зависит от архитектуры платформы виртуализации. Для *паравиртуализации* необходимо специально подготовленное ядро гостевой ОС, взаимодействие с железом через API гипервизора, ввысокая производительность гостевой ОС. *Виртуализация на уровне ОС*. Виртуализирование ОС на уровне ядра ОС, каждый контейнер отдельный процесс Контейнеры выполняются на одном уровне с физическими серверами. Отсутствие виртуализованного оборудования и использование реального оборудования и драйверов позволяют получитьвысокую производительность. Контейнеры используют единую ОС
2. *Dысоконагруженная база данных, чувствительная к отказу* - физические сервера. Необходима высокая производительность для БД. *Различные web-приложения* - доствточно будет виртуализации на уровне ОС. Каждое веб приложение - отдельный контейнер, простота эксплуатации, обновления. *Windows-системы для использования бухгалтерским отделом* - физитческие сервера. Я бы выбрал аппаратную виртуализацию и выделил бы каждому виртуалдьное рабочее место с доступом по RDP. К сожалениею не помню название технологии VMware. *Системы, выполняющие высокопроизводительные расчёты на GPU* - физические сервера, можно испльзовать аппаратную виртуализацию с пробросом GPU в гостевую ОС.
3. *100 виртуальных машин на базе Linux и Windows, общие задачи, нет особых требований. Преимущественно Windows based-инфраструктура, требуется реализация программных балансировщиков нагрузки, репликации данных и автоматизированного механизма создания резервных копий.* - в идела, если есть возможность, то выбрать продукты VMware. Есть возможность устанавливать различные гостевые ОС, при использование Veeam Backup Replication вопросов с резервным копированием, репликацией не возникнет. Хорошее решение VMware во всех смыслах. *Требуется наиболее производительное бесплатное open source-решение для виртуализации небольшой (20-30 серверов) инфраструктуры на базе Linux и Windows виртуальных машин.* - Xen. Можно устанавливать как Windows, так и Linux гостевые ОС. Высокая производительность и надежность. *Необходимо бесплатное, максимально совместимое и производительное решение для виртуализации Windows-инфраструктуры..* - Hyper-V. Нативный гипервизор для Windows готсевых ОС, простота настройки и эксплуатации. *Необходимо рабочее окружение для тестирования программного продукта на нескольких дистрибутивах Linux* - KVM. Нативный гипервизор дял Linux гостевых ОС, встроенная поддержка во все современные Linux  дистрибутивы, надежности достаточно для тестирования, бесплатно.
4. Основная проблема использования гетерогенной среды виртуализации это сложность обслуживания, необходимо иметь специалистов, которые знают как работать с каждой системой виртуализацией. Сложность в поддержки, несовместимость разных видов виртуализации. Если бы у меня был выбор, то я бы использовал продукты компании VMware - комплексное решение, позволяющее решить все запросы и требования к системе виртуализации, обслуживания, использования различных семейств гостевых ОС. Но дорого. Если бюджет не позволяет, то нужно будет использовать opensource - решения. Также многое зависит от того, что вы хотите виртуализировать. Если веб приложения, то можно использовать и бесплатный Linux с вирткализацией на уровне ОС (контейнеры), для управления использовать оркестратор Kubernetes. Также есть вариант использовать физические сервера для БД, если нужна максимальная производительность. В целом нужно исходить из требования бизнеса, доступного бюджета. Нет идеального решения на все случаи жизни.