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


### Чтобы протестировать скрипты необходимо склонировать репозиторий:  

```console
foo@bar:~$ git clone https://github.com/mishachatnoir/Neotech-test.git
Cloning into 'Neotech-test'...
remote: Enumerating objects: 111, done.
remote: Counting objects: 100% (111/111), done.
remote: Compressing objects: 100% (103/103), done.
remote: Total 111 (delta 35), reused 39 (delta 4), pack-reused 0
Receiving objects: 100% (111/111), 454.76 KiB | 670.00 KiB/s, done.
Resolving deltas: 100% (35/35), done.
```


# Задание 2 
Создать python or bash скрипт, который может считать линии в любом текстовом файле  

**CountLines.sh**  
Скрипт **CountLines.sh** возвращает количество строк в заданом текстовом файле в standart output
Скрипт не принимает путь к директории или неправильный путь. 
В качестве файла для теста можно указать путь к любому из файлов в директории *txt/* этого репозитория  
Пример использования:  

```console
foo@bar:~/Neotech-test$ ./CountLines.sh 
Enter abosulte path to the text file
txt/alice29.txt
This file contains 3608 lines of text
```


# Задание 3  
Произвольный скрипт, который упрощает ежедневную работу с терминалом или любая другая автоматизация  

**CreateBackup.sh**
Скрипт который делает бэкап директории,  сохраняет его присвоив порядковый номер, и удаляет бекапы старше трез месяцев (90 дней).
Что бы протестировать этот скрипт выполните следующий шаги: 

* Запустите скрипт **CreateBackup.sh**:  
```console
foo@bar:~/Neotech-test$ ./GenerateAppData.sh 
````
Скрипт создаст файл *appdata* в директории *appdata/*.  
```console
foo@bar:~/Neotech-test$ ls -l appdata/
-rw-rw-r-- 1 foo foo 52428800 Sep  6 00:32 appdata
````
Будем считать что это данные для которых нужно сделать бэкап.

Скрип также создаст псевдо бекап файлы в директории *backups/* с разными датами последней модификации:

```console
foo@bar:~/Neotech-test$ ls -l backups/
total 0
-rw-rw-r-- 1 foo foo 20971520 May  1 00:00 appdata.tar.gz.1
-rw-rw-r-- 1 foo foo 20971520 Jun  1 00:00 appdata.tar.gz.2
-rw-rw-r-- 1 foo foo 20971520 Jul  1 00:00 appdata.tar.gz.3
-rw-rw-r-- 1 foo foo 20971520 Aug  1 00:00 appdata.tar.gz.4
-rw-rw-r-- 1 foo foo 20971520 Sep  1 00:00 appdata.tar.gz.5

````

* Запустите скрипт **CreateBackup.sh**  

```console
foo@bar:~/Neotech-test$ ls -l ./CreateBackup.sh
```
Скрипт удалит бекапы старше 90 дней, и создаст новый, добавив следующий порядковый номер к имени файла:

```console
foo@bar:~/Neotech-test$ ls -l backups/
total 51216
-rw-rw-r-- 1 mrofx mrofx 20971520 Jul  1 00:00 appdata.tar.gz.3
-rw-rw-r-- 1 mrofx mrofx 20971520 Aug  1 00:00 appdata.tar.gz.4
-rw-rw-r-- 1 mrofx mrofx 20971520 Sep  1 00:00 appdata.tar.gz.5
-rw-rw-r-- 1 mrofx mrofx 52437078 Sep  6 00:46 appdata.tar.gz.6
```
Предполагается что этот скрипт будет использоваться как cron job.




