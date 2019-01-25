# LODSum
4IZ440 - ZS 2018/19 - Semestrální práce - Dominik Bláha

# Použití

1. Adresářová struktura

Pro použití LODSum na vašem serveru je třeba vytvořit následující adresářovou strukturu:

rzzw/ **název hlavního adresáře - tento adresář můžete nazvat jak chcete**
├── todo/
│   └── ** obsahuje logy o požadavcích, které je třeba zpracovat **
├── logs/
│   ├── ** obsahuje výstupní logy během spouštění LODSight.jar **
│   └── err
│   	└── ** obsahuje chybové logy během spouštění LODSight.jar **
├── done/
│   └── ** obsahuje výstupní logy během spouštění LODSight.jar **
├── lodsum/
│   ├── LODSight.jar
│   └── config.properties
├── css/
│   ├── style.css
│   └── jquery-ui.css
├── js/
│   ├── script.js
│   └── autosize.js
├── lodsum.php
├── lodstat.php
├── lib.php
├── lodshell.sh
└── index.htm    
    
2. Změny absolutních cest v souborech

### lodshell.sh

GitHub verze:
2. řádek - cd /data/www/blaha/rzzw/todo/
19. řádek - nohup java -jar /data/www/blaha/rzzw/lodsum/LODSight.jar /data/www/blaha/rzzw/lodsum/config.properties $attr 1>>$out 2>>$err &

Vaše verze:
2. řádek - cd **cesta k Vašemu hlavnímu adresáři**/todo/
19. řádek - nohup java -jar **cesta k Vašemu hlavnímu adresáři**/lodsum/LODSight.jar **cesta k Vašemu hlavnímu adresáři**/lodsum/config.properties $attr 1>>$out 2>>$err &

3. Nastavení pro cron - soubor cron_setup

### crontab -e

GitHub verze:
*/10 * * * * php -q /data/www/blaha/rzzw/lodsum.php status
*/8 * * * * sh /data/www/blaha/rzzw/lodshell.sh
*/6 * * * * php -q /data/www/blaha/rzzw/lodstat.php sum

Vaše verze:
*/10 * * * * php -q **cesta k Vašemu hlavnímu adresáři**/lodsum.php status
*/8 * * * * sh **cesta k Vašemu hlavnímu adresáři**/lodshell.sh
*/6 * * * * php -q **cesta k Vašemu hlavnímu adresáři**/lodstat.php sum

