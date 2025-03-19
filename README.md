# syrma.t.e-itmo-megaschool-devops-2025

Развертывание сервиса с использованием Kubernetes (Minikube)
Есть три образа, для которых нужно развернуть:

MongoDB: image: mongo:5.0.15
time-server: image: ifilyaninitmo/time-server-mega-itmo:main
auth-server: image: ifilyaninitmo/auth-server-mega-itmo:main
Для развертывания сервисов time-server и auth-server необходимо написать Helm-чарты

1 Создать публичный GitHub-репозиторий с названием:
вашафамилия.и(вашеимя).о(вашеотчество)-itmo-megaschool-devops-2025 (на английском языке)

Пример: ivanov.i.i-itmo-megaschool-devops-2025

2 Настроить GitHub Workflow для проверки Helm-чарта, используя helm-check-action

3 Установить MongoDB на Minikube, используя Helm-чарт из репозитория:
https://github.com/mongodb/helm-charts

4 Создать базу данных в MongoDB и коллекцию:

база данных: auth
коллекция: users
5 Добавить документ внутри коллекции users со следующей структурой:

{
  “_id”: ObjectId("случайноеЗначение"),
  "full_name": "вашеИмя вашаФамилия",
  "username": "вашЛогин",
  "password": "вашПароль"
} 
Примечание: Вы должны создать вашеИмя, вашаФамилия и т.д., эти данные должны быть на латинице

6 Разработать Helm-чарт для развертывания сервисов:

time-server: image: ifilyaninitmo/time-server-mega-itmo:main
Порт 8001
auth-server: image: ifilyaninitmo/auth-server-mega-itmo:main
Порт 8000
Переменная окружения MONGODB_CONN_STR
Переменная окружения TIMESERVER_URL
Примечание: Исходный код необходимо хранить в созданном GitHub-репозитории

7 Развернуть разработанный Helm-чарт в minikube, сделать скриншоты работоспособности

8 Открыть в браузере Swagger сервиса auth-server и отправить POST запрос с username и password из добавленного документа в базу данных MongoDB

9 Сделать скриншот с Responses, где будут видны Curl, Request URL, Server Response, Response body и Response headers

10 Отправить GET запрос с указанием ntp_server и token, полученный в ответ на отправленный POST запрос из 7 пункта

11 Сделать скриншот с Responses, где будут видны Curl, Request URL, Server Response, Response body и Response headers

12 Вывести последние 10 строк логов всех приложений ранее задеплоенных в текстовом формате

