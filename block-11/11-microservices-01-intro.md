# Домашнее задание к занятию «Введение в микросервисы»

## Задача 1: Интернет Магазин

Руководство крупного интернет-магазина, у которого постоянно растёт пользовательская база и количество заказов, рассматривает возможность переделки своей внутренней   ИТ-системы на основе микросервисов. 

Вас пригласили в качестве консультанта для оценки целесообразности перехода на микросервисную архитектуру. 

Опишите, какие выгоды может получить компания от перехода на микросервисную архитектуру и какие проблемы нужно решить в первую очередь.

---

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---
Выгоды от перехода на микросервисную архитектуру:

1.Возможность использовать разные технологии: позволяет быстро и легко добавлять, удалять и изменять функциональность системы.
2.Устойчивость к ошибкам: ошибка в работе одного сервиса не приведет к отказу работы других сервисов.
3.Простота развёртывания: развертывания новых релизов отдельных сервисов, быстрое внедрение усовершенствований и исправление ошибок в отдельных сервисах.
4.Простота замены стека технологий для сервиса.
5.Отражение структуры отрганизации: распределение ответственности команд, связанных с разработкой и внедрением системы, распределение нагрузки.
6.Масштабируемость: отдельных компонентов или всего продукта.

Какие проблемы нужно решить в первую очередь:
1.Измененить инфраструктуру, которая будет поддерживать работу микросервисов
2.Нужно выбрать тип межсервисного, внешнего взаимодействия и обеспечения безопасности.
3.Запланировать большие расходы на содержание.
4.Перепланировать процессы разработки.
5.Разработать систему мониторинга и команду отладки. 
6.Продумать функциональное назначение каждого из микросервисов, их взаимодействие между собой.