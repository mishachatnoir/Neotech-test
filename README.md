# Задание 1

**Описать шаги траблшутинга проблемы на одном из сервисов, который работает медленно:**  
 a) описать все шаги, которые будут предприниматся, если есть жалобы от L1 support на медленную работу системы/сервиса  
 b) доступные тулзы мониторинга:  

   1) Elastic Stack (Kibana) - для логов аппликации и сервиса  
   2) Zabbix - hardware метрики  
   3) Доступ до виртуальных хостов данного сервера  

**Шаги:**

* Выяснить у L1 support это проблема одного юзера или многих
* Проверить скорость соединения с DNS сервером коммандой ping
* Проверить логи аппликации в Kibana на предмет ошибок например OutOfMemoryError Exception, etc
* Проверить логи сервиса на хостах в /var/log/имя сервиса и /var/log/messages
* Проверить Hardware метрики в Zabbix
* Если Hardware метрики указывают на высокое использования CPU и RAM или swap, зайти на хосты аппликации по SSH и проверить какие процессы использу.т ресурсы командой top 

Чтобы протестировать скрипты, склонируйте этот репозиторий 

# Задание 2 
Создать python or bash скрипт, который может считать линии в любом текстовом файле  

**CountLines.sh**  
Описание  
Скрипт CountLines.sh возвращает количество строк в заданом текстовом файле в standart output
Скриптне принимает путь к дериктории или неправильный путь.  
Чтобы протестировать скрипт склонируйте этот репозиторий
Пример использования:  

```
$ ./CountLines.sh 
Enter abosulte path to the text file
txt/alice29.txt
This file contains 3608 lines of text
```

# Задание 3  
Произвольный скрипт, который упрощает ежедневную работу с терминалом или любая другая автоматизация   

