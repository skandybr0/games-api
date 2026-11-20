Лабораторная работа 1.

Каталог видеоигр.

Сделал 3 модели: Game, Genre, Developer 

Атрибуты:
Game - title, year, genre_id, developer_id
Genre - name, description
Developer - name, country

Связи: 
Game - belongs_to :genre, belongs_to :developer
Genre - has_many :games
Developer - has_many :games

API доступно по адресу - http://localhost:3000/api

В games_controller реализованы GET, PATCH, POST, DELETE.

Примеры запросов:

Получение списка игр: 
```
curl http://localhost:3000/api/games
```
Создание игры:
```
curl --request POST \
  --url http://localhost:3000/api/games/ \
  --header 'Content-Type: application/json' \
  --data '{
  "title": "Тестовая игра",
  "year": 2000,
  "genre_id": 1,
  "developer_id": 1
}'
```
Изменение игры:
```
curl --request PATCH \
  --url http://localhost:3000/api/games/1 \
  --header 'Content-Type: application/json' \
  --data '{
  "title": "Тестовая игра 2",
  "year": 2010,
  "genre_id": 1,
  "developer_id": 1
}'
```
Удаление игры:
```
curl --request DELETE \
  --url http://localhost:3000/api/games/1
```

Еще маршруты:
GET api/games/:id - показать одну игру
GET api/genres - показать все жанры
GET api/genres/:id - показать один жанр
GET api/developers - показать всех разработчиков
GET api/developers/:id - показать одного разработчика