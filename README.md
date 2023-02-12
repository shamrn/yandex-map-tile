### Получения координат X, Y для плитки ( tile ) по координатам для Яндекс карт. 

----

- #### Расчет формулы взят с https://yandex.ru/dev/maps/tiles/doc/dg/concepts/about-tiles.html
- #### Для управления состоянием использовал Bloc ( https://bloclibrary.dev/ )

----

### Дополнительное сделал:
- Формула принимает масштаб ( zoom )
- Добавил в результат ссылку на Tile


### Запуск проекта
##### В терминале вам необходимо выполнить:
```bash
git clone https://github.com/shamrn/yandex-map-tile
flutter pub get
flutter run -d chrome
```
