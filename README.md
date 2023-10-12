# BigDataLab2
## Блок 1. Standalone Spark 
Развернул standalone cluster Spark: master + 2 workers с помощью [скрипта](https://github.com/Dortp68/BigDataLab2/blob/main/script.sh).Каждому воркеру выделил по 2 ядра и 2гб оперативной памяти.
### Скриншоты webui
![](https://github.com/Dortp68/BigDataLab2/blob/main/Screenshots/Snimok_ekrana_ot_2023-04-15_20-10-49.png)
![](https://github.com/Dortp68/BigDataLab2/blob/main/Screenshots/Snimok_ekrana_ot_2023-04-16_11-22-00.png)
### Подключился к кластеру с помощью Jupyter
![](https://github.com/Dortp68/BigDataLab2/blob/main/Screenshots/-9CNrW-C3ok.jpg)
[Ноутбук](https://github.com/Dortp68/BigDataLab2/blob/main/Spark.ipynb) приложен выше.
## Блок 2. Работа с данными на Spark
После преобразования датасета в parquet, оценил разницу в скорости чтения/занимаемом объёме.
Для файла с книгами:
* Время чтения parquet:  0.289625883102417
* Время чтения сsv:  2.851456880569458

Для файла с оценками пользователей:
* Время чтения parquet:  0.18186259269714355
* Время чтения сsv:  0.39438915252685547

Для небольшого файла с оценками пользователей скорость различается уже в два раза, для файла с книгами - скорость чтения parquet значительно меньше.
Объём:
* books.csv - 287,9 mb
* books.parquet - 148,5 mb
* users.csv - 18.5 mb
* users.parquet - 5.8 mb

В объёме тоже значительная разница, больше чем в два раза.
Работа с данными и реализация рассчёта среднего рейтинга книги на Spark Streaming приведена в [Ноутбукe](https://github.com/Dortp68/BigDataLab2/blob/main/Spark.ipynb)



