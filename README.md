# Задание 1

 Описать шаги траблшутинга проблемы на одном из сервисов, который работает медленно:

* Выяснить у L1 support это проблема одного юзера или многих
* Проверить скорость соединения с DNS сервером коммандой ping
* Проверить логи аппликации в Kibana на предмет ошибок например OutOfMemoryError Exception, etc
* Проверить логи сервиса на хостах в /var/log/имя сервиса и /var/log/messages
* Проверить Hardware метрики в Zabbix
* Если Hardware метрики указывают на высокое использования CPU и RAM или swap, зайти на хосты аппликации по SSH и проверить какие процессы использу.т ресурсы командой top 

# Задание 2 
Создать python or bash скрипт, который может считать линии в любом текстовом файле
CountLines.sh

Name:   
    CountLines.sh - Count the number of lines in a text file  
Usage  
    `./CountLines.sh [PATH TO FILE]`  
Description  
    This scripts returns the number of lines in a text file to standart output.  
    Script only accepts absolute path to file, does not accept path to directories as argument and invalid path to a file.  


# Задание 3
Произвольный скрипт, который упрощает ежедневную работу с терминалом или любая другая автоматизация
